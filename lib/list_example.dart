import 'package:flutter/material.dart';

class ListExample extends StatefulWidget {
  const ListExample({super.key});

  @override
  State<ListExample> createState() => _ListExampleState();
}

class _ListExampleState extends State<ListExample> {

  var counter = 0;

  @override
  Widget build(BuildContext context) {

    final names = ['Gabriel', 'Neymar', 'Messi', 'Cristiano', 'Phoden', 'Grealish', 'Suarez', 'Garay'];

    return Scaffold(
      appBar: AppBar(
       title: const Text('Home'),
      ),
      body: Center(
        child: ListView.builder(
            itemCount: names.length,
            itemBuilder: (context, index) {
              final name = names[index];
              return ListTile(
                title: Text(name),
              );
            },
          ),
        ),
    );
  }
}
