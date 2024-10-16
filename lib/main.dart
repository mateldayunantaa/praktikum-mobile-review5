import 'package:flutter/material.dart';
import 'package:pertemuan6/pages/homepage.dart';
import 'package:introduction_screen/introduction_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nama Kalian',
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        textTheme: TextTheme(
          headlineLarge: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.italic,
              fontFamily: 'Serif'),
          bodyLarge: TextStyle(color: Colors.black87),
          bodyMedium: TextStyle(color: Colors.black54),
          bodySmall: TextStyle(color: Colors.black45),
        ),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        textTheme: TextTheme(
          headlineLarge: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.italic,
              fontFamily: 'Serif'),
          bodyLarge: TextStyle(color: Colors.white70),
          bodyMedium: TextStyle(color: Colors.white60),
          bodySmall: TextStyle(color: Colors.white54),
        ),
      ),
      themeMode: ThemeMode.system,
      home: const IntroductionPage(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     // var lebar = MediaQuery.of(context).size.width;
//     // var tinggi = MediaQuery.of(context).size.height;

//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: const Text("Pertemuan 6"),
//       ),
//       // body: Container(
//       //   width: lebar,
//       //   height: tinggi,
//       //   color: Colors.amberAccent,
//       // ),
//       // body: GestureDetector(
//       //   // onTap: () {
//       //   //   setState(() {
//       //   //     selected = !selected;
//       //   //   });
//       //   // },
//       //   // onLongPress:() {
//       //   //   setState(() {
//       //   //     selected = !selected;
//       //   //   });
//       //   // },
//       //   onDoubleTap: () {
//       //     setState(() {
//       //       selected = !selected;
//       //     });
//       //   },
//       //   child: Center(
//       //     child: AnimatedContainer(
//       //       width: selected ? 300.0 : 100.0,
//       //       height: selected ? 300.0 : 100.0,
//       //       color: selected ? Colors.red : Colors.blue,
//       //       alignment:
//       //           selected ? Alignment.center : AlignmentDirectional.topCenter,
//       //       duration: const Duration(seconds: 2),
//       //       curve: Curves.fastOutSlowIn,
//       //     ),
//       //   ),
//       // ),
//       body: Container(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text('Headline Large',
//                 style: Theme.of(context).textTheme.headlineLarge),
//             SizedBox(height: 20),
//             Text('Body Large', style: Theme.of(context).textTheme.bodyLarge),
//             Text('Body Medium', style: Theme.of(context).textTheme.bodyMedium),
//             Text('Body Small', style: Theme.of(context).textTheme.bodySmall),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {},
//               child: Text('Elevated Button'),
//             ),
//             SizedBox(height: 20),
//             OutlinedButton(
//               onPressed: () {},
//               child: Text('Outlined Button'),
//             ),
//             SizedBox(height: 20),
//             TextButton(
//               onPressed: () {},
//               child: Text('Text Button'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
