// main.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wankolota/model/lendee/lendee.dart';

part 'lendee_application.freezed.dart';

@freezed
class LendeeApplication with _$LendeeApplication {
  const factory LendeeApplication(Lendee value) = LendeeData;

  const factory LendeeApplication.loaded() = LendeeDataLoaded;
  const factory LendeeApplication.loading() = LendeeLoading;
  const factory LendeeApplication.error([String? message]) = LendeeErrorDetails;
  const factory LendeeApplication.initial() = LendeeInitial;
  const factory LendeeApplication.initialData(List<Lendee> lendeeData) =
      LendinginitialData;
}
