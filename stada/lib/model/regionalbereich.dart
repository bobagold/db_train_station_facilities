part of stada;

class Regionalbereich {
  /* name of the regional department */
  String name = null;
  

  String shortName = null;
  
/* unique identifier of the regional department */
  int number = null;
  
  Regionalbereich();

  @override
  String toString() {
    return 'Regionalbereich[name=$name, shortName=$shortName, number=$number, ]';
  }

  Regionalbereich.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name =
        json['name']
    ;
    shortName =
        json['shortName']
    ;
    number =
        json['number']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'shortName': shortName,
      'number': number
     };
  }

  static List<Regionalbereich> listFromJson(List<dynamic> json) {
    return json == null ? new List<Regionalbereich>() : json.map((value) => new Regionalbereich.fromJson(value)).toList();
  }

  static Map<String, Regionalbereich> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Regionalbereich>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Regionalbereich.fromJson(value));
    }
    return map;
  }
}

