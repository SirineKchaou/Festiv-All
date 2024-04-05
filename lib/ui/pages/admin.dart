import 'package:flutter/material.dart';
import 'package:hub/ui/pages/event.dart';



class AdminDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tableau de bord Admin'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu Admin',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Utilisateurs'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/route5');// Fermez le menu
              },
            ),
            ListTile(
              title: Text('Events'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/route4');
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Contenu du tableau de bord admin'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/route4');
              },
              child: Text('Ajouter un événement'),
            ),
          ],
        ),
      ),
    );
  }
}
