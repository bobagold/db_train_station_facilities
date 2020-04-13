part of stada;

class RiL100Identifier {
  /* Unique identifier of 'Betriebsstelle' according to Ril100 */
  String rilIdentifier = null;
  
/* is stations main Ril100. Determination of Station&Service AG */
  bool isMain = null;
  
/* permission for steam engines y/n */
  bool hasSteamPermission = null;
  

  GeographicPoint geographicCoordinate = null;
  
  RiL100Identifier();

  @override
  String toString() {
    return 'RiL100Identifier[rilIdentifier=$rilIdentifier, isMain=$isMain, hasSteamPermission=$hasSteamPermission, geographicCoordinate=$geographicCoordinate, ]';
  }

  RiL100Identifier.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    rilIdentifier =
        json['rilIdentifier']
    ;
    isMain =
        json['isMain']
    ;
    hasSteamPermission =
        json['hasSteamPermission']
    ;
    geographicCoordinate =
      
      
      new GeographicPoint.fromJson(json['geographicCoordinate'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'rilIdentifier': rilIdentifier,
      'isMain': isMain,
      'hasSteamPermission': hasSteamPermission,
      'geographicCoordinate': geographicCoordinate
     };
  }

  static List<RiL100Identifier> listFromJson(List<dynamic> json) {
    return json == null ? new List<RiL100Identifier>() : json.map((value) => new RiL100Identifier.fromJson(value)).toList();
  }

  static Map<String, RiL100Identifier> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RiL100Identifier>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RiL100Identifier.fromJson(value));
    }
    return map;
  }
}

