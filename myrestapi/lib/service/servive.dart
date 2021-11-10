import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:myrestapi/models/moels.dart';
class ProductApi {
  var url = Uri.parse('https://fakestoreapi.com/products');
  Future<List<Products>> getproduit()async{
    var response = await http.get(url);
    if (response.statusCode == 200) {
      List<dynamic> body = jsonDecode(response.body);
      return body.map((produit) => Products.fromJson(produit)).toList();
    }
    else{
      throw Exception('faillet to produit');
    }
  }
}