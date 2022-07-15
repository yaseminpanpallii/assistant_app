import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth/login.dart'; 
import 'package:flutter_application_1/ui/styles/text_styles.dart';

class IntroductionScreens extends StatelessWidget {
  const IntroductionScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, bottom: 35),
            child: Image.asset(
              "assets/images/logo.png",
              fit: BoxFit.fill,
              width: screenWidth / 4,
            ),
          ),
          const Text(
            "Dijital Asistan'a\n Hoşgeldiniz !",
            style:   TextStyle(fontWeight: FontWeight.w500, fontSize: 28, letterSpacing: 0.5, color: Color.fromARGB(255, 70, 70, 70)),
          ),
          const Padding(
            padding: EdgeInsets.all(40),
            child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer rhoncus scelerisque  faucibus cursus lacinia et, consequat eget nunc.",
                textAlign: TextAlign.center, textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: true, applyHeightToLastDescent: true), style: MyTextStyle.genericSize),
          ),
          const Icon(
            Icons.keyboard_double_arrow_down,
            size: 50,
            color: Color.fromARGB(255, 64, 202, 69),
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 40),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(3), color: const Color.fromARGB(213, 70, 201, 75)),
            child: const Text(
              "Başla",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Text("Zaten hesabın var mı ?", style: MyTextStyle.customTextStyle(17, const Color.fromARGB(152, 0, 0, 0))),
          const SizedBox(
            height: 40,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: ((context) => const Login())));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Giriş Yap ", style: MyTextStyle.customTextStyle(22,const Color.fromARGB(255, 64, 202, 69))),
                const Icon(
                  Icons.arrow_forward,
                  size: 30,
                  color: Color.fromARGB(255, 64, 202, 69),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
