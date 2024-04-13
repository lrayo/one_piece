import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:one_piece/src/pages/datail_page.dart';


class ListaPersonajes extends StatefulWidget {
  const ListaPersonajes({super.key});

  @override
  State<ListaPersonajes> createState() => _ListaPersonajesState();
}

class _ListaPersonajesState extends State<ListaPersonajes> {
  double withdpantall = 0.0;
  final tituloStyleText = const TextStyle(
      fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    withdpantall = MediaQuery.of(context).size.width - 50;
    return Expanded(
      child: ListView(
        padding: const EdgeInsets.all(25.0),
        children: [
          Text('Portada', style: tituloStyleText),
          const SizedBox(height: 15),
          Row(
            children: [
              bloquesPortada("p1.jpg", "titulo:", "2018"),
              SizedBox(width: withdpantall * 0.03),
              bloquesPortada("p2.jpg", "titulo:", "2022"),
              SizedBox(width: withdpantall * 0.03),
              bloquesPortada("p3.jpg", "titulo:", "2024"),
            ],
          ),
          const Divider(
            thickness: 1,
            color: Colors.white,
          ),
          const SizedBox(height: 20),
          bloquePersonaje("Brook", 0xFF4913C4, "o1"),
          bloquePersonaje("Luffy", 0xFFF82A2D, "o2"),
          bloquePersonaje("Portgas D. Ace", 0xFFFFCB28, "o3"),
          bloquePersonaje("Boa Hancock", 0xFFFE4649, "o4"),
          bloquePersonaje("Boa Hancock", 0xFFFE4649, "o5"),
          bloquePersonaje("Roronoa Zoro", 0xFF21E295, "o6"),
        ],
      ),
    );
  }

  Widget bloquePersonaje(String nombre, int color, String image) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(CupertinoPageRoute(
            builder: (BuildContext context) => DatailPage(
                color: color, image: "assets/$image.png", nombre: nombre)));
      },
      child: Container(
          margin: const EdgeInsets.only(bottom: 20),
          padding: const EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
              color: const Color.fromARGB(66, 117, 116, 116),
              borderRadius: BorderRadius.circular(18)),
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(0, 5),
                            color: Color(color),
                            blurRadius: 10,
                            spreadRadius: 1,
                            blurStyle: BlurStyle.normal)
                      ],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.all(8),
                    child: Hero(tag: color,child: Image.asset("assets/$image.png")),
                  ),
                  const SizedBox(width: 12),
                  Text(nombre,
                      style:
                          const TextStyle(color: Colors.white, fontSize: 16)),
                ],
              ),
              IconButton(
                  onPressed: () {},
                  icon:
                      const Icon(Icons.more_vert_rounded, color: Colors.white))
            ],
          )),
    );
  }

  Column bloquesPortada(String image, String titulo, String subtitulo) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Image.asset(
            "assets/$image",
            width: withdpantall * 0.31,
            height: 110,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 15),
        RichText(
            text: TextSpan(
                text: titulo,
                style: const TextStyle(color: Colors.white70, fontSize: 14),
                children: [
              TextSpan(
                  text: "\n$subtitulo",
                  style: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w300,
                      fontSize: 12))
            ]))
      ],
    );
  }
}
