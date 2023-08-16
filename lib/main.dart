import 'package:flutter/material.dart';
import 'Pages/login_page.dart';
import 'Pages/geo_loc_busq.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(tabs: <Tab>[
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.travel_explore),
              ),
              Tab(
                icon: Icon(Icons.map),
              ),
            ]),
            title: const Text('Servicio de Mapas'),
          ),
          body: const TabBarView(children: [
            LoginPage(),
            MyHomePage(title: 'title'),
            Text(''),
          ]),
        ),
      ),
    );
  }
}
