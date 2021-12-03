import 'dart:convert';
import 'dart:async';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

Future<TotalPending> fetchTotalPending() async {
  String id = "";
  SharedPreferences pref = await SharedPreferences.getInstance();
  id = pref.getString("login")!;

  final response = await http.post(
    Uri.parse("https://ebc-community.com/REST_API/index.php/bonus_harian/total_pending"),
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
    return TotalPending.fromJson(jsonResponse[0]);
  } else {
    throw Exception('Failed to load');
  }
}

class TotalPending {
  final String totalPending;

  TotalPending({
    required this.totalPending,
  });

  factory TotalPending.fromJson(Map<String, dynamic> json) {
    return TotalPending(
      totalPending: json['total_pending'].toString(),
    );
  }
}
