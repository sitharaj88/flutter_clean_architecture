import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/presentation/pages/todo.dart';
import 'package:flutter_clean_architecture/presentation/viewmodel/todo.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: ChangeNotifierProvider(
          create: (context) => TodoViewModel(),
          child: const TodoPage(),
        ));
  }
}
