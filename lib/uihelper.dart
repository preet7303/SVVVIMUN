import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UiHelper{
  static CustomTextField(TextEditingController controller, IconData iconData, String text ,bool toHide ){
    return TextField(
      controller: controller,
      obscureText: toHide,
      decoration: InputDecoration(
        hintText: text,
        suffixIcon: Icon(iconData),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
        ),


      ),
    );
  }
  static Custombutton(VoidCallback voidCallback, String text){
    return SizedBox(height: 50, width: 200,
    child: ElevatedButton(onPressed: voidCallback, child: Text(text, style: TextStyle(color: Colors.white, fontSize: 20),))
    );
  }

  static CustomAlertBox(BuildContext context, String text){
    return showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(title: Text (text),);
    });
  }
}