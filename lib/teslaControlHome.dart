import 'package:flutter/material.dart';


class TeslaControlHome extends StatefulWidget {
  const TeslaControlHome({super.key});

  @override
  State<TeslaControlHome> createState() => _TeslaControlHomeState();
}

class _TeslaControlHomeState extends State<TeslaControlHome> {
  @override
  Widget build(BuildContext context) {
    var ss = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
      title:Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children:[  Container(
          width: ss.width * .12,
          child:
          RawMaterialButton(
            onPressed: () {
            },
            splashColor: Colors.tealAccent,
            elevation: 2.0,
            fillColor: Theme.of(context).canvasColor,
            child: Icon(Icons.settings,
              color: Theme.of(context).textTheme.titleMedium!.color,
            ),
            padding: EdgeInsets.all(8.0),
            shape: CircleBorder(),
          ))]),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),

          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}