import 'package:flutter/material.dart';
import 'package:pyresto/pages/loading.dart';
import 'package:pyresto/pages/home.dart';
import 'package:pyresto/pages/addition_tables.dart';
import 'package:pyresto/pages/multiplication_tables.dart';
import 'package:pyresto/pages/division_tables.dart';

void main() {
  runApp(MaterialApp(
    title: 'Named Routes',
    // Start the app with the "/" named route. In this case, the app starts
    // on the FirstScreen widget.
    initialRoute: '/loading',
    routes: {
      '/': (context) => const Home(),
      '/loading': (context) => const Loading(),
      '/addition_tables': (context) => const AdditionTables(),
      '/multiplication_tables': (context) => const MultiplicationTables(),
      '/division_tables': (context) => const DivisionTables(),
    },
  ));
}
