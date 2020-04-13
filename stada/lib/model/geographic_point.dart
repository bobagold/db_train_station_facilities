part of stada;

class GeographicPoint {
  /* the type of the GEOJSON Object e.g. point. Currently only point coordinates without altitude are provided. */
  String type = null;
  
/* first value is longitude, second latitude third altitude (currently not provided) */
  List<double> coordinates = [];
  
  GeographicPoint();

  @override
  String toString() {
    return 'GeographicPoint[type=$type, coordinates=$coordinates, ]';
  }

  GeographicPoint.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type =
        json['type']
    ;
    coordinates =
        (json['coordinates'] as List).map((item) => item as double).toList()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'coordinates': coordinates
     };
  }

  static List<GeographicPoint> listFromJson(List<dynamic> json) {
    return json == null ? new List<GeographicPoint>() : json.map((value) => new GeographicPoint.fromJson(value)).toList();
  }

  static Map<String, GeographicPoint> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GeographicPoint>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GeographicPoint.fromJson(value));
    }
    return map;
  }
}

