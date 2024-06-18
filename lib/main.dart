import 'package:examen/screens/peajes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(VehicleMenuApp());
}

class VehicleMenuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vehicle Menu App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              child: Text(
                'Menú',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              leading: Icon(Icons.car_rental),
              title: Text('Peajes'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Peajes()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.motorcycle),
              title: Text('Opción 2'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Option2Screen()),
                );
              },
            ),
            // Agrega más ListTile según sea necesario para más opciones
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(
                'https://img.lalr.co/cms/2023/05/12100603/Carro-5.jpg'),
            const SizedBox(height: 20),
            const Text(
              'Bienvenido a la aplicación de vehículos',
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class Option1Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Opción 1'),
      ),
      body: const Center(
        child: Text(
          'Esta es la pantalla de la Opción 1',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class Option2Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Opción 2'),
      ),
      body: const Center(
        child: Text(
          'Esta es la pantalla de la Opción 2',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
