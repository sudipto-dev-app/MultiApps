import 'package:flutter/material.dart';
import 'home_screen.dart';

void main(){
runApp(const LabFinalApp());
}

class LabFinalApp extends StatelessWidget {
  const LabFinalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
