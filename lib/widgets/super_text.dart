import 'package:ejemplo_provider/providers/heroes_info.dart';
import 'package:ejemplo_provider/providers/villanos_info.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SuperText extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    
    final heroesInfo = Provider.of<HeroesInfo>(context);
    final villanosInfo = Provider.of<VillanosInfo>(context);
    
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(heroesInfo.heroe, style: TextStyle(fontSize: 30, color: heroesInfo.colorBase)),
        Text(villanosInfo.villano, style: TextStyle(fontSize: 30)),
      ],
    );
  }
}