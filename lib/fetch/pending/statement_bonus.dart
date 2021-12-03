import 'dart:convert';
import 'dart:async';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

Future<List<StatemenBonus>> fetchStatemenBonus() async {
  String username = "";
  SharedPreferences pref = await SharedPreferences.getInstance();
  username = pref.getString("username")!;

  final response = await http.post(
    Uri.parse("https://ebc-community.com/REST_API/index.php/bonus_harian/statemen_bonus"),
    headers: {
      "X-API-KEY": "ilAvnYfs3TJsOkMXnWnN",
      HttpHeaders.authorizationHeader:
          "Basic YmluYSBiZXJzYW1hIG5pYWdhIGRpZ2l0YWw6YmJuZGpheWFqYXlhamF5YQ==",
    },
    body: {
      "username": username,
    },
  );

  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((data) => StatemenBonus.fromJson(data)).toList();
  } else {
    throw Exception('Failed to load');
  }
}

class StatemenBonus {
  final String waktuBayar;
  final String bank;
  final String rekening;
  final String bonus;
  final String auto;
  final String admin;
  final String bayar;
  final String status;

  StatemenBonus({
    required this.waktuBayar,
    required this.bank,
    required this.rekening,
    required this.bonus,
    required this.auto,
    required this.admin,
    required this.bayar,
    required this.status,
  });

  factory StatemenBonus.fromJson(Map<String, dynamic> json) {
    return StatemenBonus(
      waktuBayar: json['waktu_bayar'].toString(),
      bank: json['bank'].toString(),
      rekening: json['rekeing'].toString(),
      bonus: json['bonus'].toString(),
      auto: json['auto'].toString(),
      admin: json['admin'].toString(),
      bayar: json['bayar'].toString(),
      status: json['status'].toString(),
    );
  }
}
