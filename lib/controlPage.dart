import 'package:flutter/material.dart';

String battery_percent_text = "88%";
String range_text = "278km";
String temperature_text = "77°F";

class ControlPage extends StatefulWidget {
  const ControlPage({Key? key}) : super(key: key);

  @override
  _ControlPageState createState() => _ControlPageState();
}

class _ControlPageState extends State<ControlPage> {
  @override
  Widget build(BuildContext context) {
    var ss = MediaQuery.of(context).size;
    return Scaffold(body:Container(
      height: ss.height,
      child:Column(children: [
        Container(height: ss.width * .05,),
        Row(children: [
          Container(width:ss.width * .15 ,
              child:
      RawMaterialButton(
      onPressed: () {
    },
      splashColor: Colors.tealAccent,
      elevation: 2.0,
      fillColor: Colors.grey[900],
      child: Icon(Icons.person_outline,
          color: Theme.of(context).textTheme.titleMedium!.color,
          size: ss.width *.04
      ),
      padding: EdgeInsets.all(ss.width*.02),
      shape: CircleBorder(),
    )
          ),
          Container(width: ss.width * .7,child:Column(
            children: [Text("Tesla"),
                      Text("Model S")
            ],
          )),
          Container(width: ss.width * .15,child:
    RawMaterialButton(
    onPressed: () {
    },
    splashColor: Colors.tealAccent,
    elevation: 2.0,
    fillColor: Colors.grey[900],
    child: Icon(Icons.settings_outlined,
    color: Theme.of(context).textTheme.titleMedium!.color,
    size: ss.width *.04
    ),
    padding: EdgeInsets.all(ss.width*.02),
    shape: CircleBorder(),
    )
    )
        ],),

    Image.asset("assets/images/tesla_45_graphic.png"),

    Padding(padding: EdgeInsets.only(left:ss.width * .03),
    child:Column(children: [
      Row(children: [Text("Status")],),

    Row(children: [Container(width:ss.width * .3,
                              height: ss.width *.2,
                            child:Column(children: [
                              Row(children: [Icon(Icons.battery_charging_full_sharp,
                                size: ss.width *.02,),
                                Text("Battery")
                              ]),
                              Text(battery_percent_text)
                            ],)
    ),
                  Container(width:ss.width * .3,
                      height: ss.width *.2,
                      child:Column(children: [
                        Row(children: [Icon(Icons.my_location_sharp,
                          size: ss.width *.02,),
                          Text("Range")
                        ]),
                        Text(range_text)
                      ],)

                  ),
                  Container(width:ss.width * .3,
                      height: ss.width *.2,
                      child:Column(children: [
                        Row(children: [Icon(Icons.person_pin_circle_rounded,
                        size: ss.width *.02,
                        ),
                          Text("Temperature")
                        ]),
                        Text(temperature_text)
                      ],))
    ],)
    ],)
    )


      ],)
    ));
  }
}
