import 'package:flutter/material.dart';
import 'views/homeScreen.dart';

void main() => runApp(MaterialApp(initialRoute: '/', routes: {
      '/': (context) => HomeScreen(),
    }));
