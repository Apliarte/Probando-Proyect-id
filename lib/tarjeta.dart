import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Tarjetas extends StatelessWidget {
  const Tarjetas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarjetas'),
      ),
      body: Padding(
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
                            const url = 'https://www.twitch.tv/apliarte';

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
    );
  }
}
