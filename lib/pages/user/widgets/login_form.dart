import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wankolota/application/user/user_application.dart';
import 'package:wankolota/core/helper/helpers.dart';
import 'package:wankolota/core/ui/snackbar.dart';
import 'package:wankolota/model/sign_in/sign_in.dart';
import 'package:wankolota/pages/lendee/lendee_page.dart';
import 'package:wankolota/pages/user/signup_page.dart';
import 'package:wankolota/providers/user_provider.dart';

class LoginFormWidget extends ConsumerStatefulWidget {
  const LoginFormWidget({Key? key}) : super(key: key);

  @override
  _MyLoginFormWidget createState() => _MyLoginFormWidget();
}

class _MyLoginFormWidget extends ConsumerState<LoginFormWidget> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _loginEmail = TextEditingController();
  final TextEditingController _loginPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(userNotifierProvider);
    ref.listen<UserApplication>(userNotifierProvider,
        (UserApplication? prev, UserApplication next) {
      if (next is UserErrorDetails) {
        AppSnackBar.showSnackBar(next.message ?? "", context);
      } else if (next is UserDataLoaded) {
        AppSnackBar.showSnackBar(
            "Signed in as: " + next.value.userName!, context);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LendeePage()),
        );
      } else if (next is UserUnsignedIn) {
      } else if (next is UserSignUpWithUserNameAndPassword) {
        AppSnackBar.showSnackBar("Successfully registered", context);
      } else {}
    });
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: _loginEmail,
            validator: (String? value) {
              if (value == null ||
                  value.isEmpty ||
                  !Helpers.isGoodEmail(value)) {
                return "Enter valid email";
              }

              return null;
            },
            decoration: InputDecoration(
              labelText: 'Email',
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          TextFormField(
            controller: _loginPassword,
            obscureText: true,
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return "Enter your password";
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: 'Password',
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.05,
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  final signIn = SignInRequest(
                    email: _loginEmail.text,
                    password: _loginPassword.text,
                  );

                  ref
                      .read(userNotifierProvider.notifier)
                      .signInWithUsernameAndPassword(signIn);
                }
              },
              child: Text("Sign in "),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.05,
            child: OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignUpPage(),
                  ),
                );
              },
              child: Text("Sign Up"),
            ),
          ),
        ],
      ),
    );
  }
}
