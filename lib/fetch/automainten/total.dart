import 'dart:convert';
import 'dart:async';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

Future<TotalAutomainten> fetchTotalAutomainten() async {
  String id = "";
  SharedPreferences pref = await SharedPreferences.getInstance();
  id = pref.getString("login")!;

  final response = await http.post(
    Uri.parse("https://ebc-community.com/REST_API/index.php/automainten/total_automainten"),
    headers: {
      "X-API-KEY": "ilAvnYfs3TJsOkMXnWnN",
      HttpHeaders.authorizationHeader:
          "Basic YmluYSBiZXJzYW1hIG5pYWdhIGRpZ2l0YWw6YmJuZGpheWFqYXlhamF5YQ==",
    },
    body: {
      "id": id,
    },
  );

  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return TotalAutomainten.fromJson(jsonResponse[0]);
  } else {
    throw Exception('Failed to load');
  }
}

class TotalAutomainten {
  final String totalAutomainten;

  TotalAutomainten({
    required this.totalAutomainten,
  });

  factory TotalAutomainten.fromJson(Map<String, dynamic> json) {
    return TotalAutomainten(
      totalAutomainten: json['total_automainten'].toString(),
    );
  }
}
