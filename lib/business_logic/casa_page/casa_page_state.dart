import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:info_colector/data/models/casa_model.dart';

part 'casa_page_state.freezed.dart';

@freezed
abstract class CasaState with _$CasaState {
  const factory CasaState.loading() = _Loading;
  const factory CasaState.noData() = _NoData;
  const factory CasaState.hasData(
    List<CasaModel>? casaStream,
  ) = _HasData;
  const factory CasaState.hasError(String? error) = _HasError;
}
