import 'package:cloud_firestore/cloud_firestore.dart';

class ProductData{

  String category;
  String id;
  String title;
  String description;
  double price;
  List images;
  List sizes;


  ProductData.fromDocument(DocumentSnapshot snapshot){
    id = snapshot.documentID;
    title = snapshot.data["title"];
    description = snapshot.data["description"];
    images = snapshot.data["images"];
    price = snapshot.data["price"] + 0.0;
    sizes = snapshot.data["sizes"];
  }
}