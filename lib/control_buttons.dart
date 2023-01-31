
import 'package:flutter/material.dart';


class BlueGradIconControlButton extends StatelessWidget {
  BlueGradIconControlButton({Key? key, this.bicon}) : super(key: key);

    IconData? bicon;
  @override
  Widget build(BuildContext context) {
    var ss = MediaQuery.of(context).size;
    return
        ClipRRect(
        borderRadius:
        BorderRadius.circular(ss.width*.06),

        // BorderRadius.circular(
        // ss.width * .2),
        child:
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
    child: Icon(bicon,
    color: Colors.white,
    size: ss.width * .04,
    ),
    onPressed: () {

    },
    ),
    ));

  }
}
