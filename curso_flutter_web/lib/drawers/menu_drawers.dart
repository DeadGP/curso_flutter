import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            child: Text(
              'Menú',
              style: TextStyle(color: Colors.white, fontSize: 25.0),
            ),
            decoration: BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                    image: NetworkImage('url'), fit: BoxFit.cover)),
          ),
          ListTile(
            leading: const Icon(Icons.input),
            title: const Text('Bienvenido'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.settings_applications),
            title: const Text('Configuración'),
            onTap: () => {Navigator.of(context).pop()},
          )
        ],
      ),
    );
  }
}
