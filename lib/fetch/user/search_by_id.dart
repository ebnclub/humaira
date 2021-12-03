import 'dart:convert';
import 'dart:async';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

Future<Konsumen> fetchKonsumenById() async {
  String id = "";
  SharedPreferences pref = await SharedPreferences.getInstance();
  id = pref.getString("login")!;

  final response = await http.post(
    Uri.parse("https://ebc-community.com/REST_API/index.php/search_by_id"),
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
    return Konsumen.fromJson(jsonResponse[0]);
  } else {
    throw Exception('Failed to load');
  }
}

class Konsumen {
  final String idKonsumen;
  final String sponsor;
  final String username;
  final String namaLengkap;
  final String email;
  final String jenisKelamin;
  final String tanggalLahir;
  final String noKTP;
  final String alamatLengkap;
  final String kota;
  final String provinsi;
  final String noHP;
  final String namaBank;
  final String noRekening;
  final String atasNama;
  final String tanggalDaftar;

  Konsumen({
    required this.idKonsumen,
    required this.sponsor,
    required this.username,
    required this.namaLengkap,
    required this.email,
    required this.jenisKelamin,
    required this.tanggalLahir,
    required this.noKTP,
    required this.alamatLengkap,
    required this.kota,
    required this.provinsi,
    required this.noHP,
    required this.namaBank,
    required this.noRekening,
    required this.atasNama,
    required this.tanggalDaftar,
  });

  factory Konsumen.fromJson(Map<String, dynamic> json) {
    return Konsumen(
      idKonsumen: json['id_konsumen'].toString(),
      sponsor: json['sponsor'].toString(),
      username: json['username'].toString(),
      namaLengkap: json['nama_lengkap'].toString(),
      email: json['email'].toString(),
      jenisKelamin: json['jenis_kelamin'].toString(),
      tanggalLahir: json['tanggal_lahir'].toString(),
      noKTP: json['no_ktp'].toString(),
      alamatLengkap: json['alamat_lengkap'].toString(),
      kota: json['kota'].toString(),
      provinsi: json['provinsi'].toString(),
      noHP: json['no_hp'].toString(),
      namaBank: json['nama_bank'].toString(),
      noRekening: json['no_rekening'].toString(),
      atasNama: json['atas_nama'].toString(),
      tanggalDaftar: json['tanggal_daftar'].toString(),
    );
  }
}
