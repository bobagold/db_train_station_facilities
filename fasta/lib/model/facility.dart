part of fasta;

class Facility {
  /* Unique identifier of the facility. */
  int equipmentnumber = null;
  
/* Type of the facility. */
  String type = null;
  //enum typeEnum {  ESCALATOR,  ELEVATOR,  };
/* Textual description of the facility. */
  String description = null;
  
/* Longitude component of geocoordinate in WGS84 format. */
  double geocoordX = null;
  
/* Latitude component of geocoordinate in WGS84 format. */
  double geocoordY = null;
  
/* Operational state of the facility. */
  String state = null;
  //enum stateEnum {  ACTIVE,  INACTIVE,  UNKNOWN,  };
/* Detailed description of the state. */
  String stateExplanation = null;
  
/* Number of the station the facility belongs to. */
  int stationnumber = null;
  
  Facility();

  @override
  String toString() {
    return 'Facility[equipmentnumber=$equipmentnumber, type=$type, description=$description, geocoordX=$geocoordX, geocoordY=$geocoordY, state=$state, stateExplanation=$stateExplanation, stationnumber=$stationnumber, ]';
  }

  Facility.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    equipmentnumber =
        json['equipmentnumber']
    ;
    type =
        json['type']
    ;
    description =
        json['description']
    ;
    geocoordX =
        json['geocoordX']
    ;
    geocoordY =
        json['geocoordY']
    ;
    state =
        json['state']
    ;
    stateExplanation =
        json['stateExplanation']
    ;
    stationnumber =
        json['stationnumber']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'equipmentnumber': equipmentnumber,
      'type': type,
      'description': description,
      'geocoordX': geocoordX,
      'geocoordY': geocoordY,
      'state': state,
      'stateExplanation': stateExplanation,
      'stationnumber': stationnumber
     };
  }

  static List<Facility> listFromJson(List<dynamic> json) {
    return json == null ? new List<Facility>() : json.map((value) => new Facility.fromJson(value)).toList();
  }

  static Map<String, Facility> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Facility>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Facility.fromJson(value));
    }
    return map;
  }
}

