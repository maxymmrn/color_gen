import 'package:color_gen/presentation/color_gen_page.dart';
import 'package:flutter/material.dart';

/// Color Gen Application class
class App extends StatelessWidget {

  /// Constructor
  const App({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Color Gen',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const ColorGenPage(),
      );
}
