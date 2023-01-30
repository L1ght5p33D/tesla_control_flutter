import 'package:flutter/material.dart';

var driven_distance = "297";
var ac_on_off = "on";

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
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
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
            fillColor: Theme.of(context).backgroundColor,
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
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [Text("Tesla")],),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("Model S",
                        style: TextStyle(fontSize: ss.width * .12,
                                          fontWeight: FontWeight.w400) ,
              )],),

            Expanded(child:Stack(children:[
              Positioned(
                  bottom: ss.width * .15,
                  child: Image.asset(
                      "assets/images/tesla_45_graphic.jpeg",
                      width:ss.width,
                    fit:BoxFit.contain
                  )),
                Positioned(
                    top: ss.width * .05,
              child:Row(
                children: [
                  Container(width: ss.width * .25,),
                  Container(width: ss.width * .5,
                      child:Text(driven_distance,
                          style:TextStyle(
                            fontSize: ss.width * .3,
                            fontWeight:FontWeight.w200,)
                      )),
                  Container(width: ss.width * .25,
                      child: Text("km")
                  ),
                ],)),

            ])),

            Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children:[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("A/C is turned " + ac_on_off)],),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Container(
                  width: ss.width * .12,
                  child:
                  RawMaterialButton(
                    onPressed: () {
                    },
                    splashColor: Colors.tealAccent,
                    elevation: 2.0,
                    fillColor: Colors.lightBlue,
                    child: Icon(Icons.lock,
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.all(8.0),
                    shape: CircleBorder(),
                  ))],),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("Tap to open the car" )],),

                  Container(height: ss.width*.02,)

          ]),

                ]),)
    );
  }
}