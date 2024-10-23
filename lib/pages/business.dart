import 'package:flutter/material.dart';

class BusinessPage extends StatelessWidget {
  final List<Map<String, String>> services = [
    {
      'title': 'High-Quality Apparel',
      'description':
          'Discover a range of stylish and comfortable clothing for all occasions.'
    },
    {
      'title': 'Lifewear Concept',
      'description':
          'Timeless and functional designs that adapt to your lifestyle.'
    },
    {
      'title': 'Seasonal Collections',
      'description':
          'Explore seasonal fashion trends with new arrivals throughout the year.'
    },
    {
      'title': 'Sustainable Fashion',
      'description':
          'Commitment to sustainability with eco-friendly materials and practices.'
    },
    {
      'title': 'Online Shopping',
      'description':
          'Shop conveniently from home with easy navigation and fast delivery.'
    },
    {
      'title': 'In-Store Experience',
      'description':
          'Visit our stores for personalized styling advice and exclusive collections.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Uniqlo Business'),
      ),
      body: services.isEmpty
          ? Center(
              child: Text(
                'No services available',
                style: TextStyle(fontSize: 24),
              ),
            )
          : ListView.builder(
              itemCount: services.length,
              itemBuilder: (context, index) {
                final service = services[index];
                return Card(
                  margin: EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text(
                      service['title']!,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(service['description']!),
                    trailing: Icon(Icons.arrow_forward),
                    onTap: () {
                      // Handle service selection
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            content: Text('Selected: ${service['title']}')),
                      );
                    },
                  ),
                );
              },
            ),
    );
  }
}
