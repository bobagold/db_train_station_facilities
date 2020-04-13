part of stada;

class StationManagementRef {
  
  String name = null;
  
/* identifier */
  int number = null;
  
  StationManagementRef();

  @override
  String toString() {
    return 'StationManagementRef[name=$name, number=$number, ]';
  }

  StationManagementRef.fromJson(Map<String, dynamic> json) {
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

  static List<StationManagementRef> listFromJson(List<dynamic> json) {
    return json == null ? new List<StationManagementRef>() : json.map((value) => new StationManagementRef.fromJson(value)).toList();
  }

  static Map<String, StationManagementRef> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StationManagementRef>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new StationManagementRef.fromJson(value));
    }
    return map;
  }
}

