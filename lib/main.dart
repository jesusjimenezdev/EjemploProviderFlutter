import 'package:ejemplo_provider/home_page.dart';
import 'package:ejemplo_provider/providers/cajas_texto_provider.dart';
import 'package:ejemplo_provider/providers/heroes_info.dart';
import 'package:ejemplo_provider/providers/villanos_info.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    /* return ChangeNotifierProvider( // Usamos esta forma con actualizacion de simples de widgets
        create: (context) => HeroesInfo(),
        child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'home',
        routes: {
          'home': (BuildContext context) => HomePage()
        },
      ),
    ); */

    // usamos esta forma cuando hay que actualizar widgets de varios sitios. Se recomienda este frente al ChangeNotifierProvider
    // Aqui registramos los providers
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => HeroesInfo(),
          ),
          ChangeNotifierProvider(
            create: (context) => VillanosInfo(),
          ),
          ChangeNotifierProvider(
            create: (context) => CajasTextoProvider(),
          )
        ],
        child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'home',
        routes: {
          'home': (BuildContext context) => HomePage()
        },
      ),
    );
  }
}