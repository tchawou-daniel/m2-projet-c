import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'character.dart';
import 'package:http/http.dart' as http;



class NewScreenUn extends StatelessWidget {

  NewScreenUn({Key? key,  required this.maVariable}) : super(key: key);

  final Character maVariable;
  static const Color color_subtitle = Color.fromRGBO(255, 51, 230, 1);

  double custFontSize = 18;

  Text custText(name,custFontSize,[FontWeight fontWeight=FontWeight.normal,Color color = const Color.fromRGBO(224, 255, 51, 1)]) {
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
        padding: const EdgeInsets.all(10.0),
        color: const Color.fromRGBO(61, 69, 90, 1),
        child: Column(
            children: [
              Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                          Stack(
                              fit: StackFit.loose,
                              children: <Widget>[
                               ClipRRect(

                                borderRadius: BorderRadius.circular(5.0),
                                  child:Image.network(maVariable.image?? "",
                                    fit: BoxFit.cover,width: MediaQuery.of(context).size.width,)
                               ),
                                const Positioned(
                                  bottom: 0,
                                  right: 0,
                                  left: 0,
                                  child:
                                  Text("maVariable.name",
                                   style: TextStyle(
                                     fontWeight: FontWeight.bold,
                                     color: color_subtitle,
                                   ),
                                ),

                               )]),
                        ])

              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  custText("Status",custFontSize,FontWeight.bold,color_subtitle),
                  custText(maVariable.status??"",custFontSize),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  custText("Species",custFontSize,FontWeight.bold,color_subtitle),
                  custText(maVariable.species??"",custFontSize,),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  custText("Gender",custFontSize,FontWeight.bold,color_subtitle),
                  custText(maVariable.gender??"",custFontSize),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  custText("Origin",custFontSize,FontWeight.bold,color_subtitle),
                  custText(maVariable.origin!.name??"unknown",custFontSize),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  custText("LastLocation",custFontSize,FontWeight.bold,color_subtitle),
                  custText(maVariable.location!.name??"unknown",custFontSize),
                ],
              ),
            ]),));



}























// Flutter met la mise en texte par defaut quand on utilise pas Material design ou scarfold: donc un texte en gras souligné...





