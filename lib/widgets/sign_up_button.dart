import 'package:flutter/material.dart';
import 'package:loja_virtual/screens/signup_screen.dart';

class SignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.only(
        top: 20
      ),
      onPressed: (){
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context)=>SignUpScreen())
        );
      },
      child: Text(
        "Não possui uma conta? Cadastre-se!",
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontWeight: FontWeight.w300,
          color: Colors.white,
          fontSize: 13,
          letterSpacing: 0.5
        ),
      ),
    );
  }
}
