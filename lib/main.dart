import 'package:flutter/material.dart';
import 'package:media_image/providers/home_provider.dart';
import 'package:media_image/screens/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => HomeProvider(),
      child: const MaterialApp(
        home: HomePage(),
      ),
    ),
  );
}