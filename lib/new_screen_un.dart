import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'character.dart';


class NewScreenUn extends StatelessWidget {


   NewScreenUn({Key? key,  required this.maVariable}) : super(key: key);

  final Character maVariable;

  double custFontSize = 18;

  Text custText(name,custFontSize,[FontWeight fontWeight=FontWeight.normal,Color color= const Color.fromRGBO(224, 255, 51, 1)]){
    return Text(name,
        style: TextStyle(
          fontSize: custFontSize,
          fontWeight: fontWeight,
          color: color,
        ));
  }


  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text("Test"),
      automaticallyImplyLeading: true,

    ),
    body: Container(
      padding: EdgeInsets.all(10.0),
      color: Color.fromRGBO(61, 69, 90, 1),
      child: Column(

        children: [
          Container(
            //padding: EdgeInsets.all(10.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                //mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child:
                      Container(
                        decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(color: Color.fromRGBO(73, 51, 255, 0.5), width: 20,)),
                        ),
                        //padding: EdgeInsets.all(0.0),
                        child: SizedBox.fromSize(
                          size: Size(400, 300),
                          child:Image.network(
                            maVariable.image?? "",
                            fit:BoxFit.fill,
                          ),
                        ),
                      )),
              ],
            ),
              ),

        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              custText("Status",custFontSize,FontWeight.bold),
              custText(maVariable.status??"",custFontSize),
            ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            custText("Species",custFontSize,FontWeight.bold),
            custText(maVariable.species??"",custFontSize),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            custText("Gender",custFontSize,FontWeight.bold),
            custText(maVariable.gender??"",custFontSize),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            custText("Origin",custFontSize,FontWeight.bold),
            custText(maVariable.origin!.name??"unknown",custFontSize),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            custText("LastLocation",custFontSize,FontWeight.bold),
            custText(maVariable.location!.name??"unknown",custFontSize),
          ],
        ),
      ]),));
}









