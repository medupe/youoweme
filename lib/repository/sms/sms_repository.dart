import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:uome/core/helper/exceptions.dart';
import 'package:uome/core/helper/helpers.dart';
import 'package:uome/model/bulksms/bulk_sms.dart';
import 'package:uome/model/sms/sms.dart';

abstract class ISmsRepository {
  Future<void> sendSMS(BulkSms sms);
  Future<Authentication> getAuthenticationToken();
}

class SmsRepository extends ISmsRepository {
  @override
  Future<void> sendSMS(BulkSms sms) async {
    final url = "rest.mymobileapi.com";
    final messages = {
      "messages": [
        {"destination": sms.destination, "content": sms.content}
      ]
    };
    var client = http.Client();
    Authentication token = await getAuthenticationToken();
    final String authenticationToken;
    if (token.token != null) {
      authenticationToken = token.token!;
    } else {
      token = await getAuthenticationToken();
      authenticationToken = token.token!;
    }

    final Map<String, String> headers = {
      "Content-Type": "application/json",
      "Accept": "application/json",
      "Authorization": "Bearer $authenticationToken",
    };
    var uri = Uri.https(url, '/v1/BulkMessages/');
    print(sms.toJson());
    final response =
        await client.post(uri, body: jsonEncode(messages), headers: headers);
    if (response.statusCode != 200) {
      throw SmsHttpException(message: "User was not  notifed via sms");
    }
  }

  @override
  Future<Authentication> getAuthenticationToken() async {
    final url = "rest.mymobileapi.com";
    var client = http.Client();
    String token = Helpers.getBse64();
    final Map<String, String> headers = {
      "Content-Type": "application/json",
      "Accept": "application/json",
      "Authorization": "Basic $token",
    };
    var uri = Uri.https(url, '/v1/Authentication');
    final response = await client.get(uri, headers: headers);
    if (response.statusCode != 200) {
      throw SmsHttpException(message: "Could not get authentication");
    }
    return Authentication.fromJson(jsonDecode(response.body));
  }
}
