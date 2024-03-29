import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:beatsapp/providers/productos_provider.dart';
import 'package:beatsapp/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          builder: (context) => ProductosProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'home',
        routes: {'home': (BuildContext context) => HomePage()},
      ),
    );
  }
}
