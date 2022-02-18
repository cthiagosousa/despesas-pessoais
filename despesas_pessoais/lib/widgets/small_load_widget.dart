import 'package:flutter/material.dart';

class SmallLoadWidget extends StatelessWidget {
  final double? value;

  const SmallLoadWidget({
    this.value,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 30,
      height: 30,
      child: CircularProgressIndicator(
        value: value,
        strokeWidth: 1,
      ),
    );
  }
}