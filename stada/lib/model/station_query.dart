part of stada;

class StationQuery {
  /* offset of the first result object with respect to the total number  of hits produced by the query */
  int offset = null;
  
/* maximum number of result objects to be returned */
  int limit = null;
  
/* total number of hits produced by that query */
  int total = null;
  
/* result objects produced by that query */
  List<Station> result = [];
  
  StationQuery();

  @override
  String toString() {
    return 'StationQuery[offset=$offset, limit=$limit, total=$total, result=$result, ]';
  }

  StationQuery.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    offset =
        json['offset']
    ;
    limit =
        json['limit']
    ;
    total =
        json['total']
    ;
    result =
      Station.listFromJson(json['result'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'offset': offset,
      'limit': limit,
      'total': total,
      'result': result
     };
  }

  static List<StationQuery> listFromJson(List<dynamic> json) {
    return json == null ? new List<StationQuery>() : json.map((value) => new StationQuery.fromJson(value)).toList();
  }

  static Map<String, StationQuery> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StationQuery>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new StationQuery.fromJson(value));
    }
    return map;
  }
}

