import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:info_colector/data/models/captacion_model.dart';
import 'package:info_colector/presentation/theme/theme.dart';

void filtroCaptacionesMenu(
    BuildContext context, List<CaptacionModel>? captacionesModel) {
  showDialog(
    useRootNavigator: false,
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return AlertDialog(
        title: const Text('Filtrar Captaciones'),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              textCapitalization: TextCapitalization.words,
              decoration: InputDecoration(
                icon: SvgPicture.asset(
                  'assets/icons/market.svg',
                  width: 38,
                  height: 38,
                ),
                hintText: 'Mercado',
                fillColor: SigipColors.colorPrimary,
                //border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                labelText: 'Mercado',
                focusColor: SigipColors.colorPrimary,
                labelStyle: Theme.of(context).textTheme.bodyText2,
              ),
            ),
            TextField(
              textCapitalization: TextCapitalization.words,
              decoration: InputDecoration(
                icon: SvgPicture.asset(
                  'assets/icons/shopping_bag.svg',
                  width: 38,
                  height: 38,
                ),
                hintText: 'Tipología',
                fillColor: SigipColors.colorPrimary,
                //border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                labelText: 'Tipología',
                focusColor: SigipColors.colorPrimary,
                labelStyle: Theme.of(context).textTheme.bodyText2,
              ),
            ),
            TextField(
              textCapitalization: TextCapitalization.words,
              decoration: InputDecoration(
                icon: SvgPicture.asset(
                  'assets/icons/store.svg',
                  width: 38,
                  height: 38,
                ),
                hintText: 'Establecimiento',
                fillColor: SigipColors.colorPrimary,
                //border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                labelText: 'Establecimiento',
                focusColor: SigipColors.colorPrimary,
                labelStyle: Theme.of(context).textTheme.bodyText2,
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            child: Text(
              'Cancelar',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          TextButton(
            child:
                Text('Filtrar', style: Theme.of(context).textTheme.bodyText2),
            onPressed: () {},
          )
        ],
      );
    },
  );
}
