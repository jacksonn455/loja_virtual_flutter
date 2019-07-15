import 'package:flutter/material.dart';
import 'package:loja_virtual/widgets/input_field.dart';

class FormContainer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Form(
        child: Column(
            children: <Widget>[
              InputField(
                hint: "E-mail",
                obscure: false,
                icon: Icons.person_outline,
              ),
              InputField(
                hint: "Senha",
                obscure: true,
                icon: Icons.lock_outline,
              ),
              SizedBox(
                height: 16,
              ),
              SizedBox(
                  height: 80,
                  width: 80,
                  child: new FloatingActionButton(
                    backgroundColor: Colors.redAccent,
                    child: Text("Entrar",
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                    onPressed: () => {},
                  ))
            ]
        ),
      ),
    );
  }
}
