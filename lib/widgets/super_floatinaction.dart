import 'package:ejemplo_provider/providers/heroes_info.dart';
import 'package:ejemplo_provider/providers/villanos_info.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SuperFloatinAction extends StatelessWidget {
  const SuperFloatinAction({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final heroesInfo = Provider.of<HeroesInfo>(context);
    final villanosInfo = Provider.of<VillanosInfo>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton(
          child: Icon(Icons.ac_unit),
          backgroundColor: Colors.red,
          onPressed: (){
            heroesInfo.heroe = 'Iron Man';
            villanosInfo.villano = 'Red Skull';
          },
        ),
        SizedBox(height: 16,),
        FloatingActionButton(
          child: Icon(Icons.access_alarm),
          backgroundColor: Colors.blue,
          onPressed: (){
            heroesInfo.heroe = 'Hulk';
            villanosInfo.villano = 'Gormity';
          },
        )
      ],
    );
  }
}