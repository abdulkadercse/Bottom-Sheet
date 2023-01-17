import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bottom Sheet',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("bottom sheet"),
        centerTitle: true,
      ),
      body: Center(
          child: ElevatedButton(
              onPressed: () async {
                return showModalBottomSheet(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                      top: Radius.circular(10.0),
                    )),
                    context: context,
                    builder: (context) {
                      return Container(
                        height: MediaQuery.of(context).size.width / 2,
                        child: Column(
                          children: [
                            ListTile(
                              title: Text("1"),
                              subtitle: Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit"),
                              trailing: Icon(Icons.alarm),
                            ),
                            ListTile(
                              title: Text("2"),
                              subtitle: Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit"),
                              trailing: Icon(Icons.alarm),
                            ),
                            ListTile(
                              title: Text("3"),
                              subtitle: Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit"),
                              trailing: Icon(Icons.alarm),
                            ),
                          ],
                        ),
                      );
                    });
              },
              child: Text("Click"))),
    );
  }
}
