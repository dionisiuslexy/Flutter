import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  final List<Map<String, String>> transactionHistory = [
    {
      'title': 'Pembelian Uniqlo Men\'s T-Shirt',
      'date': '22 Oktober 2024',
      'amount': 'Rp 149.000'
    },
    {
      'title': 'Pembelian Uniqlo Women\'s Hoodie',
      'date': '20 Oktober 2024',
      'amount': 'Rp 299.000'
    },
    {
      'title': 'Pembelian Uniqlo Men\'s Jeans',
      'date': '18 Oktober 2024',
      'amount': 'Rp 499.000'
    },
    {
      'title': 'Pembelian Uniqlo Women\'s Skirt',
      'date': '15 Oktober 2024',
      'amount': 'Rp 249.000'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('History'),
      ),
      body: ListView.builder(
        itemCount: transactionHistory.length,
        itemBuilder: (context, index) {
          final transaction = transactionHistory[index];
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
              title: Text(
                transaction['title']!,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(transaction['date']!),
              trailing: Text(
                transaction['amount']!,
                style:
                    TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
              ),
            ),
          );
        },
      ),
    );
  }
}
