import 'package:flutter/material.dart';

class ListAddText extends StatefulWidget {
  const ListAddText({super.key});

  @override
  State<ListAddText> createState() => _ListAddTextState();
}

class _ListAddTextState extends State<ListAddText> {

  final controller = TextEditingController();
  final list = <String>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: const Text('Flutter'),
      ),
      body: Column(
        children: [ Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(child: TextField(controller: controller)),
              IconButton(
                onPressed: () {
                  final text = controller.text;
                  setState(() {
                    list.add(text);
                  });
                  controller.clear();
                },
                icon: const Icon(Icons.add),
              )
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, index) {
              final item = list[index];
          
              return ListTile(title: Text(item));
            },
          ),
        ),
      ],
      ),
    );
  }
}