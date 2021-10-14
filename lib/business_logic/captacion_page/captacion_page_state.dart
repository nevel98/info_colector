import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:info_colector/data/models/captacion_model.dart';
import 'package:info_colector/data/models/casa_model.dart';

part 'captacion_page_state.freezed.dart';

@freezed
abstract class CaptacionState with _$CaptacionState {
  const factory CaptacionState.loading() = _Loading;
  const factory CaptacionState.noData() = _NoData;
  const factory CaptacionState.hasData(
    List<CaptacionModel>? captacionStream,
  ) = _HasData;
  const factory CaptacionState.hasError(String? error) = _HasError;
}
