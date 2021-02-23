import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'content_event.freezed.dart';

@freezed
abstract class ContentEvent<TData> with _$ContentEvent {
  const factory ContentEvent.success(TData data) = Success;
  const factory ContentEvent.loading() = Loading;
  const factory ContentEvent.error([String message]) = Error;
}
