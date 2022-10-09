import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Magic 8 Ball '),
          backgroundColor: Colors.blueAccent,
        ),
        body: MagicPage(),
      ),
    ),
  );
}

class MagicPage extends StatefulWidget {
  const MagicPage({Key? key}) : super(key: key);

  @override
  State<MagicPage> createState() => _MagicPageState();
}

class _MagicPageState extends State<MagicPage> {
  int picture = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child:
        Row(
          children: <Widget>[
            Expanded(
              child: TextButton(
                onPressed: (){
                  setState(() {
                    picture = Random().nextInt(4)+1;
                  });
                },
                child:

                Image.asset('images/ball$picture.jpeg'),
        ),

            ),
          ],
        ),
    );
  }
}
