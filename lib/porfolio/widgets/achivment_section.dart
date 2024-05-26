import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'dart:io';

class AchievementsSection extends StatefulWidget {
  @override
  _AchievementsSectionState createState() => _AchievementsSectionState();
}

class _AchievementsSectionState extends State<AchievementsSection> {
  List<File> _certificates = [];

  Future<void> _pickCertificate() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom, allowedExtensions: ['pdf', 'jpg', 'png']);

    if (result != null) {
      setState(() {
        _certificates.add(File(result.files.single.path!));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Achievements & Certifications',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          ListView.builder(
            shrinkWrap: true,
            itemCount: _certificates.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Icon(Icons.file_present),
                title: Text('Certificate ${index + 1}'),
                subtitle: Text(_certificates[index].path.split('/').last),
                onTap: () {
                  // Implement view certificate functionality
                },
              );
            },
          ),
          ElevatedButton(
            onPressed: _pickCertificate,
            child: Text('Upload New Certificate'),
          ),
        ],
      ),
    );
  }
}
