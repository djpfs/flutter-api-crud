import 'package:flutter/material.dart';
import 'package:jukebox_flutter/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    title: 'Jukebox Users',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    initialRoute: SignInViewRoute,
    onGenerateRoute: generateRoute,
    debugShowCheckedModeBanner: false,
  ));
}
