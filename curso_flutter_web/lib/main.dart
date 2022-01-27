// ignore_for_file: avoid_print

import 'package:curso_flutter_web/pages/user_page.dart';
import 'package:curso_flutter_web/pages/login_page.dart';
import 'package:flutter/material.dart';

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
      initialRoute: 'upage',
      routes: {
        'upage': (BuildContext context) => UserPage(),
        'login': (BuildContext cointext) => Login()
      },
      // home: const MyHomePage(title: 'Demo página de Flutter'),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   dynamic signo = '?', resultado = 0;
//   TextEditingController num1 = TextEditingController();
//   TextEditingController num2 = TextEditingController();
//   void suma({double num1 = 0, double num2 = 0, dynamic opcion}) {
//     switch (opcion) {
//       case 'suma':
//         resultado = num1 + num2;
//         setState(() {
//           signo = '+';
//           resultado = resultado;
//         });
//         break;
//       case 'resta':
//         resultado = num1 - num2;
//         setState(() {
//           signo = '-';
//           resultado = resultado;
//         });
//         break;
//       case 'division':
//         resultado = num1 / num2;
//         setState(() {
//           signo = '/';
//           resultado = resultado;
//         });
//         break;
//       case 'mult':
//         resultado = num1 * num2;
//         setState(() {
//           signo = '*';
//           resultado = resultado;
//         });
//         break;
//       default:
//         print('Error la opción no existe.');
//         break;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Center(
//             child: Column(
//       children: <Widget>[
//         Text(
//           '''Elige la operación: 
//           ''',
//           style: GoogleFonts.abel(fontSize: 38.5),
//         ),

//         SizedBox(
//           child: Row(
//             children: [
//               SizedBox(
//                 child: TextField(
//                   textInputAction: TextInputAction.done,
//                   style: const TextStyle(),
//                   controller: num1,
//                 ),
//                 width: 50.0,
//                 height: 20.0,
//               ),
//               Text('  $signo'),
//               SizedBox(
//                 child: TextField(
//                   textInputAction: TextInputAction.done,
//                   style: TextStyle(),
//                   controller: num2,
//                 ),
//                 width: 50.0,
//                 height: 20.0,
//               ),
//               Text(
//                 '''      =
//               ''',
//                 style: GoogleFonts.adamina(fontSize: 30),
//               ),
//               SizedBox(
//                 child: TextField(
//                   textInputAction: TextInputAction.done,
//                   style: const TextStyle(),
//                   decoration: InputDecoration(label: Text('$resultado')),
//                 ),
//                 width: 50.0,
//                 height: 20.0,
//               ),
//             ],
//           ),
//           width: 300,
//         ),
//         SizedBox(
//           child: Row(
//             children: <Widget>[
//               IconButton(
//                   onPressed: () {
//                     try {
//                       dynamic dato1, dato2;
//                       dato1 = double.tryParse(num1.text) ?? 0;
//                       dato2 = double.tryParse(num2.text) ?? 0;
//                       suma(num1: dato1, num2: dato2, opcion: 'suma');
//                       // print(Coche(num1.text, num2.text));
//                     } catch (e) {
//                       print(num1.text);
//                       print(num2.text);
//                       print(e.toString());
//                     }
//                   },
//                   icon: const Icon(Icons.add)),
//               IconButton(
//                   onPressed: () {
//                     try {
//                       dynamic dato1, dato2;
//                       dato1 = double.tryParse(num1.text) ?? 0;
//                       dato2 = double.tryParse(num2.text) ?? 0;
//                       suma(num1: dato1, num2: dato2, opcion: 'resta');
//                     } catch (e) {
//                       print(num1.text);
//                       print(num2.text);
//                       print(e.toString());
//                     }
//                   },
//                   icon: const Icon(Icons.subscript_rounded)),
//               IconButton(
//                   onPressed: () {
//                     try {
//                       dynamic dato1, dato2;
//                       dato1 = double.tryParse(num1.text);
//                       dato2 = double.tryParse(num2.text);
//                       suma(num1: dato1, num2: dato2, opcion: 'division');
//                     } catch (e) {
//                       print(num1.text);
//                       print(num2.text);
//                       print(e.toString());
//                     }
//                   },
//                   icon: const Icon(Icons.subscript)),
//               IconButton(
//                   onPressed: () {
//                     try {
//                       dynamic dato1, dato2;
//                       dato1 = double.tryParse(num1.text);
//                       dato2 = double.tryParse(num2.text);
//                       suma(num1: dato1, num2: dato2, opcion: 'mult');
//                     } catch (e) {
//                       print(num1.text);
//                       print(num2.text);
//                       print(e.toString());
//                     }
//                   },
//                   icon: const Icon(Icons.drive_eta)),
//             ],
//           ),
//           width: 200,
//         )
//         // Text(
//         //   'Hola Mundo',
//         //   style: TextStyle(fontSize: 36.8, color: Colors.cyan[500]),
//         // ),
//         // Text(
//         //   '''Estamos probando Flutter''',
//         //   style: TextStyle(
//         //       fontSize: 32,
//         //       backgroundColor: Colors.deepPurple[400],
//         //       decorationColor: Colors.blue,
//         //       fontWeight: FontWeight.bold),
//         //   maxLines: 1,
//         // ),
//         // Column(
//         //   children: <Widget>[
//         //     Text('Flutter es genial',
//         //         style: GoogleFonts.lato(
//         //             textStyle: TextStyle(
//         //                 color: Colors.blue[600],
//         //                 fontSize: 29,
//         //                 letterSpacing: .5,
//         //                 fontWeight: FontWeight.w900))),
//         //     Text('Flutter es genial',
//         //         style: GoogleFonts.lato(
//         //             textStyle: TextStyle(
//         //                 color: Colors.blue[600],
//         //                 fontSize: 29,
//         //                 letterSpacing: .5,
//         //                 fontWeight: FontWeight.w900))),
//         //   ],
//         // )
//       ],
//     )));
//   }
// }
