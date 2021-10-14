import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:info_colector/data/models/casa_model.dart';
import 'package:info_colector/data/models/situacion_salud_model.dart';

part 'situacion_salud_state.freezed.dart';

@freezed
abstract class SituacionSaludState with _$SituacionSaludState {
  const factory SituacionSaludState.loading() = _Loading;
  const factory SituacionSaludState.noData() = _NoData;
  const factory SituacionSaludState.hasData(
    List<SituacionSaludModel>? SituacionSaludStream,
  ) = _HasData;
  const factory SituacionSaludState.hasError(String? error) = _HasError;
}
