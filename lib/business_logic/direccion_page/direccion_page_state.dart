import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:info_colector/data/models/direccion_model.dart';

part 'direccion_page_state.freezed.dart';

@freezed
abstract class DireccionState with _$DireccionState {
  const factory DireccionState.loading() = _Loading;
  const factory DireccionState.noData() = _NoData;
  const factory DireccionState.hasData(
    List<DireccionModel>? DireccionStream,
  ) = _HasData;
  const factory DireccionState.hasError(String? error) = _HasError;
}
