import 'dart:math';

import 'package:flutter/material.dart';
import 'package:myapp/lista_ahorcado.dart';

// Asume que tu lógica del juego está aquí

class Ahorcado extends StatefulWidget {
  const Ahorcado({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AhorcadoState createState() => _AhorcadoState();
}

class _AhorcadoState extends State<Ahorcado> {
  final TextEditingController _controller = TextEditingController();

  String palabraActual = '';
  List<String> letrasElegidas = [];
  List<String> adivinaPalabra = [];
  int intentos = 0;

  @override
  void initState() {
    super.initState();
    palabraActual = palabraOculta();
    adivinaPalabra = List.filled(palabraActual.length, '_');
  }

  String palabraOculta() {
    final random = Random();
    return listadoPalabras[random.nextInt(listadoPalabras.length)];
  }

  void intentarLetra(String letra) {
    if (letra.length == 1 && !letrasElegidas.contains(letra)) {
      setState(() {
        letrasElegidas.add(letra);
        actualizarAdivinanza(letra);
        letra = '';
      });
    }
  }

  void actualizarAdivinanza(String letra) {
    for (int i = 0; i < palabraActual.length; i++) {
      if (palabraActual[i] == letra) {
        adivinaPalabra[i] = letra;
      }
    }
    intentos++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ahorcado'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(80.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 80),
                Text('Palabra: ${adivinaPalabra.join(' ')}'),
                TextField(
                  onChanged: (value) {
                    if (intentos >= 10) {
                    } else {
                      if (value.isNotEmpty) {
                        intentarLetra(value.trim());
                        _controller.clear();
                        FocusScope.of(context).unfocus();
                      }
                    }
                  },
                  decoration:
                      const InputDecoration(hintText: 'Escribe una letra'),
                  onSubmitted: (value) => intentarLetra(value.trim()),
                  controller: _controller,
                ),
                Text('Letras usadas: ${letrasElegidas.join(', ')}'),
                Text('Intentos restantes: ${10 - intentos}'),
                Visibility(
                  visible: (intentos >= 10),
                  child: Column(
                    children: [
                      const Text('S.of(context).hasPerdido,'),
                      Text(
                        palabraActual,
                        style: const TextStyle(fontSize: 60),
                      ),
                    ],
                  ),
                ),
                Visibility(
                  visible: (intentos >= 10 || !adivinaPalabra.contains('_')),
                  child: Column(
                    children: [
                      ElevatedButton(
                        onPressed: () => reiniciarJuego(),
                        child: const Text('Reiniciar Juego'),
                      ),
                      const Text(
                          'Gracias por jugar al ahorcado con apliarte Games. no olvides visitar apliarte.com para nuevas novedades'),
                    ],
                  ),
                ),
                Text(ahorcado[intentos],
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void reiniciarJuego() {
    setState(() {
      palabraActual = palabraOculta();
      letrasElegidas.clear();
      adivinaPalabra = List.filled(palabraActual.length, '_');
      intentos = 0;
    });
  }
}
