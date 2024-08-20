import 'package:flutter/material.dart';

class W2 extends StatelessWidget {
  final double value;
  const W2({super.key,
    required this.value
  });
  
  @override
  Widget build(BuildContext context) {
    final color1 = (value-value.floor()<0.4 ? Colors.grey:Colors.blueGrey);
    return Container(
      key: const Key('W2'),
      width: 200,
      height: 200,
      color: color1, // should be grey when the decimal is bellow 0.4
    );
  }
}
