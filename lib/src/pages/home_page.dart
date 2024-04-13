import 'package:flutter/material.dart';
import 'package:one_piece/src/widgets/header_widget.dart';
import 'package:one_piece/src/widgets/lista_widget.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 16, 16, 16),
      body: const Column(
        children:  <Widget>[
          HeaderWidget(),
          ListaPersonajes(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF21E295),
        onPressed: () {},
        child: const Icon(Icons.add),
        ),
    );
  }
}
