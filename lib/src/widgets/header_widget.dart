import 'package:flutter/material.dart';


class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  final tituloTextStyle = const TextStyle(
    color: Colors.white,
    fontSize: 26.0,
    fontWeight: FontWeight.bold
  );
  final subtituloTextStyle = const TextStyle(
    color: Colors.white,
    fontSize: 17.0,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      padding: const EdgeInsets.all(25),
      height: 170.0,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 41, 40, 39)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'One Piece',
                style: tituloTextStyle
              ),
              Text(
                'serie',
                style: subtituloTextStyle
              )
            ],
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(.1),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: IconButton(
                  icon: const Icon(Icons.search, color: Colors.white, size: 28.0),
                  onPressed: () {},
                ),
              ),
              const SizedBox(width: 10),
              Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(.1),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: IconButton(
                  icon: const Icon(Icons.notifications, color: Colors.white, size: 28.0),
                  onPressed: () {},
                ),
              ),
            ],
          )
        ],
      )
    );
  }
}