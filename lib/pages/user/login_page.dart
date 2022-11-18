import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:wankolota/application/user/user_application.dart';

import 'package:wankolota/pages/user/widgets/login_form.dart';
import 'package:wankolota/providers/user_provider.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(userNotifierProvider);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: LoadingOverlay(
        isLoading: state is UserLoading ? true : false,
        child: SafeArea(
          child: Container(
            margin: EdgeInsets.only(left: 30, right: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 60,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Welcome back!",
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Login to continue",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Image.asset(
                  'assets/images/logo.jpg',
                ),
                SizedBox(
                  height: 50,
                ),
                LoginFormWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
