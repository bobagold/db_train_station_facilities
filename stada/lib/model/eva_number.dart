part of stada;

class EVANumber {
  /* EVA identifier */
  int number = null;
  
/* station related EVA-Numbers */
  bool isMain = null;
  

  GeographicPoint geographicCoordinate = null;
  
  EVANumber();

  @override
  String toString() {
    return 'EVANumber[number=$number, isMain=$isMain, geographicCoordinate=$geographicCoordinate, ]';
  }

  EVANumber.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    number =
        json['number']
    ;
    isMain =
        json['isMain']
    ;
    geographicCoordinate =
      
      
      new GeographicPoint.fromJson(json['geographicCoordinate'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'number': number,
      'isMain': isMain,
      'geographicCoordinate': geographicCoordinate
     };
  }

  static List<EVANumber> listFromJson(List<dynamic> json) {
    return json == null ? new List<EVANumber>() : json.map((value) => new EVANumber.fromJson(value)).toList();
  }

  static Map<String, EVANumber> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EVANumber>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EVANumber.fromJson(value));
    }
    return map;
  }
}

