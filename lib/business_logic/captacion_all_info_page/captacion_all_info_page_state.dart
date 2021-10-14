import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:info_colector/data/models/captacion_all_info_model.dart';

part 'captacion_all_info_page_state.freezed.dart';

@freezed
abstract class CaptacionAllInfoState with _$CaptacionAllInfoState {
  const factory CaptacionAllInfoState.loading() = _Loading;
  const factory CaptacionAllInfoState.noData() = _NoData;
  const factory CaptacionAllInfoState.hasData(
    List<CaptacionAllInfoModel>? captacionStream,
  ) = _HasData;
  const factory CaptacionAllInfoState.hasError(String? error) = _HasError;
}
