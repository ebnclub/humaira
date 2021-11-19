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
      "Authorization":
          "Basic YmluYSBiZXJzYW1hIG5pYWdhIGRpZ2l0YWw6YmJuZGpheWFqYXlhamF5YQ==",
      "Content-Type": "application/x-www-form-urlencoded",
      "Charset": "utf-8",
    },
    body: {
      "id": id,
    },
  );

  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    print(jsonResponse[0]);
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
    // String titipSponsor = '';
    // String titipNamaLengkap = '';
    // String titipJenisKelamin = '';
    // String titipTanggalLahir = '';
    // String titipNoKTP = '';
    // String titipAlamatLengkap = '';
    // String titipKota = '';
    // String titipProvinsi = '';
    // String titipNoHP = '';
    // String titipNamaBank = '';
    // String titipNoRekening = '';
    // String titipTanggalLahir = '';
    // if (json['bank'] == null) {
    //   titipBank = '';
    // } else {
    //   titipBank = json['bank'];
    // }
    // if (json['rekening'] == null) {
    //   titipRekening = '';
    // } else {
    //   titipRekening = json['rekening'];
    // }
    // if (json['address'] == null) {
    //   titipAddress = '';
    // } else {
    //   titipAddress = json['address'];
    // }
    // if (json['city'] == null) {
    //   titipCity = '';
    // } else {
    //   titipCity = json['city'];
    // }
    return Konsumen(
      idKonsumen: json['id_konsumen'],
      sponsor: json['sponsor'],
      username: json['username'],
      namaLengkap: json['nama_lengkap'],
      email: json['email'],
      jenisKelamin: json['jenis_kelamin'],
      tanggalLahir: json['tanggal_lahir'],
      noKTP: json['no_ktp'],
      alamatLengkap: json['alamat_lengkap'],
      kota: json['kota'],
      provinsi: json['provinsi'],
      noHP: json['no_hp'],
      namaBank: json['nama_bank'],
      noRekening: json['no_rekening'],
      atasNama: json['atas_nama'],
      tanggalDaftar: json['tanggal_daftar'],
    );
  }
}
