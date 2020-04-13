part of fasta;

class Station {
  /* Unique identifier of the station. */
  int stationnumber = null;
  
/* Name of the station. */
  String name = null;
  

  List<Facility> facilities = [];
  
  Station();

  @override
  String toString() {
    return 'Station[stationnumber=$stationnumber, name=$name, facilities=$facilities, ]';
  }

  Station.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    stationnumber =
        json['stationnumber']
    ;
    name =
        json['name']
    ;
    facilities =
      Facility.listFromJson(json['facilities'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'stationnumber': stationnumber,
      'name': name,
      'facilities': facilities
     };
  }

  static List<Station> listFromJson(List<dynamic> json) {
    return json == null ? new List<Station>() : json.map((value) => new Station.fromJson(value)).toList();
  }

  static Map<String, Station> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Station>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Station.fromJson(value));
    }
    return map;
  }
}

