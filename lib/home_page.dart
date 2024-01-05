import 'package:flutter/material.dart';
import 'package:test/home_controller.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {

//     var controller = context.dependOnInheritedWidgetOfExactType<HomeController>()!;

//     return Scaffold(
//       appBar: AppBar(
//        title: const Text('Home'),
//       ),
//       body: const Center(
//         child: Text(
//           'Flutter SRSR'),
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: const Icon(Icons.add),
//         onPressed: () {
//         },
//       ),
//     );
//   }
// }

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: const Text('Home'),
      ),
      body: Center(
        child: Text(
          "Flutter $counter"),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}

