import 'dart:convert';
import 'dart:async';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

Future<TotalBonus> fetchTotalBonus() async {
  String id = "";
  SharedPreferences pref = await SharedPreferences.getInstance();
  id = pref.getString("login")!;

  final response = await http.post(
    Uri.parse("https://ebc-community.com/REST_API/index.php/bonus/total_bonus"),
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
    return TotalBonus.fromJson(jsonResponse[0]);
  } else {
    throw Exception('Failed to load');
  }
}

class TotalBonus {
  final String totalBonus;

  TotalBonus({
    required this.totalBonus,
  });

  factory TotalBonus.fromJson(Map<String, dynamic> json) {
    return TotalBonus(
      totalBonus: json['total_bonus'].toString(),
    );
  }
}
