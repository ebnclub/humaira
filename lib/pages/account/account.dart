import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:humaira/color/color.dart';
import 'package:humaira/pages/login/login.dart';
import 'package:humaira/theme/theme_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController namaLengkapController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController jenisKelaminController = TextEditingController();
  TextEditingController tanggalLahirController = TextEditingController();
  TextEditingController noKTPController = TextEditingController();
  TextEditingController alamatLengkapController = TextEditingController();
  TextEditingController ahliWarisController = TextEditingController();
  TextEditingController kotaController = TextEditingController();
  TextEditingController provinsiController = TextEditingController();
  TextEditingController noHPController = TextEditingController();
  TextEditingController namaBankController = TextEditingController();
  TextEditingController noRekeningController = TextEditingController();
  TextEditingController atasNamaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: [
        Stack(
          children: [
            Container(
              height: 200.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                color: warnaPrimer(),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                ),
                child: Column(children: [
                  Row(
                    children: [
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 70),
                            Text("My Profile",
                                style: TextStyle(
                                    fontSize: 24, color: warnaSekunder())),
                          ],
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
            ),
            Center(
              child: Container(
                  margin: EdgeInsets.only(
                    top: 125.0,
                  ),
                  width: 150,
                  height: 150,
                  child: CircleAvatar(
                      radius: 20, backgroundImage: AssetImage('assets/images/2.jpg'))),
            )
          ],
        ),
        Padding(
            padding: EdgeInsets.only(
              left: 20.0,
              right: 20.0,
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("Username",
                  style: TextStyle(fontSize: 14, color: Colors.black)),
              Container(
                child: TextField(
                    controller: usernameController,
                    decoration: ThemeHelper().textInputDecoration()),
                decoration: ThemeHelper().inputBoxDecorationShaddow(warnaTextField()),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Nama Lengkap",
                  style: TextStyle(fontSize: 14, color: Colors.black)),
              Container(
                child: TextField(
                    controller: namaLengkapController,
                    decoration: ThemeHelper().textInputDecoration()),
                decoration: ThemeHelper().inputBoxDecorationShaddow(warnaTextField()),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Email",
                  style: TextStyle(fontSize: 14, color: Colors.black)),
              Container(
                child: TextField(
                    controller: emailController,
                    decoration: ThemeHelper().textInputDecoration()),
                decoration: ThemeHelper().inputBoxDecorationShaddow(warnaTextField()),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Jenis Kelamin",
                  style: TextStyle(fontSize: 14, color: Colors.black)),
              Container(
                child: TextField(
                    controller: jenisKelaminController,
                    decoration: ThemeHelper().textInputDecoration()),
                decoration: ThemeHelper().inputBoxDecorationShaddow(warnaTextField()),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Tanggal Lahir",
                  style: TextStyle(fontSize: 14, color: Colors.black)),
              Container(
                child: TextField(
                    controller: tanggalLahirController,
                    decoration: ThemeHelper().textInputDecoration()),
                decoration: ThemeHelper().inputBoxDecorationShaddow(warnaTextField()),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Nomor KTP",
                  style: TextStyle(fontSize: 14, color: Colors.black)),
              Container(
                child: TextField(
                    controller: noKTPController,
                    decoration: ThemeHelper().textInputDecoration()),
                decoration: ThemeHelper().inputBoxDecorationShaddow(warnaTextField()),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Alamat Lengkap",
                  style: TextStyle(fontSize: 14, color: Colors.black)),
              Container(
                child: TextField(
                    controller: alamatLengkapController,
                    decoration: ThemeHelper().textInputDecoration()),
                decoration: ThemeHelper().inputBoxDecorationShaddow(warnaTextField()),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Ahli Waris",
                  style: TextStyle(fontSize: 14, color: Colors.black)),
              Container(
                child: TextField(
                    controller: ahliWarisController,
                    decoration: ThemeHelper().textInputDecoration()),
                decoration: ThemeHelper().inputBoxDecorationShaddow(warnaTextField()),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Kota", style: TextStyle(fontSize: 14, color: Colors.black)),
              Container(
                child: TextField(
                    controller: kotaController,
                    decoration: ThemeHelper().textInputDecoration()),
                decoration: ThemeHelper().inputBoxDecorationShaddow(warnaTextField()),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Provinsi",
                  style: TextStyle(fontSize: 14, color: Colors.black)),
              Container(
                child: TextField(
                    controller: provinsiController,
                    decoration: ThemeHelper().textInputDecoration()),
                decoration: ThemeHelper().inputBoxDecorationShaddow(warnaTextField()),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Nomor HP",
                  style: TextStyle(fontSize: 14, color: Colors.black)),
              Container(
                child: TextField(
                    controller: noHPController,
                    decoration: ThemeHelper().textInputDecoration()),
                decoration: ThemeHelper().inputBoxDecorationShaddow(warnaTextField()),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Nama Bank",
                  style: TextStyle(fontSize: 14, color: Colors.black)),
              Container(
                child: TextField(
                    controller: namaBankController,
                    decoration: ThemeHelper().textInputDecoration()),
                decoration: ThemeHelper().inputBoxDecorationShaddow(warnaTextField()),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Nomor Rekening",
                  style: TextStyle(fontSize: 14, color: Colors.black)),
              Container(
                child: TextField(
                    controller: noRekeningController,
                    decoration: ThemeHelper().textInputDecoration()),
                decoration: ThemeHelper().inputBoxDecorationShaddow(warnaTextField()),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Atas Nama",
                  style: TextStyle(fontSize: 14, color: Colors.black)),
              Container(
                child: TextField(
                    controller: atasNamaController,
                    decoration: ThemeHelper().textInputDecoration()),
                decoration: ThemeHelper().inputBoxDecorationShaddow(warnaTextField()),
              ),
              SizedBox(
                height: 10,
              ),
            ])),
        SizedBox(height: 20,),
        Container(
          width: 315,
          height: 40,
          child: TextButton(
            onPressed: () {},
            child: Text(
              "Ubah Password",
              style: TextStyle(
                fontSize: 15,
                letterSpacing: 2,
                color: Colors.black,
              ),
            ),
          ),
        ),
        SizedBox(height: 20,),
        Container(
          width: 315,
          height: 40,
          child: OutlinedButton(
            onPressed: () {},
            child: Text(
              "UPDATE",
              style: TextStyle(
                fontSize: 15,
                letterSpacing: 2,
                color: warnaSekunder(),
              ),
            ),
            style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30))),
          ),
          decoration: ThemeHelper().inputBoxDecorationShaddow(warnaPrimer()),
        ),
        SizedBox(height: 20,),
        Container(
          width: 315,
          height: 40,
          child: OutlinedButton(
            onPressed: () async {
              SharedPreferences pref = await SharedPreferences.getInstance();
              await pref.clear();
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => const Login2Page()),
                  (route) => false);
            },
            child: const Text(
              "SIGN OUT",
              style: TextStyle(
                fontSize: 15,
                letterSpacing: 2,
                color: Colors.black,
              ),
            ),
            style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30))),
          ),
          decoration: ThemeHelper().inputBoxDecorationShaddow(warnaTextField()),
        ),
        SizedBox(height: 20,)
      ],
    )));
  }
}
