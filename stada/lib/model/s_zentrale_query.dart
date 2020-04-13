part of stada;

class SZentraleQuery {
  /* offset of the first result object with respect to the total number of  hits produced by the query */
  int offset = null;
  
/* maximum number of result objects to be returned */
  int limit = null;
  
/* total number of hits produced by that query */
  int total = null;
  
/* result objects produced by that query */
  List<SZentrale> result = [];
  
  SZentraleQuery();

  @override
  String toString() {
    return 'SZentraleQuery[offset=$offset, limit=$limit, total=$total, result=$result, ]';
  }

  SZentraleQuery.fromJson(Map<String, dynamic> json) {
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
      SZentrale.listFromJson(json['result'])
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

  static List<SZentraleQuery> listFromJson(List<dynamic> json) {
    return json == null ? new List<SZentraleQuery>() : json.map((value) => new SZentraleQuery.fromJson(value)).toList();
  }

  static Map<String, SZentraleQuery> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SZentraleQuery>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SZentraleQuery.fromJson(value));
    }
    return map;
  }
}

