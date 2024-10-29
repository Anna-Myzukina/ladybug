import 'package:flutter/material.dart';
import 'package:ladybug/src/constants.dart' as constants;

class CarbonWeightRowWidget extends StatelessWidget {
  final String? carbonWeight;
  final String? carbonType;
  final Color carbonColor;

  const CarbonWeightRowWidget({
    super.key,
    this.carbonWeight,
    this.carbonType,
    this.carbonColor = constants.deepPink,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
              color: carbonColor, 
              shape: BoxShape.circle),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            carbonType ?? '',
            style: const TextStyle(color: Colors.grey),
          ),
        ),
        Text(
          carbonWeight ?? '',
          style: const TextStyle(color: Colors.grey),
        )
      ],
    );
  }
}
