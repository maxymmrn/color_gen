import 'package:flutter/material.dart';

import 'color_gen_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Color Gen',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const ColorGenPage(),
      );
}
