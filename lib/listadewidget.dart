import 'package:flutter/material.dart';

class ListadeEjemplo extends StatelessWidget {
  final redes = const [
    'Tik Tok --> erbolamm',
    'Twitter --> erbolamm',
    'Instagram --> erbolamm',
    'YouTube --> erbolamm',
    'GitHub --> ApliArte'
  ];

  const ListadeEjemplo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.separated(
          itemCount: redes.length,
          itemBuilder: (context, i) => ListTile(
            title: Text(redes[i]),
            trailing: const Icon(Icons.arrow_forward_ios_outlined,
                color: Colors.amber),
            onTap: () {},
          ),
          separatorBuilder: (_, __) => const Divider(),
        ),
      ),
    );
  }
}
