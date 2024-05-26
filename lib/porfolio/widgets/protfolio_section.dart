import 'package:flutter/material.dart';

class PortfolioSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('My Portfolio',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          PortfolioItem(
            imageUrl: 'https://via.placeholder.com/150',
            title: 'Project 1',
            description: 'Description of project 1',
            link: 'https://example.com/project1',
          ),
          // Add more PortfolioItem widgets
          ElevatedButton(
            onPressed: () {
              // Implement add new project functionality
            },
            child: Text('Add New Project'),
          ),
        ],
      ),
    );
  }
}

class PortfolioItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final String link;

  PortfolioItem({
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.link,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(imageUrl),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(description),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () {
                // Implement link functionality
              },
              child: Text('View Project'),
            ),
          ),
        ],
      ),
    );
  }
}
