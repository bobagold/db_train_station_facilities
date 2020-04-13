part of stada;

class SZentraleRef {
  /* unique identifier for SZentrale */
  int number = null;
  
/* unique identifier of 3SZentrale */
  String name = null;
  

  String publicPhoneNumber = null;
  
  SZentraleRef();

  @override
  String toString() {
    return 'SZentraleRef[number=$number, name=$name, publicPhoneNumber=$publicPhoneNumber, ]';
  }

  SZentraleRef.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    number =
        json['number']
    ;
    name =
        json['name']
    ;
    publicPhoneNumber =
        json['publicPhoneNumber']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'number': number,
      'name': name,
      'publicPhoneNumber': publicPhoneNumber
     };
  }

  static List<SZentraleRef> listFromJson(List<dynamic> json) {
    return json == null ? new List<SZentraleRef>() : json.map((value) => new SZentraleRef.fromJson(value)).toList();
  }

  static Map<String, SZentraleRef> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SZentraleRef>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SZentraleRef.fromJson(value));
    }
    return map;
  }
}

