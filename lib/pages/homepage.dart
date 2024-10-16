import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // var lebar = MediaQuery.of(context).size.width;
    // var tinggi = MediaQuery.of(context).size.height;

    Future<dynamic> showAlertDialog(
        BuildContext context, String judul, String konten) {
      return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(judul),
            content: Text(konten),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("OK"),
              ),
            ],
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Pertemuan 6"),
      ),
      // body: Container(
      //   width: lebar,
      //   height: tinggi,
      //   color: Colors.amberAccent,
      // ),
      // body: GestureDetector(
      //   // onTap: () {
      //   //   setState(() {
      //   //     selected = !selected;
      //   //   });
      //   // },
      //   // onLongPress:() {
      //   //   setState(() {
      //   //     selected = !selected;
      //   //   });
      //   // },
      //   onDoubleTap: () {
      //     setState(() {
      //       selected = !selected;
      //     });
      //   },
      //   child: Center(
      //     child: AnimatedContainer(
      //       width: selected ? 300.0 : 100.0,
      //       height: selected ? 300.0 : 100.0,
      //       color: selected ? Colors.red : Colors.blue,
      //       alignment:
      //           selected ? Alignment.center : AlignmentDirectional.topCenter,
      //       duration: const Duration(seconds: 2),
      //       curve: Curves.fastOutSlowIn,
      //     ),
      //   ),
      // ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       Text('Headline Large',
      //           style: Theme.of(context).textTheme.headlineLarge),
      //       SizedBox(height: 20),
      //       Text('Body Large', style: Theme.of(context).textTheme.bodyLarge),
      //       Text('Body Medium', style: Theme.of(context).textTheme.bodyMedium),
      //       Text('Body Small', style: Theme.of(context).textTheme.bodySmall),
      //       SizedBox(height: 20),
      //       ElevatedButton(
      //         onPressed: () {},
      //         child: Text('Elevated Button'),
      //       ),
      //       SizedBox(height: 20),
      //       OutlinedButton(
      //         onPressed: () {},
      //         child: Text('Outlined Button'),
      //       ),
      //       SizedBox(height: 20),
      //       TextButton(
      //         onPressed: () {},
      //         child: Text('Text Button'),
      //       ),
      //     ],
      //   ),
      // ),
      // body: Center(
      //   child: ElevatedButton(
      //     onPressed: () {
      //       final mySnackBar = SnackBar(
      //         content: Text("Berhasil membuat SnackBar"),
      //         duration: Duration(seconds: 3),
      //         padding: EdgeInsets.all(10),
      //         backgroundColor: Colors.amberAccent,
      //       );
      //       ScaffoldMessenger.of(context).showSnackBar(mySnackBar);
      //     },
      //     child: Text(
      //       "Tampilkan SnackBar",
      //       style: Theme.of(context).textTheme.bodyLarge,
      //     ),
      //   ),
      // ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showAlertDialog(
              context,
              "Alert Dialog",
              "Ini adalah sebuah alert dialog. Ini juga bagian konten",
            );
          },
          child: Text("Tampilkan Alert Dialog"),
        ),
      ),
    );
  }
}
