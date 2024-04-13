import 'package:flutter/material.dart';
import 'package:one_piece/src/animations/fede_animation.dart';
import 'package:one_piece/src/widgets/blur_container.dart';
import 'package:one_piece/src/widgets/infotitle_widget.dart';


class DatailPage extends StatefulWidget {
  const DatailPage(
      {super.key,
      required this.color,
      required this.image,
      required this.nombre});

  final int color;
  final String image;
  final String nombre;

  @override
  State<DatailPage> createState() => _DatailPageState();
}

class _DatailPageState extends State<DatailPage> {
  double withdpantalla = 0.0;

  @override
  Widget build(BuildContext context) {
    withdpantalla = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 3.0),
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color(widget.color),
            Colors.black,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: SizedBox(
                    height: withdpantalla * 0.6,
                    child: Hero(tag: widget.color,child: Image.asset(widget.image)),
                  ),
                ),
                Positioned(
                    bottom: 5.0,
                    left: 20.0,
                    child: FedeAnimation(
                      intervelEnd: 0.7,
                      child: BlurContainer(
                        child: Container(
                          width: 160,
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white.withOpacity(0.1),
                          ),
                          child: Text(
                            widget.nombre,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ))
              ],
            ),
            const SizedBox(height: 30),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: FedeAnimation(
                intervelStart: 0.2,
                child: Text(
                  '${widget.nombre} #personaje',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5.0),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: FedeAnimation(
                intervelStart: 0.25,
                child: Text(
                  'One Piece',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50.0),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: FedeAnimation(
                intervelStart: 0.3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InfoTitle(title: "Eiichiro Oda", subtitle: 'Creador'),
                    InfoTitle(title: "Japón", subtitle: 'País'),
                  ],
                ),
              )
            ),
            const Spacer(),
            FedeAnimation(
              intervelStart: 0.45,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: double.infinity,
                  height: 50.0,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(widget.color),
                  ),
                  child: const Text(
                    'Volver',
                    style: TextStyle(
                      color: Colors.white60,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
