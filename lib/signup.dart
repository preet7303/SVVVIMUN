import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:imun_2023/home_page2.dart';
import 'package:imun_2023/uihelper.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  signUp(String email, String password) async {
    if(email=="" && password==""){
      return UiHelper.CustomAlertBox(context, "Please provide credentials");
    } else {
      UserCredential? usercredential;
      try {
        usercredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password)
            .then((value) {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => HomePage2()));
        });
      } on FirebaseAuthException catch (ex) {
        UiHelper.CustomAlertBox(context, ex.code.toString());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SignUp"),
      ),
      body: Column(
        children: [
          UiHelper.CustomTextField(emailController, Icons.mail, "email", false),
          UiHelper.CustomTextField(
              passwordController, Icons.password, "password", true),
          SizedBox(
            height: 20,
          ),
          UiHelper.Custombutton(() {
           signUp(emailController.text.toString(), passwordController.text.toString());
          }, "SignUp")
        ],
      ),
    );
  }
}
