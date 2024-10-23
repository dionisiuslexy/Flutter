import 'package:flutter/material.dart';

class ShoppingCartPage extends StatelessWidget {
  final List<Map<String, dynamic>> cartItems = [
    {'name': 'Men Ultra Light Down Jacket', 'price': 99.90},
    {'name': 'Women Airism T-Shirt', 'price': 19.90},
    {'name': 'Kids Printed Sweatshirt', 'price': 29.90},
  ];

  @override
  Widget build(BuildContext context) {
    double total = cartItems.fold(0, (sum, item) => sum + item['price']);

    return Scaffold(
      appBar: AppBar(
        title: Text('Uniqlo Shopping Cart'),
      ),
      body: cartItems.isEmpty
          ? Center(
              child: Text(
                'Your cart is empty',
                style: TextStyle(fontSize: 24),
              ),
            )
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: cartItems.length,
                    itemBuilder: (context, index) {
                      final item = cartItems[index];
                      return ListTile(
                        title: Text(item['name']),
                        trailing: Text('\$${item['price'].toStringAsFixed(2)}'),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text(
                        'Total: \$${total.toStringAsFixed(2)}',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {
                          // Handle checkout action
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                content: Text('Proceeding to checkout...')),
                          );
                        },
                        child: Text('Checkout'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
