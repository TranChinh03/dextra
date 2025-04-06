import 'package:dextra/presentation/modules/commons/widgets/menu/menu.dart';
import 'package:flutter/material.dart';

class ConfigurationWidget extends StatefulWidget {
  const ConfigurationWidget({super.key});

  @override
  State<ConfigurationWidget> createState() => _ConfigurationWidgetState();
}

class _ConfigurationWidgetState extends State<ConfigurationWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Menu(), body: Center(child: Text("Configuration Widget")));
  }
}
