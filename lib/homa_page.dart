import 'package:flutter/material.dart';
import 'package:myapp/ahorcado.dart';
import 'package:myapp/alertas.dart';
import 'package:myapp/animacion.dart';
import 'package:myapp/colores.dart';
import 'package:myapp/listadewidget.dart';
import 'package:myapp/tarjeta.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text(
              'Deja pulsado el icono para que desvele la información',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            Tooltip(
              decoration: BoxDecoration(
                  border: Border.all(
                      style: BorderStyle.solid, color: Colors.black, width: 5),
                  borderRadius: BorderRadius.circular(8),
                  color: Theme.of(context).colorScheme.primary),
              height: 150,
              padding: const EdgeInsets.all(16),
              message: 'Buscar',
              child: IconButton(
                color: Theme.of(context).colorScheme.primary,
                onPressed: () {},
                icon: const Icon(Icons.search),
              ),
            ),
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AlertaIosAndro()),
                  );
                },
                label: const Text('Alertas'),
                icon: const Icon(Icons.card_travel_sharp)),
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Animacion()),
                  );
                },
                label: const Text('Animacion'),
                icon: const Icon(Icons.animation)),
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ListadeEjemplo()),
                  );
                },
                label: const Text('Lista'),
                icon: const Icon(Icons.list)),
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Tarjetas()),
                  );
                },
                label: const Text('Tarjeta'),
                icon: const Icon(Icons.card_giftcard)),
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Ahorcado()),
                  );
                },
                label: const Text('Juego'),
                icon: const Icon(Icons.gamepad)),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CambioDeColor()),
                  );
                },
                label: const Text('Cambio de color'),
                icon: const Icon(Icons.list)),
          ],
        ),
      ),
    );
  }
}
