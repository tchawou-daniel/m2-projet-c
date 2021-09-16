
/// id : 361
/// name : "Toxic Rick"
/// status : "Dead"
/// species : "Humanoid"
/// type : "Rick's Toxic Side"
/// gender : "Male"
/// origin : {"name":"Alien Spa","url":"https://rickandmortyapi.com/api/location/64"}
/// location : {"name":"Earth","url":"https://rickandmortyapi.com/api/location/20"}
/// image : "https://rickandmortyapi.com/api/character/avatar/361.jpeg"
/// episode : ["https://rickandmortyapi.com/api/episode/27"]
/// url : "https://rickandmortyapi.com/api/character/361"
/// created : "2018-01-10T18:20:41.703Z"

class Character {
  int? _id;
  String? _name;
  String? _status;
  String? _species;
  String? _type;
  String? _gender;
  Origin? _origin;
  Location? _location;
  String? _image;
  List<String>? _episode;
  String? _url;
  String? _created;

  int? get id => _id;
  String? get name => _name;
  String? get status => _status;
  String? get species => _species;
  String? get type => _type;
  String? get gender => _gender;
  Origin? get origin => _origin;
  Location? get location => _location;
  String? get image => _image;
  List<String>? get episode => _episode;
  String? get url => _url;
  String? get created => _created;

  Character({
      int? id, 
      String? name, 
      String? status, 
      String? species, 
      String? type, 
      String? gender, 
      Origin? origin, 
      Location? location, 
      String? image, 
      List<String>? episode, 
      String? url, 
      String? created}){
    _id = id;
    _name = name;
    _status = status;
    _species = species;
    _type = type;
    _gender = gender;
    _origin = origin;
    _location = location;
    _image = image;
    _episode = episode;
    _url = url;
    _created = created;
}

  Character.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _status = json['status'];
    _species = json['species'];
    _type = json['type'];
    _gender = json['gender'];
    _origin = json['origin'] != null ? Origin.fromJson(json['origin']) : null;
    _location = json['location'] != null ? Location.fromJson(json['location']) : null;
    _image = json['image'];
    _episode = json['episode'] != null ? json['episode'].cast<String>() : [];
    _url = json['url'];
    _created = json['created'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['status'] = _status;
    map['species'] = _species;
    map['type'] = _type;
    map['gender'] = _gender;
    if (_origin != null) {
      map['origin'] = _origin?.toJson();
    }
    if (_location != null) {
      map['location'] = _location?.toJson();
    }
    map['image'] = _image;
    map['episode'] = _episode;
    map['url'] = _url;
    map['created'] = _created;
    return map;
  }

}

/// name : "Earth"
/// url : "https://rickandmortyapi.com/api/location/20"

class Location {
  String? _name;
  String? _url;

  String? get name => _name;
  String? get url => _url;

  Location({
      String? name, 
      String? url}){
    _name = name;
    _url = url;
}

  Location.fromJson(dynamic json) {
    _name = json['name'];
    _url = json['url'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['name'] = _name;
    map['url'] = _url;
    return map;
  }

}

/// name : "Alien Spa"
/// url : "https://rickandmortyapi.com/api/location/64"

class Origin {
  String? _name;
  String? _url;

  String? get name => _name;
  String? get url => _url;

  Origin({
      String? name, 
      String? url}){
    _name = name;
    _url = url;
}

  Origin.fromJson(dynamic json) {
    _name = json['name'];
    _url = json['url'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['name'] = _name;
    map['url'] = _url;
    return map;
  }

}

/// count : 671
/// pages : 34
/// next : "https://rickandmortyapi.com/api/character/?page=20"
/// prev : "https://rickandmortyapi.com/api/character/?page=18"

class Info {
  int? _count;
  int? _pages;
  String? _next;
  String? _prev;

  int? get count => _count;
  int? get pages => _pages;
  String? get next => _next;
  String? get prev => _prev;

  Info({
      int? count, 
      int? pages, 
      String? next, 
      String? prev}){
    _count = count;
    _pages = pages;
    _next = next;
    _prev = prev;
}

  Info.fromJson(dynamic json) {
    _count = json['count'];
    _pages = json['pages'];
    _next = json['next'];
    _prev = json['prev'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['count'] = _count;
    map['pages'] = _pages;
    map['next'] = _next;
    map['prev'] = _prev;
    return map;
  }

}