import 'dart:math';

import 'package:flutter/material.dart';
import 'package:info_colector/presentation/theme/theme.dart';

class FondoContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -80.0,
      child: Transform.rotate(
        angle: -pi / 5.0,
        child: Container(
          height: MediaQuery.of(context).size.height / 2.5,
          width: MediaQuery.of(context).size.width / 1.2,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
              colors: SigipColors.blueGradients,
            ),
            borderRadius: BorderRadius.circular(80.0),
          ),
        ),
      ),
    );
  }
}
