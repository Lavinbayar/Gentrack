import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    title: 'Gentrack',
    debugShowCheckedModeBanner: false,
    theme:ThemeData(
      colorScheme:ColorScheme.fromSeed(
        seedColor:Colors.teal,
         ),
    ),
    home:Scaffold(
      appBar: AppBar(
        title: const Text('Gentrack'),
        
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
body: const Center(
  child:Text('welcome to gentrack',
  style: TextStyle(fontSize:29),

 ),
        ),
      ),
    );
  }
}