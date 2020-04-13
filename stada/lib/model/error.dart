part of stada;

class Error {
  /* error number */
  int errNo = null;
  
/* error message */
  String errMsg = null;
  
  Error();

  @override
  String toString() {
    return 'Error[errNo=$errNo, errMsg=$errMsg, ]';
  }

  Error.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    errNo =
        json['errNo']
    ;
    errMsg =
        json['errMsg']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'errNo': errNo,
      'errMsg': errMsg
     };
  }

  static List<Error> listFromJson(List<dynamic> json) {
    return json == null ? new List<Error>() : json.map((value) => new Error.fromJson(value)).toList();
  }

  static Map<String, Error> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Error>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Error.fromJson(value));
    }
    return map;
  }
}

