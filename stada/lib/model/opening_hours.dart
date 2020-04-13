part of stada;

class OpeningHours {
  
  DateTime fromTime = null;
  

  DateTime toTime = null;
  
  OpeningHours();

  @override
  String toString() {
    return 'OpeningHours[fromTime=$fromTime, toTime=$toTime, ]';
  }

  OpeningHours.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    fromTime =
      
      
      DateTime.parse(json['fromTime'])
;
    toTime =
      
      
      DateTime.parse(json['toTime'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'fromTime': fromTime,
      'toTime': toTime
     };
  }

  static List<OpeningHours> listFromJson(List<dynamic> json) {
    return json == null ? new List<OpeningHours>() : json.map((value) => new OpeningHours.fromJson(value)).toList();
  }

  static Map<String, OpeningHours> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OpeningHours>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OpeningHours.fromJson(value));
    }
    return map;
  }
}

