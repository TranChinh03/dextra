import 'package:dextra/presentation/modules/commons/widgets/text/common_heading.dart';
import 'package:flutter/material.dart';

class ScheduleTab extends StatelessWidget {
  const ScheduleTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CommonHeading(
            heading: "This function will be available soon",
          )
        ],
      ),
    );
  }
}
