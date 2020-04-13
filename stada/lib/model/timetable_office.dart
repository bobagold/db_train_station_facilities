part of stada;

class TimetableOffice {
  /* identifier */
  String name = null;
  
/* email */
  String email = null;
  
  TimetableOffice();

  @override
  String toString() {
    return 'TimetableOffice[name=$name, email=$email, ]';
  }

  TimetableOffice.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name =
        json['name']
    ;
    email =
        json['email']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email
     };
  }

  static List<TimetableOffice> listFromJson(List<dynamic> json) {
    return json == null ? new List<TimetableOffice>() : json.map((value) => new TimetableOffice.fromJson(value)).toList();
  }

  static Map<String, TimetableOffice> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TimetableOffice>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TimetableOffice.fromJson(value));
    }
    return map;
  }
}

