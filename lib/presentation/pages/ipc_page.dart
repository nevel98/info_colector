import 'package:flutter/material.dart';
import 'package:info_colector/presentation/theme/theme.dart';
import 'package:info_colector/presentation/widgets/fondo_container.dart';
import 'package:info_colector/presentation/widgets/lista_ipc.dart';
import 'package:info_colector/presentation/widgets/navigation_drawer_widget.dart';
import 'package:info_colector/presentation/widgets/pop_menu.dart';

class IPCPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: crearMenu(context),
      appBar: AppBar(
        actions: const [PopMenu()],
        title: Text('IPC', style: Theme.of(context).textTheme.headline6),
        iconTheme: const IconThemeData(color: SigipColors.colorPrimary),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          FondoContainer(),
          Padding(
            padding: const EdgeInsets.only(left: 5.0, right: 5.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ListaIPC(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
