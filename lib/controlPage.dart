import 'package:flutter/material.dart';
import 'package:bottom_drawer/bottom_drawer.dart';


String battery_percent_text = "88%";
String range_text = "278km";
String temperature_text = "77°F";

var engine_status_text = "sleeping mode";
var climate_status_text = "A/C is ON";
var tires_status_text = "Pressure nominal";





class ControlPage extends StatefulWidget {
  const ControlPage({Key? key}) : super(key: key);

  @override
  _ControlPageState createState() => _ControlPageState();
}

class _ControlPageState extends State<ControlPage> {

  double _headerHeight = 0.0;
  double _bodyHeight = 0.0;
  BottomDrawerController _controller = BottomDrawerController();

  Widget _buildBottomDrawer(BuildContext context, Size ss) {
    return BottomDrawer(
      header: _buildBottomDrawerHead(context),
      body: _buildBottomDrawerBody(context, ss),
      headerHeight: _headerHeight,
      drawerHeight: _bodyHeight,
      color: Colors.lightBlue,
      controller: _controller,
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.15),
          blurRadius: 60,
          spreadRadius: 5,
          offset: const Offset(2, -6), // changes position of shadow
        ),
      ],
    );
  }

  Widget _buildBottomDrawerHead(BuildContext context) {
    return Container(
        height: _headerHeight,
        child: Row(children:[Text("A/C is ON")])
    );
  }

  Widget _buildBottomDrawerBody(BuildContext context, Size ss) {
    return Container(
      width: double.infinity,
      height: _bodyHeight,
      child: SingleChildScrollView(
        child: Column(
            children:[

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Container(
                  width: ss.width * .12,
                  height: ss.width * .12,
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 1.0,
                        color: Colors.blue[900]!),
                    borderRadius: BorderRadius.circular(ss.width * .06),
                    gradient:  LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.blue[800]!, Colors.blue[400]! ],
                    ),
                  ),
                  child: TextButton(
                    child: Icon(Icons.lock_outline,
                      color: Colors.white,
                      size: ss.width * .04,
                    ),
                    onPressed: () {

                    },
                  ),
                ),
                Container(
                  width: ss.width * .12,
                  height: ss.width * .12,
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 1.0,
                        color: Colors.blue[900]!),
                    borderRadius: BorderRadius.circular(ss.width * .06),
                    gradient:  LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.blue[800]!, Colors.blue[400]! ],
                    ),
                  ),
                  child: TextButton(
                    child: Icon(Icons.lock_outline,
                      color: Colors.white,
                      size: ss.width * .04,
                    ),
                    onPressed: () {

                    },
                  ),
                  // )

                )
              ],)
            ]
        ),
      ),
    );
  }






  @override
  Widget build(BuildContext context) {
    var ss = MediaQuery
        .of(context)
        .size;

    _headerHeight = ss.height * .08;
    _bodyHeight = ss.height * .9;

    return Scaffold(body:
    Container(
        height: ss.height,
        child:
        Stack(children: [
          Column(children: [
            Container(height: ss.width * .05,),
            Row(children: [
              Container(width: ss.width * .15,
                  child:
                  RawMaterialButton(
                    onPressed: () {},
                    splashColor: Colors.tealAccent,
                    elevation: 2.0,
                    fillColor: Colors.grey[900],
                    child: Icon(Icons.person_outline,
                        color: Theme
                            .of(context)
                            .textTheme
                            .titleMedium!
                            .color,
                        size: ss.width * .04
                    ),
                    padding: EdgeInsets.all(ss.width * .02),
                    shape: CircleBorder(),
                  )
              ),
              Container(width: ss.width * .7, child: Column(
                children: [Text("Tesla"),
                  Text("Model S")
                ],
              )),
              Container(width: ss.width * .15, child:
              RawMaterialButton(
                onPressed: () {},
                splashColor: Colors.tealAccent,
                elevation: 2.0,
                fillColor: Colors.grey[900],
                child: Icon(Icons.settings_outlined,
                    color: Theme
                        .of(context)
                        .textTheme
                        .titleMedium!
                        .color,
                    size: ss.width * .04
                ),
                padding: EdgeInsets.all(ss.width * .02),
                shape: CircleBorder(),
              )
              )
            ],),

            Image.asset("assets/images/tesla_45_graphic.png"),

            Padding(padding: EdgeInsets.only(left: ss.width * .03),
                child: Column(children: [
                  Row(children: [Text("Status")],),

                  Row(children: [Container(width: ss.width * .3,
                      height: ss.width * .2,
                      child: Column(children: [
                        Row(children: [Icon(Icons.battery_charging_full_sharp,
                          size: ss.width * .02,),
                          Text("Battery")
                        ]),
                        Text(battery_percent_text)
                      ],)
                  ),
                    Container(width: ss.width * .3,
                        height: ss.width * .2,
                        child: Column(children: [
                          Row(children: [Icon(Icons.my_location_sharp,
                            size: ss.width * .02,),
                            Text("Range")
                          ]),
                          Text(range_text)
                        ],)

                    ),
                    Container(width: ss.width * .3,
                        height: ss.width * .2,
                        child: Column(children: [
                          Row(children: [Icon(Icons.person_pin_circle_rounded,
                            size: ss.width * .02,
                          ),
                            Text("Temperature")
                          ]),
                          Text(temperature_text)
                        ],))
                  ],)
                ],)
            ),
            Row(children: [Text("Information")],),
            Container(
                height: ss.width * .45,
                width: ss.width,
                padding: EdgeInsets.all(ss.width * .04),
                child:
                ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    InfoStatusLVI(toptext: "Engine", bottomtext: "Sleep mode",),
                    InfoStatusLVI(toptext: "Climate", bottomtext: "A/C is ON",),
                    InfoStatusLVI(toptext: "Tires", bottomtext: "Nominal",)
                  ],)),

            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("Navigation"), Text("history")],)

          ],),

          _buildBottomDrawer(context, ss),

        ])
    ));
  }




}


class InfoStatusLVI extends StatelessWidget {
  InfoStatusLVI({Key? key, this.toptext, this.bottomtext}) : super(key: key);

  String? toptext;
  String? bottomtext;

  @override
  Widget build(BuildContext context) {
    var ss = MediaQuery.of(context).size;
    return Padding(
        padding: EdgeInsets.all(ss.width*.02),
        child:Container(
          width: ss.width * .28,
          height: ss.width * .28,
          padding: EdgeInsets.all(ss.width*.02),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(ss.width * .03),
            gradient:  LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.black54, Colors.black ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:[Text(toptext!,
                    style: TextStyle(fontSize: ss.width*.036),)
                  ]),
              Container(height: ss.width*.01,),
              Text(bottomtext!,
              style: TextStyle(fontSize: ss.width*.025),)
            ],),
        ));
  }
}



