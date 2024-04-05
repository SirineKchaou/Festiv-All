import 'package:hub/app/configs/theme.dart';
import 'package:hub/app/resources/constant/named_routes.dart';
import 'package:hub/ui/pages/event.dart';

import 'package:hub/ui/pages/home_page.dart';
import 'package:hub/ui/pages/profile.dart';
import 'package:hub/ui/pages/profileAdmin.dart';
import 'package:hub/ui/pages/ticket_page.dart';
import 'package:flutter/material.dart';
import 'package:hub/ui/pages/admin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/route0': (context) => HomePage(),
        '/route1': (context) => TicketsPage(),
        '/route2': (context) => Profile(),
        '/route3': (context) => AdminDashboard(),
        '/route4': (context) => AddEventScreen(),
        '/route5': (context) => ProfileAdmin()
      },
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: Themes.lightTheme,
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case NamedRoutes.homeScreen:
            return MaterialPageRoute(builder: (context) => const HomePage());
          case NamedRoutes.ticketScreen:
            return MaterialPageRoute(
              builder: (context) => TicketsPage(),
              settings: settings,
            );
          default:
            return MaterialPageRoute(builder: (context) => const HomePage());
        }
      },
    );
  }
}
