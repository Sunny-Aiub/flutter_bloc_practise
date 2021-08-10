import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/ui_screens/movie_screen.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Shortcuts(
      shortcuts: <LogicalKeySet, Intent>{
        LogicalKeySet(LogicalKeyboardKey.select): ActivateIntent(),
      },
      child: MaterialApp(
        title: 'Movie List',
        debugShowCheckedModeBanner: false,
        onGenerateRoute: RouteConfiguration.onGenerateRoute,
        initialRoute: MoviesScreen.route,
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
       ),
    );
  }
}
class RouteConfiguration {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {

      case '/movies':
        return MaterialPageRoute<void>(
          builder: (context) => MoviesScreen(),
          settings: settings,
        );

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
              body: Center(child: Text('No route defined for ${settings.name}')),
            ));
    }
  }
}

