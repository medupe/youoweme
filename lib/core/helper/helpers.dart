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

  static Map<String, String> requestHeaders = {
    'Content-type': 'text/json',
    'Accept': 'application/json',
    'Authorization':
        'Bearer 4fada618-51cc-4c99-9c03-0e99f86875de:DJi7uCPsBPNGKvzFFw55nvwVcSYjrT6t'
  };
}
