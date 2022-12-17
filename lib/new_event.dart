import 'package:flutter/material.dart';

class NewEventScreen extends StatefulWidget {
  // const NewEventScreen({Key? key}) : super(key: key);

  @override
  State<NewEventScreen> createState() => _NewEventScreenState();
}

class _NewEventScreenState extends State<NewEventScreen> {
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent[100],
      appBar: AppBar(
        title: Text("New Event"),
        backgroundColor: Colors.deepPurpleAccent[400],
        //foregroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
             padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: TextField(
                textAlign: TextAlign.justify,
                textAlignVertical: TextAlignVertical.center,
                controller: _textEditingController,
                maxLines: 3,
                decoration: InputDecoration(
                  constraints: const BoxConstraints.expand(width: 320, height: 75),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  fillColor: Colors.deepPurple[500],
                  filled: true,
                  hintText: "Event",
                  hintStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                  alignLabelWithHint: true,
                  prefixIcon: const Align(
                    widthFactor: 2,
                    heightFactor: 2,
                    child: Icon(Icons.calendar_month,color: Colors.white),
                  ),
                ),
              ),
            ),
            Builder(builder: (context) {
              return ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[400],
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  fixedSize: const Size(320, 20),
                ),
                onPressed: () {
                  String newEventText = _textEditingController.text;
                  Navigator.of(context).pop(newEventText);
                },
                child: Text("ADD"),
              );
            })
          ],
        ),
      ),
    );
  }
}
