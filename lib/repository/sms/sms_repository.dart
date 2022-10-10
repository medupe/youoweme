import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:wankolota/core/helper/exceptions.dart';
import 'package:wankolota/model/bulksms/bulk_sms.dart';

abstract class ISmsRepository {
  Future<void> sendSMS(BulkSms sms);
}

class SmsRepository extends ISmsRepository {
  @override
  Future<void> sendSMS(BulkSms sms) async {
    final url = "api.bulksms.com";
    var client = http.Client();

    final Map<String, String> headers = {
      "Content-Type": "application/json",
      "Accept": "application/json",
      "Authorization":
          "Basic ODY2ODczQzRBMTRENEUzQjhGQzc4MDZFMTBGNDJCQzUtMDEtQjpuMXh2RlBZNmlXcnNDN3RfaGlvRWwqMjZHTnIxeQ==",
    };

    var uri = Uri.https(url, '/v1/messages/');

    final response = await client.post(uri,
        body: jsonEncode(sms.toJson()), headers: headers);
    if (response.statusCode != 201) {
      throw SmsHttpException(message: "User was not notifierd");
    }
  }
}
