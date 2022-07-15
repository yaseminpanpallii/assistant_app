import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/dashboard.dart';
import 'package:flutter_application_1/ui/styles/text_styles.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 3,
        flexibleSpace: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Image.asset(
              "assets/images/logo.png",
              width: width / 5,
              height: height / 12,
              alignment: Alignment.center,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 50),
              child: Text(
                "Giriş Yap",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 28, letterSpacing: 0.5, color: Color.fromARGB(255, 70, 70, 70)),
              ),
            ),
            const Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
              child: Text("Lorem ipsum dolor sit amet, consectetur.",
                  textAlign: TextAlign.center, textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: true, applyHeightToLastDescent: true), style: MyTextStyle.genericSize),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "E-Posta",
                    style: MyTextStyle.customTextStyle(17, Colors.black54),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'ornek@gmail.com', hintText: 'Enter secure e-posta'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Parola",
                    style: MyTextStyle.customTextStyle(17, Colors.black54),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(border: OutlineInputBorder(), suffixIcon: Icon(Icons.visibility_off_rounded), labelText: '*******', hintText: 'Enter secure password'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(border: Border.all(color: Colors.black54, width: 1), borderRadius: BorderRadius.circular(50)),
                      ),
                      Text(
                        "  Beni Hatırla",
                        style: MyTextStyle.customTextStyle(15, Colors.grey),
                      )
                    ],
                  ),
                  Text(
                    "Parolamı Unuttum",
                    style: MyTextStyle.customTextStyle(15, Colors.grey),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              child: const Text('Giriş'),
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Dashboard()));
              },
              style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 51, 215, 57),
                  padding: const EdgeInsets.symmetric(horizontal: 55, vertical: 10),
                  textStyle: const TextStyle(fontSize: 30, fontWeight: FontWeight.w500)),
            ),
          ],
        )),
      ),
    );
  }
}
