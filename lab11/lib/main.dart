  import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'corner_radius_provider.dart';
import 'container_section.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CornerRadiusProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo Home Page'),
          backgroundColor: Colors.purple[200],
        ),
        body: const Center(
          child: ContainerSection(),
        ),
      ),
    );
  }
}
