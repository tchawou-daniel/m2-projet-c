import 'package:m2/character.dart';

/// info : {"count":671,"pages":34,"next":"https://rickandmortyapi.com/api/character/?page=2","prev":null}
/// results : [{"id":1,"name":"Rick Sanchez","status":"Alive","species":"Human","type":"","gender":"Male","origin":{"name":"Earth","url":"https://rickandmortyapi.com/api/location/1"},"location":{"name":"Earth","url":"https://rickandmortyapi.com/api/location/20"},"image":"https://rickandmortyapi.com/api/character/avatar/1.jpeg","episode":["https://rickandmortyapi.com/api/episode/1","https://rickandmortyapi.com/api/episode/2",null],"url":"https://rickandmortyapi.com/api/character/1","created":"2017-11-04T18:48:46.250Z"},null]

class AllCharactersResponse {
  Info? _info;
  List<Character>? _results;

  Info? get info => _info;
  List<Character>? get results => _results ??[];

  AllCharactersResponse({
      Info? info, 
      List<Character>? results}){
    _info = info;
    _results = results;
}

  AllCharactersResponse.fromJson(dynamic json) {
    _info = json['info'] != null ? Info.fromJson(json['info']) : null;
    if (json['results'] != null) {
      _results = [];
      json['results'].forEach((v) {
        _results?.add(Character.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_info != null) {
      map['info'] = _info?.toJson();
    }
    if (_results != null) {
      map['results'] = _results?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

