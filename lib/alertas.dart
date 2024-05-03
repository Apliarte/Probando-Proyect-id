

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// aquí iría la clase hasta el key
class AlertaIosAndro extends StatelessWidget {
  const AlertaIosAndro({super.key});  @override
  Widget build(BuildContext context) {
    void displayDialogIOS(BuildContext context) {
      showCupertinoDialog(
          barrierDismissible: false,
          context: context,
          builder: (context) {
            return CupertinoAlertDialog(
              title: const Text('Titulo'),
              content: const Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Este es el contenido de la alerta si estas en un iOS'),
                  SizedBox(height: 10),
                  FlutterLogo(size: 100)
                ],
              ),
              actions: [
                TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Cancelar',
                        style: TextStyle(color: Colors.red))),
                TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Ok')),
              ],
            );
          });
    }

    void displayDialogAndroid(BuildContext context) {
      showDialog(
          barrierDismissible: false,
          context: context,
          builder: (context) {
            return AlertDialog(
              elevation: 5,
              title: const Text('Titulo'),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusDirectional.circular(10)),
              content: const Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                      'Este es el contenido de la alerta si estas en un Android'),
                  SizedBox(height: 10),
                  FlutterLogo(size: 100)
                ],
              ),
              actions: [
                TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Cancelar')),
                TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Ok')),
              ],
            );
          });
    }

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(context: context, children: [
                  const Text(
                      'loremp ipsum dolor sit amet, consectetur adipiscing elit.'),
                ]);
              },
              child: const Text('Licencias Usadas'),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
                child: ElevatedButton(
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      child: Text('Mostrar alerta',
                          style: TextStyle(fontSize: 16)),
                    ),
                    //  onPressed: () => displayDialogAndroid( context )
                    onPressed: () => Platform.isAndroid
                        ? displayDialogAndroid(context)
                        : displayDialogIOS(context))),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.close),
            onPressed: () => Navigator.pop(context)),
      ),
    );
  }
}


