import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wankolota/application/lendee/lendee_application.dart';
import 'package:wankolota/model/lendee/lendee.dart';
import 'package:wankolota/repository/lendee/lendee_repository.dart';

class LendeeNotifier extends StateNotifier<LendeeApplication> {
  final LendeeRepository lendeeRepository;
  LendeeNotifier(this.lendeeRepository)
      : super(
          LendeeApplication.initial(),
        ) {
    getLendee();
  }

  Future<void> getLendee() async {
    try {
      state = LendeeLoading();
      final list = await lendeeRepository.getLendee();
      state = LendinginitialData(list);
    } on Exception catch (_) {
      state = LendeeErrorDetails(_.toString());
    }
  }

  Future<void> addLendee(Lendee data) async {
    try {
      state = LendeeLoading();
      await lendeeRepository.addLendee(data);
      final list = await lendeeRepository.getLendee();

      state = LendinginitialData(list);
    } on Exception catch (_) {
      state = LendeeErrorDetails(_.toString());
    }
  }

  Future<void> updateLendee(Lendee data) async {
    try {
      state = LendeeLoading();
      await lendeeRepository.updateLendee(data);
      final list = await lendeeRepository.getLendee();

      state = LendinginitialData(list);
    } on Exception catch (_) {
      state = LendeeErrorDetails(_.toString());
    }
  }

  Future<void> deleteLendee(Lendee data) async {
    try {
      state = LendeeLoading();
      await lendeeRepository.deleteLendee(data);
      final list = await lendeeRepository.getLendee();

      state = LendinginitialData(list);
    } on Exception catch (_) {
      state = LendeeErrorDetails(_.toString());
    }
  }
}
