// ignore_for_file: prefer_final_fields

import 'package:curso_flutter_web/class/apis/api_users.models.dart';
import 'package:curso_flutter_web/class/apis/api_users.routes.dart';
import 'package:curso_flutter_web/class/widgets/widget_buttom.dart';
import 'package:curso_flutter_web/pages/user_page.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Datos extends StatefulWidget {
  Datos({Key? key}) : super(key: key);

  @override
  State<Datos> createState() => _DatosState();
}

class _DatosState extends State<Datos> {
  final TextEditingController _userTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _lastnameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  ApiUsers _apiUsers = ApiUsers();

  RegisterUsers _user = RegisterUsers();

  LoginUsers _loginUsers = LoginUsers();

  bool obs = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'Email o número de teléfono',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20.0),
          ),
          const SizedBox(
            height: 5.0,
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), hintText: 'email@emai.com'),
            controller: _userTextController,
          ),
          const SizedBox(
            height: 5.0,
          ),
          const Text(
            'Contraseña',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20.0),
          ),
          const SizedBox(
            height: 5.0,
          ),
          TextFormField(
            obscureText: obs,
            decoration: InputDecoration(
                border: const OutlineInputBorder(),
                hintText: 'Contraseña',
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      obs == false ? obs = true : obs = false;
                    });
                  },
                  icon: Icon(obs == false
                      ? Icons.remove_red_eye_rounded
                      : Icons.remove_red_eye_outlined),
                )),
            controller: _passwordTextController,
          ),
          Remember(),
          const SizedBox(
            height: 30.0,
          ),
          _botones()
        ],
      ),
    );
  }

  Widget _botones() {
    return Column(
      children: <Widget>[
        SizedBox(
          width: double.infinity,
          height: 50.0,
          child: ElevatedButton(
            onPressed: () async {
              try {
                if (_userTextController.text.isEmpty ||
                    _passwordTextController.text.isEmpty) {
                  Alert(
                      context: context,
                      title: 'Campos vacíos!',
                      desc: 'No pueden ser campos vacíos',
                      buttons: [
                        DialogButton(
                            child: const Text(
                              'Cerrar',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            })
                      ]).show();
                  return;
                }

                final userLogin = await _apiUsers.login_users(
                    _userTextController.text, _passwordTextController.text);

                if (userLogin.user != null) {
                  setState(() {
                    _loginUsers = userLogin;
                  });

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              UserPage(user: userLogin.user)));
                }
              } catch (e) {
                print(e.toString());
              }
            },
            child: const Text(
              'Inicio de sesión',
              style: TextStyle(color: Colors.white),
            ),
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xff142047))),
          ),
        ),
        const SizedBox(
          height: 8.0,
        ),
        _register()
      ],
    );
  }

  _register() {
    return ButtonApp(
      text: 'Registrar',
      ico: const Icon(Icons.add_circle),
      color: Colors.black,
      onPressed: () {
        Alert(
            context: context,
            title: 'Registrar',
            desc: 'Ingresa los datos requeridos',
            content: SizedBox(
              child: Column(
                children: <Widget>[
                  TextFormField(
                    controller: _nameController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), hintText: 'nombre'),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  TextFormField(
                    controller: _lastnameController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'segundo nombre'),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  TextFormField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'email@emai.com'),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  TextFormField(
                    controller: _passwordController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), hintText: 'Contraseña'),
                  )
                ],
              ),
            ),
            buttons: [
              DialogButton(
                  child: const Text('Registrar'),
                  onPressed: () async {
                    final RegisterUsers user = await _apiUsers.register_user(
                        _nameController.text,
                        _lastnameController.text,
                        _emailController.text,
                        _passwordController.text);

                    setState(() {
                      _user = user;
                    });
                    Navigator.pop(context);
                  })
            ]).show();
      },
    );
  }
}

class Remember extends StatefulWidget {
  Remember({Key? key}) : super(key: key);

  @override
  State<Remember> createState() => _RememberState();
}

class _RememberState extends State<Remember> {
  bool valor = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Checkbox(
            value: valor,
            onChanged: (valor) {
              setState(() {
                valor == false ? valor = true : valor = false;
              });
            }),
        const Text('Recuerdame'),
        TextButton(
            onPressed: () {}, child: const Text('¿Olvidaste tu contraseña?'))
      ],
    );
  }
}
