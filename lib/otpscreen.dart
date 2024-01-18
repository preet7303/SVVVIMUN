import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:imun_2023/home_page2.dart';

class OtpScreen extends StatefulWidget {
  String verificatioionid;
  OtpScreen({super.key, required this.verificatioionid});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  TextEditingController OtpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: OtpController,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
                hintText: "Enter OTP",
                suffixIcon: Icon(Icons.phone),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25))),
          ),
          SizedBox(height: 30),
          ElevatedButton(
              onPressed: () async {
                try {
                  PhoneAuthCredential credential =
                      await PhoneAuthProvider.credential(
                          verificationId: widget.verificatioionid,
                          smsCode: OtpController.text.toString());
                  FirebaseAuth.instance.signInWithCredential(credential).then((value) =>
                  {Navigator.push(context, MaterialPageRoute(builder: (_) => HomePage2()))});
                } catch (ex) {
                  log(ex.toString());
                }
              },
              child: Text("OTP"))
        ],
      ),
    );
  }
}
