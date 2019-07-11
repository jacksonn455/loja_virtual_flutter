import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {

  final String orderId;

  OrderScreen(this.orderId);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Pedido Realizado"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.check,
              color: Colors.purple,
              size: 80.0,
            ),
            Text("Pedido realizado com sucesso!",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            Text("Código do pedido: $orderId", style: TextStyle(fontSize: 16.0),
            )
          ],
        ),
      ),
    );
  }
}
