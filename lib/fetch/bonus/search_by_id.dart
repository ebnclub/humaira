import 'dart:convert';
import 'dart:async';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

Future<List<SearchByIdBonus>> fetchSearchByIdBonus() async {
  String id = "";
  SharedPreferences pref = await SharedPreferences.getInstance();
  id = pref.getString("login")!;

  final response = await http.post(
    Uri.parse("https://ebc-community.com/REST_API/index.php/bonus/search_by_id"),
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
    return jsonResponse.map((data) => SearchByIdBonus.fromJson(data)).toList();
  } else {
    throw Exception('Failed to load');
  }
}

class SearchByIdBonus {
  final String jenis;
  final String dari;
  final String nominal;
  final String waktuBonus;

  SearchByIdBonus({
    required this.jenis,
    required this.dari,
    required this.nominal,
    required this.waktuBonus,
  });

  factory SearchByIdBonus.fromJson(Map<String, dynamic> json) {
    return SearchByIdBonus(
      jenis: json['jenis'].toString(),
      dari: json['dari'].toString(),
      nominal: json['nominal'].toString(),
      waktuBonus: json['waktu_bonus'].toString(),
    );
  }
}
