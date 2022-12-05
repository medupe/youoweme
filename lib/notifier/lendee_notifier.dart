import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uome/application/lendee/lendee_application.dart';
import 'package:uome/core/helper/exceptions.dart';
import 'package:uome/model/bulksms/bulk_sms.dart';
import 'package:uome/model/lendee/lendee.dart';
import 'package:uome/model/lendee_history/lendee_history.dart';
import 'package:uome/model/users/app_user.dart';
import 'package:uome/providers/lendee_provider.dart';
import 'package:uome/providers/sms_provider.dart';

class LendeeNotifier extends StateNotifier<LendeeApplication> {
  final Ref _ref;
  final AppUser? _userId;
  LendeeNotifier(this._ref, this._userId)
      : super(
          LendeeApplication.loading(),
        ) {
    getLendee();
  }

  Future<void> getLendee() async {
    try {
      state = LendeeLoading();

      // final user = await  _read(user)  userRepository.getUser();
      final list = await _ref
          .read(lendeeRepositoryProvider)
          .getLendee(_userId!.userID ?? "");
      state = LendeeDataLoaded(list);
    } catch (_) {
      state = LendeeErrorDetails("Error occured, please try again");
    }
  }

  Future<void> getLendeeHistory(String documentID) async {
    try {
      state = LendeeLoading();

      // final user = await  _read(user)  userRepository.getUser();
      final list = await _ref
          .read(lendeeRepositoryProvider)
          .getHistory(_userId!.userID ?? "", documentID);
      state = LendeeDataLoadedHistory(list);
    } on Exception catch (_) {
      state = LendeeErrorDetails("Error occured, please try again");
    }
  }

  Future<void> addLendee(Lendee data) async {
    try {
      state = LendeeLoading();

      final lendeeData = data.copyWith(userId: _userId!.userID ?? "");

      await _ref
          .read(lendeeRepositoryProvider)
          .addLendee(_userId!.userID ?? "", lendeeData);
      final list = await _ref
          .read(lendeeRepositoryProvider)
          .getLendee(_userId!.userID ?? "");

      state = LendeeDataLoaded(list);

      // state = LendeeLoading();
      final sms = BulkSms(
          content: "Hi, " +
              data.fullname +
              ", " +
              _userId!.userName! +
              " lended you R" +
              data.amount.toStringAsFixed(2) +
              " to be payed back on " +
              data.duedate.toString(),
          destination: data.cellNumber);

      await _ref.read(smsNotifierProvider.notifier).sendSMS(sms);

      /*   await smsRepository.sendSMS(sms);
      await _read(lendeeRepositoryProvider)
          .addLendee(_userId!.userID ?? "", lendeeData);*/
    } on AppException catch (_) {
      getLendee();
      state = LendeeErrorDetails(_.toString());
    }
  }

  Future<void> updateLendee(Lendee currentData, double amountToUpdate) async {
    try {
      state = LendeeLoading();

      double amountLeft = currentData.amount - amountToUpdate;
      final dataToUpdate = currentData.copyWith(amount: amountLeft);
      //  final user = await userRepository.getUser();

      ////////////////
      //    final list = await lendeeRepository.getLendee(_userId!.userID ?? "");
      final history = LendeeHistory(
          amount: amountToUpdate, transactionDate: DateTime.now());
      await _ref
          .read(lendeeRepositoryProvider)
          .updateLendee(_userId!.userID ?? "", dataToUpdate);
      if (amountLeft > 0) {
        //    await lendeeRepository.updateLendee(dataToUpdate);

        await _ref.read(lendeeRepositoryProvider).updateLendeeHistory(
            _userId!.userID ?? "", dataToUpdate.id ?? "", history);
        final list = await _ref
            .read(lendeeRepositoryProvider)
            .getLendee(_userId!.userID ?? "");

        final smsUpdate = BulkSms(
            content: currentData.fullname +
                " you have paid R " +
                amountToUpdate.toStringAsFixed(2) +
                " to " +
                _userId!.userName! +
                " and still owe R " +
                amountLeft.toStringAsFixed(2),
            destination: currentData.cellNumber);
        state = LendeeUpdated();
        state = LendeeDataLoaded(list);

        await _ref.read(smsNotifierProvider.notifier).sendSMS(smsUpdate);
      } else {
        await deleteLendee(currentData, false);
        /*   final smsUpdate = BulkSms(
            body:"Hi " + currentData.fullname +  " you have paid R" +
                amountToUpdate.toStringAsFixed(2) +
                " Your loan was repayed payed",
            to: currentData.cellNumber);

        await _read(smsRepositoryProvider).sendSMS(smsUpdate);*/
      }
    } on AppException catch (_) {
      getLendee();
      state = LendeeErrorDetails(_.toString());
    }
  }

  Future<void> deleteLendee(Lendee data, bool isDebtCalncelled) async {
    try {
      state = LendeeLoading();
      /*  await lendeeRepository.deleteLendee(data);
      final user = await userRepository.getUser();
      final list = await lendeeRepository.getLendee(user!.userID ?? "");*/
      await _ref
          .read(lendeeRepositoryProvider)
          .deleteLendee(_userId!.userID ?? "", data);
      final list = await _ref
          .read(lendeeRepositoryProvider)
          .getLendee(_userId!.userID ?? "");

      final smsUpdate = BulkSms(
          content: !isDebtCalncelled
              ? data.fullname +
                  " you have paid R" +
                  data.amount.toStringAsFixed(2) +
                  " Your loan was payed"
              : data.fullname +
                  " your loan from " +
                  _userId!.userName! +
                  " of R " +
                  data.amount.toStringAsFixed(2) +
                  " is cancelled",
          destination: data.cellNumber);
      state = LendeeDeleted();
      state = LendeeDataLoaded(list);

      await _ref.read(smsNotifierProvider.notifier).sendSMS(smsUpdate);
    } on AppException catch (_) {
      getLendee();
      state = LendeeErrorDetails(_.toString());
    }
  }
}
