import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ejemplo de Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Demo página de Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Row(
      children: <Widget>[
        Text(
          'Hola Mundo',
          style: TextStyle(fontSize: 36.8, color: Colors.cyan[500]),
        ),
        Text(
          '''Estamos probando Flutter''',
          style: TextStyle(
              fontSize: 32,
              backgroundColor: Colors.deepPurple[400],
              decorationColor: Colors.blue,
              fontWeight: FontWeight.bold),
          maxLines: 1,
        ),
        Column(
          children: <Widget>[
            Text('Flutter es genial',
                style: GoogleFonts.lato(
                    textStyle: TextStyle(
                        color: Colors.blue[600],
                        fontSize: 29,
                        letterSpacing: .5,
                        fontWeight: FontWeight.w900))),
            Text('Flutter es genial',
                style: GoogleFonts.lato(
                    textStyle: TextStyle(
                        color: Colors.blue[600],
                        fontSize: 29,
                        letterSpacing: .5,
                        fontWeight: FontWeight.w900))),
          ],
        )
      ],
    )));
  }
}
