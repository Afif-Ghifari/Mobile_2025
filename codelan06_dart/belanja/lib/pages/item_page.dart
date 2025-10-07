import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final item = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
      ),
      body: Column(
        children: [
          Hero(
            tag: 'itemImage_${item.name}', // sama dengan HomePage
            child: Image.network(
              item.photo,
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 16),
          Text(
            item.name,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text("Harga: Rp ${item.price}"),
          SizedBox(height: 8),
          Text("Stok: ${item.stock}"),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star, color: Colors.amber),
              SizedBox(width: 4),
              Text(item.rating.toString()),
            ],
          ),
        ],
      ),
    );
  }
}
