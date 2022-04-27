import 'package:freezed_annotation/freezed_annotation.dart';

part 'demo_modal.freezed.dart';

@freezed
class DemoModal with _$DemoModal {
  const DemoModal._();

  const factory DemoModal({
    required String id,
    required String name,
    required String phoneNumber
  }) = _DemoModal;

  factory DemoModal.fromJson(Map<String, dynamic> json) => _$DemoModalFromJson(json);
}
