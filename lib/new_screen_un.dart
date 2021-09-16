import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'character.dart';


class NewScreenUn extends StatelessWidget {


  const NewScreenUn({Key? key,  required this.maVariable}) : super(key: key);

  final Character maVariable;

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text("Test"),
      automaticallyImplyLeading: true,

    ),
    body: Container(

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
              Text("Status"),
              Text(maVariable.status??"")
            ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Species"),
            Text(maVariable.species??"")
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Gender"),
            Text(maVariable.gender??"")
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Origin"),
            Text(maVariable.origin!.name??"unknown")
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("LastLocation"),
            Text(maVariable.location!.name??"unknown")
          ],
        ),
      ]),));
}










