part of stada;

class Aufgabentraeger {
  /* unique identifier */
  String shortname = null;
  
/* full name of Aufgabentraeger */
  String name = null;
  
  Aufgabentraeger();

  @override
  String toString() {
    return 'Aufgabentraeger[shortname=$shortname, name=$name, ]';
  }

  Aufgabentraeger.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    shortname =
        json['shortname']
    ;
    name =
        json['name']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'shortname': shortname,
      'name': name
     };
  }

  static List<Aufgabentraeger> listFromJson(List<dynamic> json) {
    return json == null ? new List<Aufgabentraeger>() : json.map((value) => new Aufgabentraeger.fromJson(value)).toList();
  }

  static Map<String, Aufgabentraeger> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Aufgabentraeger>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Aufgabentraeger.fromJson(value));
    }
    return map;
  }
}

