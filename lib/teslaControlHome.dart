import 'package:flutter/material.dart';
import 'package:tesla_control_ui/controlPage.dart';

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
      body: SafeArea(child:Container(
        height: ss.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.grey[800]!, Colors.black38])),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Container(height: ss.width*.05,),
            Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children:[
                  Padding(
                      padding: EdgeInsets.only(top:ss.width * .01, right:ss.width*.02),
                      child:
                  Container(
                    width: ss.width * .10,
                    child:
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
                    )))]),

           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [Text("Tesla")],),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("Model S",
                        style: TextStyle(fontSize: ss.width * .1,
                                          fontWeight: FontWeight.w600) ,
              )],),
            Row(
              children: [
                Container(width: ss.width * .25,),
                Container(width: ss.width * .5,
                    child:Text(driven_distance,
                        style:TextStyle(
                          fontSize: ss.width * .3,
                          fontWeight:FontWeight.w100,)
                    )),
                Container(width: ss.width * .25,
                    child: Text("km")
                ),
              ],),
            Container(
            child:Image.asset(
                "assets/images/tesla_90_graphic.png",
                width:ss.width,
                fit:BoxFit.contain
            )),
            Container(height: ss.width*.05,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("A/C is turned " + ac_on_off,
                        style: TextStyle(fontSize: ss.width*.035,
                                        fontWeight: FontWeight.w300
                        ) ,
              )],),
                  Container(height: ss.width*.05,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Container(
                    width: ss.width * .12,
                    height: ss.width * .12,
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 1.0,
                          color: Colors.blue[900]!),
                      borderRadius: BorderRadius.circular(ss.width * .06),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black, //New
                            blurRadius: ss.width*.03,
                            offset: Offset(ss.width*.01, ss.width*.02))
                      ],
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

                        Navigator.of(context).push(MaterialPageRoute(builder:(context){
                            return ControlPage();
                        }));
                      },
                    ),
                  // )

              )],),
                  Container(height: ss.width*.03,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("Tap to open the car" )],),

                  Container(height: ss.width*.05,)

      ]),

          ))
    );
  }
}