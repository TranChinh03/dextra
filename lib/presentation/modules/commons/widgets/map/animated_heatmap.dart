import 'dart:async';
import 'dart:convert';

import 'package:dextra/presentation/modules/commons/widgets/button/common_primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HeatmapPoint {
  final DateTime timestamp;
  final List<LatLng> locations;
  final List<int> weights;

  HeatmapPoint(
      {required this.timestamp,
      required this.locations,
      required this.weights});
}

class AnimatedHeatmap extends StatefulWidget {
  const AnimatedHeatmap({super.key});

  @override
  State<AnimatedHeatmap> createState() => _AnimatedHeatmapState();
}

class _AnimatedHeatmapState extends State<AnimatedHeatmap> {
  final _controller = Completer<GoogleMapController>();
  final Set<Heatmap> _heatmaps = {};
  List<HeatmapPoint> _heatmapData = [];
  List<WeightedLatLng> currentData = [];
  int currentIndex = 0;
  Timer? heatmapTimer;

  Future<List<HeatmapPoint>> loadHeatmapData() async {
    final String response = await rootBundle
        .loadString('assets/json/traffic_heatmap_timeseries.json');
    final List<dynamic> jsonData = json.decode(response);

    List<HeatmapPoint> heatmapData = [];

    for (var entry in jsonData) {
      DateTime timestamp = DateTime.parse(entry['timestamp']);
      List<dynamic> cameras = entry['data'];

      List<LatLng> locations = [];
      List<int> weights = [];

      for (var cam in cameras) {
        final coords = cam['loc']['coordinates'];
        final latlng = LatLng(coords[1], coords[0]);
        locations.add(latlng);

        // You can customize this weight calculation
        int weight = cam['numberOfBicycle'] +
            cam['numberOfMotorcycle'] +
            cam['numberOfCar'] +
            cam['numberOfVan'] +
            cam['numberOfTruck'] +
            cam['numberOfBus'] +
            cam['numberOfFireTruck'] +
            cam['numberOfContainer'];
        weights.add(weight);
      }

      heatmapData.add(HeatmapPoint(
        timestamp: timestamp,
        locations: locations,
        weights: weights,
      ));
    }

    return heatmapData;
  }

  void startHeatmapAnimation(Function(List<WeightedLatLng>) onUpdate) {
    heatmapTimer?.cancel(); // stop previous timer if any

    heatmapTimer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_heatmapData.isEmpty) return;

      final currentPoint = _heatmapData[currentIndex];
      currentData = List.generate(currentPoint.locations.length, (i) {
        return WeightedLatLng(
          currentPoint.locations[i],
          weight: currentPoint.weights[i].toDouble(),
        );
      });

      // Call the callback to update UI
      onUpdate(currentData);

      // Next index, loop back if needed
      currentIndex = (currentIndex + 1) % _heatmapData.length;
    });
  }

  @override
  void initState() {
    loadHeatmapData().then((data) {
      setState(() {
        _heatmapData = data;
      });
    });
    startHeatmapAnimation((newData) {
      setState(() {
        currentData = newData;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    heatmapTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _heatmaps.add(Heatmap(
      heatmapId: HeatmapId('traffic_heatmap'),
      data: currentData,
      radius: HeatmapRadius.fromPixels(20),
      gradient: const HeatmapGradient(
        <HeatmapGradientColor>[
          HeatmapGradientColor(Color(0xFF00FF00), 0.2),
          HeatmapGradientColor(Color(0xFFADFF2F), 0.4),
          HeatmapGradientColor(Color(0xFFFFFF00), 0.6),
          HeatmapGradientColor(Color(0xFFFFA500), 0.8),
          HeatmapGradientColor(Color(0xFFFF0000), 1.0),
        ],
      ),
    ));
    return GoogleMap(
      initialCameraPosition: CameraPosition(
        target: LatLng(10.7769, 106.7009),
        zoom: 12,
      ),
      heatmaps: _heatmaps,
      onMapCreated: (GoogleMapController controller) {
        _controller.complete(controller);
      },
    );
  }
}
