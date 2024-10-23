import 'package:flutter/material.dart';
import 'package:coba_flutter/utilities/fun_collection.dart';

class Product extends StatelessWidget {
  get length => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product'),
      ),
      body: ProductList(),
    );
  }
}

class ProductList extends StatelessWidget {
  final List<Map<String, dynamic>> Products = [
    {
      'name': 'Uniqlo Men\'s T-Shirt',
      'price': 'Rp 149.000',
      'sold': '25 terjual',
      'image':
          'https://down-id.img.susercontent.com/file/0d916cee044230318b1e80add476b758'
    },
    {
      'name': 'Uniqlo Women\'s Hoodie',
      'price': 'Rp 299.000',
      'sold': '18 terjual',
      'image':
          'https://down-id.img.susercontent.com/file/0d916cee044230318b1e80add476b758'
    },
    {
      'name': 'Uniqlo Women\'s Hoodie',
      'price': 'Rp 299.000',
      'sold': '18 terjual',
      'image':
          'https://down-id.img.susercontent.com/file/0d916cee044230318b1e80add476b758'
    },
  ];

  ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Produk'),
      ),
      body: GridBuilderDuaKolom(items: Products),
    );
  }
}
