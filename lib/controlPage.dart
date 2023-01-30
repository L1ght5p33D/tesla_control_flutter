import 'package:flutter/material.dart';


class ControlPage extends StatefulWidget {
  const ControlPage({Key? key}) : super(key: key);

  @override
  _ControlPageState createState() => _ControlPageState();
}

class _ControlPageState extends State<ControlPage> {
  @override
  Widget build(BuildContext context) {
    var ss = MediaQuery.of(context).size;
    return Container(
      height: ss.height,
      child:Column(children: [
        Row(children: [
          Container(width:ss.width * .15 child:
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

    Image.asset("/assets/images/tesla_45_graphic.png"),

    Padding(padding: EdgeInsets.only(left:ss.width * .03),
    child:Column(children: [
      Row(children: [Text("Status")],),

    Row(children: [Container(width:ss.width * .3),
                  Container(width:ss.width * .3),
                  Container(width:ss.width * .3)
    ],)
    ],)
    )


      ],)
    );
  }
}
