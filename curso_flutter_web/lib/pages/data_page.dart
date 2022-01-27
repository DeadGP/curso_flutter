import 'package:flutter/material.dart';

class Datos extends StatefulWidget {
  Datos({Key? key}) : super(key: key);

  @override
  State<Datos> createState() => _DatosState();
}

class _DatosState extends State<Datos> {
  final TextEditingController _userTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();

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
            onPressed: () {},
            child: const Text(
              'Inicio de sesión',
              style: TextStyle(color: Colors.white),
            ),
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xff142047))),
          ),
        )
      ],
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
