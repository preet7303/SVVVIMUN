import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:imun_2023/googleauth.dart';
import 'package:imun_2023/home_page2.dart';
import 'package:imun_2023/phoneauth.dart';
import 'package:imun_2023/signup.dart';
import 'package:imun_2023/uihelper.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  login(String email, String password) async {
    if(email=="" && password==""){
      debugPrint("login method");
      return UiHelper.CustomAlertBox(context, "details daal re bhadwe");
    } else {
      //UserCredential? usercredential;
      try {
         await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password)
            .then((value) {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => HomePage2()));
        });
      } on FirebaseAuthException catch (ex) {
        UiHelper.CustomAlertBox(context, ex.code.toString());
      }
    }
  }


  _signWithGoogle() async{
    final GoogleSignIn _googleSignIn = GoogleSignIn();
    try{
      final GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();

      if(googleSignInAccount != null ){
        final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;

        final AuthCredential  credential = GoogleAuthProvider.credential(
          idToken: googleSignInAuthentication.idToken,
          accessToken: googleSignInAuthentication.accessToken
        );
        await _firebaseAuth.signInWithCredential(credential);
        Navigator.push(context, MaterialPageRoute(builder: (_) => HomePage2()));

      }
    }
    catch(e){
 return UiHelper.CustomAlertBox(context, "Error");

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Column(
        children: [
          UiHelper.CustomTextField (emailController, Icons.mail, "email", false),
          UiHelper.CustomTextField(passwordController, Icons.password, "password", true),
          SizedBox(
            height: 20),

          UiHelper.Custombutton(() {
            debugPrint("login");
            login(emailController.text.toString(), passwordController.text.toString());
          }, "Login"),
          Center(
            child: Row(
              children: [
                Text("Don't have an account?"),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_) => SignUp()));
                }, child: Text("Sign Up")),
                //Text("000"),
              ],
            ),

          ),
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (_) => PhoneAuth()));
          }, child: Text("Login With OTP")),
          Container(
            color: Colors.red,
            child: ElevatedButton(onPressed: (){
              _signWithGoogle();
            }, child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(FontAwesomeIcons.google, color: Colors.red,),
                SizedBox(width: 20,),
                Text("Sign In with google"),

              ],
            )),
          )

        ],
      ),

    );

  }


}

class _firebaseAuth {
  static signInWithCredential(AuthCredential credential) {}
}
