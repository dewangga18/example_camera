import 'package:flutter/material.dart';
import 'package:media_image/data/api/api_service.dart';
import 'package:media_image/providers/home_provider.dart';
import 'package:media_image/providers/upload_provider.dart';
import 'package:media_image/screens/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
     MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => UploadProvider(
            ApiService(),
          ),
        ),
      ],
      child: const MaterialApp(
        home: HomePage(),
      ),
    ),
  );
}