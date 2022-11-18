import 'dart:convert';

class Helpers {
  static bool isNumericUsingTryParse(String string) {
    if (string.isEmpty) {
      return false;
    }
    final number = num.tryParse(string);

    if (number == null) {
      return false;
    }

    return true;
  }

  static bool isGoodEmail(String email) {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(email);
  }

  static String getBse64() {
    String mydata1 =
        "032db3ba-224c-43a0-a1f6-1bcaf30e0aa2:bgpTw9djRJcZZVJHGYv9wuk9WDxM2Wws";
    List<int> mydataint = utf8.encode(mydata1);
    return base64.encode(mydataint);
  }

  static Map<String, String> requestHeaders = {
    'Content-type': 'text/json',
    'Accept': 'application/json',
    'Authorization':
        'Bearer 4fada618-51cc-4c99-9c03-0e99f86875de:DJi7uCPsBPNGKvzFFw55nvwVcSYjrT6t'
  };
}
