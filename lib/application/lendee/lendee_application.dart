// main.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wankolota/model/lendee/lendee.dart';
import 'package:wankolota/model/lendee_history/lendee_history.dart';

part 'lendee_application.freezed.dart';

@freezed
class LendeeApplication with _$LendeeApplication {
  const factory LendeeApplication.loaded(List<Lendee> lendeeData) =
      LendeeDataLoaded;
  const factory LendeeApplication.dataLoadedHistory(
      List<LendeeHistory> lendeeData) = LendeeDataLoadedHistory;
  const factory LendeeApplication.added() = LendeeAdded;
  const factory LendeeApplication.loading() = LendeeLoading;
  const factory LendeeApplication.deleted() = LendeeDeleted;
  const factory LendeeApplication.update() = LendeeUpdated;
  const factory LendeeApplication.error([String? message]) = LendeeErrorDetails;
}
