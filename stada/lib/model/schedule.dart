part of stada;

class Schedule {
  
  OpeningHours monday = null;
  

  OpeningHours tuesday = null;
  

  OpeningHours wednesday = null;
  

  OpeningHours thursday = null;
  

  OpeningHours friday = null;
  

  OpeningHours saturday = null;
  

  OpeningHours sunday = null;
  

  OpeningHours holiday = null;
  
  Schedule();

  @override
  String toString() {
    return 'Schedule[monday=$monday, tuesday=$tuesday, wednesday=$wednesday, thursday=$thursday, friday=$friday, saturday=$saturday, sunday=$sunday, holiday=$holiday, ]';
  }

  Schedule.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    monday =
      
      
      new OpeningHours.fromJson(json['monday'])
;
    tuesday =
      
      
      new OpeningHours.fromJson(json['tuesday'])
;
    wednesday =
      
      
      new OpeningHours.fromJson(json['wednesday'])
;
    thursday =
      
      
      new OpeningHours.fromJson(json['thursday'])
;
    friday =
      
      
      new OpeningHours.fromJson(json['friday'])
;
    saturday =
      
      
      new OpeningHours.fromJson(json['saturday'])
;
    sunday =
      
      
      new OpeningHours.fromJson(json['sunday'])
;
    holiday =
      
      
      new OpeningHours.fromJson(json['holiday'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'monday': monday,
      'tuesday': tuesday,
      'wednesday': wednesday,
      'thursday': thursday,
      'friday': friday,
      'saturday': saturday,
      'sunday': sunday,
      'holiday': holiday
     };
  }

  static List<Schedule> listFromJson(List<dynamic> json) {
    return json == null ? new List<Schedule>() : json.map((value) => new Schedule.fromJson(value)).toList();
  }

  static Map<String, Schedule> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Schedule>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Schedule.fromJson(value));
    }
    return map;
  }
}

