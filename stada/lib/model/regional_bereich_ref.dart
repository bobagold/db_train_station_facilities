part of stada;

class RegionalBereichRef {
  /* name of the regional department */
  String name = null;
  

  String shortName = null;
  
/* unique identifier of the regional department */
  int number = null;
  
  RegionalBereichRef();

  @override
  String toString() {
    return 'RegionalBereichRef[name=$name, shortName=$shortName, number=$number, ]';
  }

  RegionalBereichRef.fromJson(Map<String, dynamic> json) {
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

  static List<RegionalBereichRef> listFromJson(List<dynamic> json) {
    return json == null ? new List<RegionalBereichRef>() : json.map((value) => new RegionalBereichRef.fromJson(value)).toList();
  }

  static Map<String, RegionalBereichRef> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RegionalBereichRef>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RegionalBereichRef.fromJson(value));
    }
    return map;
  }
}

