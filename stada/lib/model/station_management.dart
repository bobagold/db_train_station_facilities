part of stada;

class StationManagement {
  
  String name = null;
  
/* identifier */
  int number = null;
  
  StationManagement();

  @override
  String toString() {
    return 'StationManagement[name=$name, number=$number, ]';
  }

  StationManagement.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name =
        json['name']
    ;
    number =
        json['number']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'number': number
     };
  }

  static List<StationManagement> listFromJson(List<dynamic> json) {
    return json == null ? new List<StationManagement>() : json.map((value) => new StationManagement.fromJson(value)).toList();
  }

  static Map<String, StationManagement> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StationManagement>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new StationManagement.fromJson(value));
    }
    return map;
  }
}

