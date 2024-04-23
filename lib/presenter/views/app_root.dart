import 'package:flutter/material.dart';
import 'package:flutter_application_2/presenter/views/product_list.dart';

class AppRoot extends StatefulWidget {
  const AppRoot({super.key});

  @override
  State<AppRoot> createState() => _AppRootState();
}

class _AppRootState extends State<AppRoot> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            appBarTheme: const AppBarTheme(color: Colors.blue),
            scaffoldBackgroundColor: Colors.white),
        home: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Shop",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          body: const ProductList(),
        ));
  }
}
