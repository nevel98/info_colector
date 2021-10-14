import 'package:flutter/material.dart';

import 'package:info_colector/presentation/theme/theme.dart';
import 'package:info_colector/presentation/widgets/navigation_drawer_widget.dart';
import 'package:info_colector/presentation/widgets/pop_menu.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [PopMenu()],
        title: Text('Inicio', style: Theme.of(context).textTheme.headline6),
        iconTheme: const IconThemeData(color: SigipColors.colorPrimary),
      ),
      drawer: crearMenu(context),
      body: const Center(child: Text('Home Page')),
    )
        //Añadir cuerpo acá
        ;
  }
}
