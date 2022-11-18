import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wankolota/application/user/user_application.dart';
import 'package:wankolota/core/helper/helpers.dart';
import 'package:wankolota/core/ui/snackbar.dart';
import 'package:wankolota/model/sign_up/sign_up.dart';
import 'package:wankolota/pages/lendee/lendee_page.dart';
import 'package:wankolota/providers/user_provider.dart';

class SignUpFormWidget extends ConsumerStatefulWidget {
  const SignUpFormWidget({Key? key}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends ConsumerState<SignUpFormWidget> {
  final TextEditingController _nameofperson = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
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
      child: ListView(
        children: [
          TextFormField(
            controller: _nameofperson,
            validator: (String? value) {
              if (value == null) {
                return "Enter valid name";
              }

              return null;
            },
            decoration: InputDecoration(
              labelText: 'Full names',
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          TextFormField(
            controller: _email,
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
            controller: _password,
            obscureText: true,
            validator: (String? value) {
              RegExp regex = RegExp(
                  r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$');
              if (value == null || value.isEmpty) {
                return "Enter your password";
              } else if (!regex.hasMatch(value)) {
                return "Enter strong password";
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: 'Password',
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.05,
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  final signup = SignUpRequest(
                      email: _email.text,
                      password: _password.text,
                      displayName: _nameofperson.text);

                  ref
                      .read(userNotifierProvider.notifier)
                      .signUpWithUsernameAndPassword(signup);
                }
              },
              child: Text("Sign Up"),
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
                Navigator.of(context).pop();
              },
              child: Text("Back"),
            ),
          ),
        ],
      ),
    );
  }
}
