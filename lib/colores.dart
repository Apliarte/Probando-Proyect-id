import 'package:flutter/material.dart';
import 'package:myapp/ahorcado.dart';
import 'package:myapp/alertas.dart';
import 'package:myapp/animacion.dart';
import 'package:myapp/listadewidget.dart';
import 'package:url_launcher/url_launcher.dart';

const Color _customColor = Color(0xFFb37bbb);
const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.red,
  Colors.green,
  Colors.purple,
  Colors.orange,
  Colors.teal,
  Colors.pink,
  Colors.amber,
  Colors.brown,
  Colors.cyan,
  Colors.deepOrange,
  Colors.deepPurple,
  Colors.indigo,
  Colors.lime,
  Colors.yellow,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length - 1,
            'Colors must between 0 and ${_colorThemes.length}');

  ThemeData theme() {
    return ThemeData(
      brightness: Brightness.light,
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
    );
  }
}

int selection = 0;
bool tema = true;

void cambiaColor() {
  selection = (selection + 1) % 15;
}

class CambioDeColor extends StatefulWidget {
  const CambioDeColor({super.key});

  @override
  State<CambioDeColor> createState() => _CambioDeColorState();
}

class _CambioDeColorState extends State<CambioDeColor> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: selection).theme(),
      home: Scaffold(
        body: Center(
          child: Wrap(
            children: [
              const Text(
                'Deja pulsado el icono para que desvele la información',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Tooltip(
                decoration: BoxDecoration(
                    border: Border.all(
                        style: BorderStyle.solid,
                        color: Colors.black,
                        width: 5),
                    borderRadius: BorderRadius.circular(8),
                    color: Theme.of(context).colorScheme.primary),
                height: 150,
                padding: const EdgeInsets.all(16),
                message: 'Buscar',
                child: IconButton(
                  color: Theme.of(context).colorScheme.primary,
                  onPressed: () {
                    // navegar a alertas.dart
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AlertaIosAndro()),
                    );
                  },
                  icon: const Icon(Icons.search),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Animacion()),
                    );
                  },
                  child: const Icon(Icons.animation)),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ListadeEjemplo()),
                    );
                  },
                  child: const Icon(Icons.list)),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Ahorcado()),
                    );
                  },
                  child: const Icon(Icons.gamepad)),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  child: const Text('S.of(context).cambiaElColor'),
                  onPressed: () {
                    setState(() {
                      selection = (selection + 1) % 16;
                    });
                  }),
              FilledButton.icon(
                label: const Text('S.of(context).cambiaElColor'),
                onPressed: () {
                  setState(() {
                    selection = (selection + 1) % 16;
                  });
                },
                icon: const Icon(Icons.palette),
              ),
              const SizedBox(
                height: 30,
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                    elevation: 5,
                    child: Column(
                      children: [
                        const ListTile(
                          leading: Icon(
                            Icons.accessibility_new_rounded,
                          ),
                          title: Text('Contacte conmigo en Directo'),
                          subtitle: Text(
                            '''Me llamo Javier, en las redes erbolamm y en twtich soy ApliArte''',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                  onPressed: () {
                                    const urls = 'https://www.google.com';

                                    launchUrl(urls as Uri);
                                  },
                                  child: const Text('Ver Las Redes')),
                              const Icon(Icons.compare_arrows_sharp),
                              // ignore: prefer_const_constructors
                              TextButton(
                                  onPressed: () {
                                    const url =
                                        'https://www.twitch.tv/apliarte';

                                    launch(url);
                                  },
                                  style: const ButtonStyle(),
                                  child: const Text('Ver En Directo')),
                            ],
                          ),
                        )
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
