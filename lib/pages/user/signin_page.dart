import 'package:flutter/material.dart';
import 'package:wankolota/application/user/user_application.dart';
import 'package:wankolota/core/ui/snackbar.dart';
import 'package:wankolota/providers/user_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        ProviderListener<UserApplication>(
          provider: userNotifierProvider,
          onChange: (context, state) {
            print("Jordna perterson");
            if (state is UserErrorDetails) {
              AppSnackBar.showSnackBar(state.message ?? "", context);
            }
          },
          child: Consumer(
            builder: (context, watch, child) {
              final state = watch(userNotifierProvider);

              if (state is UserInitial) {
                return Text("intial");
              } else if (state is UserLoading) {
                return CircularProgressIndicator();
              } else if (state is UserData) {
                return Text(state.value.userID ?? "no user");
              } else {
                return Text("No Data");
              }
            },
          ),
        ),
        ElevatedButton.icon(
          label: Text('Woolha.com'),
          icon: Icon(Icons.signal_wifi_statusbar_null),
          onPressed: () {
            context.read(userNotifierProvider.notifier).signInWithGoogle();
          },
        )
      ],
    ));
  }
}
