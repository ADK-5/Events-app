
import 'package:event_scheduler/new_event.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  //const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Widget> _list = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
       backgroundColor: Colors.deepPurpleAccent[100],
        appBar: AppBar(
          title: const Text("Event Scheduler"),
          //foregroundColor: Colors.deepPurpleAccent,
          backgroundColor: Colors.deepPurpleAccent[400],
        ),
        body: Center(
          child: ListView.builder(
              //padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              itemCount: _list.length,
              itemBuilder: ((context, index) => Padding(
                padding: const EdgeInsets.fromLTRB(10, 15, 10, 5),
                child: ListTile(
                  title: Center(child: _list[index]),
                  tileColor: Colors.white,
                  contentPadding: const EdgeInsets.fromLTRB(20, 3, 20, 3),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                ),

              )
              ),

          ),
        ),
        floatingActionButton: Builder(builder: (context) {
          return FloatingActionButton(
            backgroundColor: Colors.deepPurpleAccent[400],
            onPressed: () async {
              String newText = await Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => NewEventScreen()));
              setState(() {
                _list.add(Text(newText));
              });
            },
            child: Icon(Icons.add),
          );
        }),
      ),
    );
  }
}
