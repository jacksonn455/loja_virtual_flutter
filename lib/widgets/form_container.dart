import 'package:flutter/material.dart';
import 'package:loja_virtual/widgets/input_field.dart';

class FormContainer extends StatelessWidget {
  final _emailController = TextEditingController();
  final _passController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Form(
        child: Column(
          children: <Widget>[
            TextFormField(
              style: TextStyle(
                color: Colors.white,
              ),
              controller: _emailController,
              decoration: InputDecoration(
                hintText: "E-mail",
                hintStyle: TextStyle(fontSize: 20.0, color: Colors.white),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white, width: 0.5),
                  ),
                  border: const OutlineInputBorder(),
                prefixIcon: const Icon(
                  Icons.lock_outline,
                  color: Colors.white,
                ),
              ),
              keyboardType: TextInputType.emailAddress,
              validator: (text) {
                if (text.isEmpty || !text.contains("@"))
                  return "E-mail inválido!";
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            TextFormField(
              style: TextStyle(
                color: Colors.white,
              ),
              controller: _passController,
              decoration: InputDecoration(
              hintText: "Senha",
              hintStyle: TextStyle(fontSize: 20.0, color: Colors.white),
                enabledBorder: const OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white, width: 0.5),
                ),
                border: const OutlineInputBorder(),
              prefixIcon: const Icon(
                Icons.lock_outline,
                color: Colors.white,
              ),
            ),
              obscureText: true,
              validator: (text) {
                if (text.isEmpty || text.length < 6) return "Senha inválida!";
              },
            ),
          ],
        ),
      ),
    );
  }
}
