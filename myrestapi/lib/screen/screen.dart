
import 'package:flutter/material.dart';
import 'package:myrestapi/models/moels.dart';
import 'package:myrestapi/service/servive.dart';
class Homepage extends StatefulWidget {
  const Homepage({ Key? key }) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  ProductApi productApi = ProductApi();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('Shop App')),),
      body: FutureBuilder(
        future: productApi.getproduit(),
        builder: (BuildContext context, AsyncSnapshot<List<Products>> snapshot){
          if (snapshot.hasData) {
             List<Products>? produit = snapshot.data;
             return ListView.builder(
              itemCount: produit!.length,
              itemBuilder: (context,index)=>ListTile(
              title: Text(produit[index].price.toString()),
              )
              );
          }      
         return const Center(
            child: CircularProgressIndicator(),
          );
        }
        )
    );
  }
}