import 'package:flutter/material.dart';

class MapCamWidget extends StatefulWidget {
  const MapCamWidget({super.key});

  @override
  State<MapCamWidget> createState() => _MapCamWidgetState();
}

class _MapCamWidgetState extends State<MapCamWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Map and Camera Widget"));
  }
}
