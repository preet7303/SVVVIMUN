import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:imun_2023/otpscreen.dart';

class PhoneAuth extends StatefulWidget {
  const PhoneAuth({Key? key}) : super(key: key);

  @override
  State<PhoneAuth> createState() => _PhoneAuthState();
}

class _PhoneAuthState extends State<PhoneAuth> {
  TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Phone Authentication"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: phoneController,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
                hintText: "Enter Phone Number",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24))),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () async {
                await FirebaseAuth.instance.verifyPhoneNumber(
                    verificationCompleted: (PhoneAuthCredential credential) {},
                    verificationFailed: (FirebaseException ex) {},
                    codeSent: (String verficationId, int? resendtoken) {
                      Navigator.push(context, MaterialPageRoute(builder: (_) => OtpScreen(verificatioionid: '',)));
                    },
                    codeAutoRetrievalTimeout: (String verficationId) {},
                    phoneNumber: phoneController.text.toString());
              },
              child: Text("Verify"))
        ],
      ),
    );
  }
}
