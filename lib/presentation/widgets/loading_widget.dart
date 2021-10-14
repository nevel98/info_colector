import 'package:flutter/material.dart';
import 'package:info_colector/data/streams/captaciones_stream.dart';
import 'package:info_colector/presentation/theme/theme.dart';

class LoadingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // CaptacionesStream().obtenerCaptaciones();
    return const Center(
      child: CircularProgressIndicator(
        color: SigipColors.colorPrimary,
      ),
    );
  }
}
