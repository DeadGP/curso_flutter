import 'package:flutter/material.dart';

import 'data_page.dart';

class Contenido extends StatefulWidget {
  Contenido({Key? key}) : super(key: key);

  @override
  State<Contenido> createState() => _ContenidoState();
}

class _ContenidoState extends State<Contenido> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 500.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Login',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0),
            ),
            const SizedBox(
              height: 5.0,
            ),
            const Text(
              'Bienvenido a tu cuenta',
              style: TextStyle(
                  color: Colors.white, fontSize: 10.0, letterSpacing: 1.5),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Datos()
          ],
        ),
      ),
    );
  }
}
