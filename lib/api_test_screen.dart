import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'all_characters_response.dart';
import 'character.dart';
import 'new_screen.dart';
import 'new_screen_un.dart';

class ApiTestScreen extends StatefulWidget {
  const ApiTestScreen({Key? key}) : super(key: key);

  @override
  _ApiTestScreen createState() => _ApiTestScreen();
}

class _ApiTestScreen extends State<ApiTestScreen> {
  List<Character> _characters = [];
  //AllCharactersResponse allChar;
  Future<void> getAllCharacters() async {
    var uri = Uri.parse('https://rickandmortyapi.com/api/character');
    var responseFromApi = await http.get(uri);
    if(responseFromApi.statusCode == 200){
      setState(() {
        AllCharactersResponse resp = AllCharactersResponse.fromJson(jsonDecode(responseFromApi.body));
        _characters = resp.results!;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("API"),
        ),
        body: _getBody(),
        floatingActionButton: FloatingActionButton(
          onPressed: getAllCharacters,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
    );
  }

  Widget _getBody() {

    if(_characters.isNotEmpty){
      return ListView.separated(
          separatorBuilder: (BuildContext context, int index) => const Divider(),
          itemCount: _characters.length,
          itemBuilder: (context, index){
            String title=_characters[index].name?? "Vide";

            return ListTile(
              title: Text(_characters[index].name?? "Vide"),
              leading: Image.network(_characters[index].image?? ""),
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)  =>  NewScreenUn(maVariable: _characters[index],))
                );
              },
            );
          }
      );}
    else{ return const CircularProgressIndicator();}

    }

}
