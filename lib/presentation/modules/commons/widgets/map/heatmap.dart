import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class TrafficHeatmap extends StatefulWidget {
  @override
  _TrafficHeatmapState createState() => _TrafficHeatmapState();
}

final List<WeightedLatLng> trafficPoints = [
  WeightedLatLng(LatLng(10.7769, 106.7009), weight: 0.8), // Quận 1
  WeightedLatLng(LatLng(10.7790, 106.6985), weight: 0.6),
  WeightedLatLng(LatLng(10.7745, 106.7032), weight: 0.9),
  WeightedLatLng(LatLng(10.7802, 106.6950), weight: 0.7),
  WeightedLatLng(LatLng(10.7720, 106.7060), weight: 0.5),
  WeightedLatLng(LatLng(10.7850, 106.6900), weight: 0.4), // Quận 3
  WeightedLatLng(LatLng(10.7875, 106.6935), weight: 0.8),
  WeightedLatLng(LatLng(10.7810, 106.6870), weight: 0.6),
  WeightedLatLng(LatLng(10.7900, 106.6990), weight: 0.9),
  WeightedLatLng(LatLng(10.7785, 106.7045), weight: 0.7),
  WeightedLatLng(LatLng(10.7650, 106.6800), weight: 0.5), // Quận 7
  WeightedLatLng(LatLng(10.7605, 106.6755), weight: 0.8),
  WeightedLatLng(LatLng(10.7680, 106.6830), weight: 0.6),
  WeightedLatLng(LatLng(10.7625, 106.6780), weight: 0.9),
  WeightedLatLng(LatLng(10.7700, 106.6850), weight: 0.7),
  WeightedLatLng(LatLng(10.7950, 106.7100), weight: 0.4), // Quận 5
  WeightedLatLng(LatLng(10.7985, 106.7150), weight: 0.8),
  WeightedLatLng(LatLng(10.7920, 106.7050), weight: 0.6),
  WeightedLatLng(LatLng(10.8000, 106.7200), weight: 0.9),
  WeightedLatLng(LatLng(10.7890, 106.7000), weight: 0.7),
  WeightedLatLng(LatLng(10.7755, 106.6900), weight: 0.5), // Quận 10
  WeightedLatLng(LatLng(10.7730, 106.6850), weight: 0.8),
  WeightedLatLng(LatLng(10.7800, 106.6955), weight: 0.6),
  WeightedLatLng(LatLng(10.7705, 106.6880), weight: 0.9),
  WeightedLatLng(LatLng(10.7775, 106.6920), weight: 0.7),
  WeightedLatLng(LatLng(10.7500, 106.6700), weight: 0.4), // Quận 7
  WeightedLatLng(LatLng(10.7550, 106.6650), weight: 0.8),
  WeightedLatLng(LatLng(10.7450, 106.6750), weight: 0.6),
  WeightedLatLng(LatLng(10.7600, 106.6800), weight: 0.9),
  WeightedLatLng(LatLng(10.7525, 106.6725), weight: 0.7),
  WeightedLatLng(LatLng(10.8050, 106.7250), weight: 0.5), // Quận Bình Thạnh
  WeightedLatLng(LatLng(10.8100, 106.7300), weight: 0.8),
  WeightedLatLng(LatLng(10.8025, 106.7200), weight: 0.6),
  WeightedLatLng(LatLng(10.8075, 106.7275), weight: 0.9),
  WeightedLatLng(LatLng(10.8000, 106.7150), weight: 0.7),
  WeightedLatLng(LatLng(10.7880, 106.6800), weight: 0.4), // Quận 3
  WeightedLatLng(LatLng(10.7905, 106.6850), weight: 0.8),
  WeightedLatLng(LatLng(10.7855, 106.6750), weight: 0.6),
  WeightedLatLng(LatLng(10.7925, 106.6900), weight: 0.9),
  WeightedLatLng(LatLng(10.7870, 106.6950), weight: 0.7),
  WeightedLatLng(LatLng(10.7650, 106.6950), weight: 0.5), // Phú Nhuận
  WeightedLatLng(LatLng(10.7700, 106.7000), weight: 0.8),
  WeightedLatLng(LatLng(10.7625, 106.6900), weight: 0.6),
  WeightedLatLng(LatLng(10.7675, 106.6975), weight: 0.9),
  WeightedLatLng(LatLng(10.7600, 106.6875), weight: 0.7),
  WeightedLatLng(LatLng(10.7750, 106.7100), weight: 0.4), // Quận 1
  WeightedLatLng(LatLng(10.7800, 106.7150), weight: 0.8),
  WeightedLatLng(LatLng(10.7725, 106.7050), weight: 0.6),
  WeightedLatLng(LatLng(10.7775, 106.7200), weight: 0.9),
  WeightedLatLng(LatLng(10.7700, 106.7125), weight: 0.7),
];

class _TrafficHeatmapState extends State<TrafficHeatmap> {
  final _controller = Completer<GoogleMapController>();
  final Set<Heatmap> _heatmaps = {};

  @override
  void initState() {
    super.initState();
    _heatmaps.add(Heatmap(
      heatmapId: HeatmapId('traffic_heatmap'),
      data: trafficPoints,
      radius: HeatmapRadius.fromPixels(20),
      gradient: const HeatmapGradient(
        <HeatmapGradientColor>[
          HeatmapGradientColor(
            Color.fromARGB(255, 0, 255, 255),
            0.2,
          ),
          HeatmapGradientColor(
            Color.fromARGB(255, 8, 216, 60),
            0.4,
          ),
          HeatmapGradientColor(
            Color.fromARGB(255, 3, 191, 0),
            0.6,
          ),
          HeatmapGradientColor(
            Color.fromARGB(255, 247, 255, 7),
            0.8,
          ),
          HeatmapGradientColor(
            Color.fromARGB(255, 255, 0, 0),
            1,
          ),
        ],
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
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
