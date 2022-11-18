import 'package:flutter/material.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'package:wankolota/application/user/user_application.dart';
import 'package:wankolota/core/helper/helpers.dart';
import 'package:wankolota/core/ui/snackbar.dart';
import 'package:wankolota/model/sign_in/sign_in.dart';
import 'package:wankolota/model/sign_up/sign_up.dart';
import 'package:wankolota/pages/lendee/lendee_page.dart';
import 'package:wankolota/pages/user/widgets/signin_content_widget.dart';
import 'package:wankolota/providers/user_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

// ignore: must_be_immutable
class SignInPage extends ConsumerWidget {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {"text": "Welcome to Tokoto, Let’s shop!", "image": "splash_2.png"},
    {
      "text":
          "We help people conect with store \naround United State of America",
      "image": "splash_2.png"
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image": "splash_2.png"
    },
  ];

  final TextEditingController _nameofperson = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _loginEmail = TextEditingController();
  final TextEditingController _loginPassword = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _loading = false;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
      } else if (next is UserLoading) {
        _loading = true;
      }
    });
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: LoadingOverlay(
        isLoading: state is UserLoading ? true : false,
        child: SafeArea(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: PageView.builder(
                    onPageChanged: (value) {},
                    itemCount: splashData.length,
                    itemBuilder: (context, index) => SignInContentWidget(
                      image: splashData[index]["image"],
                      text: splashData[index]['text'],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: <Widget>[
                        Spacer(),
                        Spacer(flex: 2),
                        /*  SignInButton(
                          Buttons.Google,
                          onPressed: () {
                            ref
                                .read(userNotifierProvider.notifier)
                                .signInWithGoogle();
                          },
                        ),*/
                        ElevatedButton(
                          onPressed: () async {
                            await Alert(
                                context: context,
                                title: "Sign in?",
                                content: Container(
                                  width: 400,
                                  child: Form(
                                    key: _formKey,
                                    child: Column(
                                      children: <Widget>[
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
                                            icon: Icon(Icons.account_circle),
                                            labelText: 'Email',
                                          ),
                                        ),
                                        TextFormField(
                                          controller: _loginPassword,
                                          obscureText: true,
                                          validator: (String? value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return "Enter your password";
                                            }
                                            return null;
                                          },
                                          decoration: InputDecoration(
                                            icon: Icon(Icons.account_circle),
                                            labelText: 'Password',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                buttons: [
                                  DialogButton(
                                    onPressed: () async {
                                      if (_formKey.currentState!.validate()) {
                                        final signIn = SignInRequest(
                                          email: _loginEmail.text,
                                          password: _loginPassword.text,
                                        );

                                        ref
                                            .read(userNotifierProvider.notifier)
                                            .signInWithUsernameAndPassword(
                                                signIn);
                                        Navigator.of(context).pop();
                                      }
                                    },
                                    child: Text(
                                      "SAVE",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                  )
                                ]).show();
                          },
                          child: Text('sign In'),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        ElevatedButton(
                          onPressed: () async {
                            await Alert(
                                context: context,
                                title: "Sign up?",
                                content: Container(
                                  width: 400,
                                  child: Form(
                                    key: _formKey,
                                    child: Column(
                                      children: <Widget>[
                                        TextFormField(
                                          controller: _nameofperson,
                                          validator: (String? value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return "Enter your name";
                                            }
                                            return null;
                                          },
                                          decoration: InputDecoration(
                                            icon: Icon(Icons.account_circle),
                                            labelText: 'Name',
                                          ),
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
                                            icon: Icon(Icons.account_circle),
                                            labelText: 'Email',
                                          ),
                                        ),
                                        TextFormField(
                                          obscureText: true,
                                          controller: _password,
                                          validator: (String? value) {
                                            RegExp regex = RegExp(
                                                r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$');
                                            if (value == null ||
                                                value.isEmpty) {
                                              return "Enter your password";
                                            } else if (!regex.hasMatch(value)) {
                                              return "Enter strong password";
                                            }
                                            return null;
                                          },
                                          decoration: InputDecoration(
                                            icon: Icon(Icons.account_circle),
                                            labelText: 'Password',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                buttons: [
                                  DialogButton(
                                    onPressed: () async {
                                      if (_formKey.currentState!.validate()) {
                                        final signup = SignUpRequest(
                                            email: _email.text,
                                            password: _password.text,
                                            displayName: _nameofperson.text);

                                        ref
                                            .read(userNotifierProvider.notifier)
                                            .signUpWithUsernameAndPassword(
                                                signup);
                                        Navigator.of(context).pop();
                                      }
                                    },
                                    child: Text(
                                      "SAVE",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                  )
                                ]).show();
                          },
                          child: Text('sign Up'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

    /*return Scaffold(
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
    ));*/
  }
}
