import 'package:flutter/material.dart';

class BlogSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Blog', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          BlogPostItem(
            title: 'Blog Post 1',
            excerpt: 'This is an excerpt of the first blog post.',
          ),
          // Add more BlogPostItem widgets
          ElevatedButton(
            onPressed: () {
              // Implement create new post functionality
            },
            child: Text('Create New Post'),
          ),
        ],
      ),
    );
  }
}

class BlogPostItem extends StatelessWidget {
  final String title;
  final String excerpt;

  BlogPostItem({
    required this.title,
    required this.excerpt,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        title: Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        subtitle: Text(excerpt),
        onTap: () {
          // Implement view full post functionality
        },
      ),
    );
  }
}
