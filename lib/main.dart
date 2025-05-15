import 'package:flutter/material.dart';
import 'package:flutter_data_table/flutter_data_table.dart';
import 'package:flutter_data_table/models/custom_table_dropdown_model.dart';
import 'flutter_html_table.dart';
import 'flutter_html_video.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Data Table',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const FlutterHtmlVideo(),
    );
  }
}

