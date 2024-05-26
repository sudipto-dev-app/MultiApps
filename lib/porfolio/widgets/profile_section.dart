import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ProfileSection extends StatefulWidget {
  @override
  _ProfileSectionState createState() => _ProfileSectionState();
}

class _ProfileSectionState extends State<ProfileSection> {
  File? _image;
  final picker = ImagePicker();

  Future<void> _pickImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          GestureDetector(
            onTap: _pickImage,
            child: CircleAvatar(
              radius: 50,
              backgroundImage: _image != null ? FileImage(_image!) : null,
              child: _image == null ? Icon(Icons.add_a_photo, size: 50) : null,
            ),
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Name'),
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Bio'),
            maxLines: 4,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Email'),
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Phone'),
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Location'),
          ),
          SizedBox(height: 20),
          Text('Social Media Links',
              style: TextStyle(fontWeight: FontWeight.bold)),
          TextField(
            decoration: InputDecoration(labelText: 'LinkedIn'),
          ),
          TextField(
            decoration: InputDecoration(labelText: 'GitHub'),
          ),
          // Add more fields for other social media links
        ],
      ),
    );
  }
}
