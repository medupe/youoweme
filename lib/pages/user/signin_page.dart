import 'package:flutter/material.dart';

import 'package:wankolota/application/user/user_application.dart';
import 'package:wankolota/core/ui/snackbar.dart';
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
      } else if (next is UserUnsignedIn) {}
    });
    return Scaffold(
      body: SafeArea(
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
                      SignInButton(
                        Buttons.Google,
                        onPressed: () {
                          ref
                              .read(userNotifierProvider.notifier)
                              .signInWithGoogle();
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
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
