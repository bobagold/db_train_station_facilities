part of stada;

class SZentrale {
  /* unique identifier for SZentrale */
  int number = null;
  
/* unique identifier of 3SZentrale */
  String name = null;
  

  String publicPhoneNumber = null;
  

  Address address = null;
  
/* public fax number */
  String publicFaxNumber = null;
  
/* internal phone number */
  String internalPhoneNumber = null;
  
/* internal fax number */
  String internalFaxNumber = null;
  
/* mobile phone number (no longer supported!) */
  String mobilePhoneNumber = null;
  
/* email adress of the 3-S-Zentrale (no longer supported!) */
  String email = null;
  
  SZentrale();

  @override
  String toString() {
    return 'SZentrale[number=$number, name=$name, publicPhoneNumber=$publicPhoneNumber, address=$address, publicFaxNumber=$publicFaxNumber, internalPhoneNumber=$internalPhoneNumber, internalFaxNumber=$internalFaxNumber, mobilePhoneNumber=$mobilePhoneNumber, email=$email, ]';
  }

  SZentrale.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    number =
        json['number']
    ;
    name =
        json['name']
    ;
    publicPhoneNumber =
        json['publicPhoneNumber']
    ;
    address =
      
      
      new Address.fromJson(json['address'])
;
    publicFaxNumber =
        json['publicFaxNumber']
    ;
    internalPhoneNumber =
        json['internalPhoneNumber']
    ;
    internalFaxNumber =
        json['internalFaxNumber']
    ;
    mobilePhoneNumber =
        json['mobilePhoneNumber']
    ;
    email =
        json['email']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'number': number,
      'name': name,
      'publicPhoneNumber': publicPhoneNumber,
      'address': address,
      'publicFaxNumber': publicFaxNumber,
      'internalPhoneNumber': internalPhoneNumber,
      'internalFaxNumber': internalFaxNumber,
      'mobilePhoneNumber': mobilePhoneNumber,
      'email': email
     };
  }

  static List<SZentrale> listFromJson(List<dynamic> json) {
    return json == null ? new List<SZentrale>() : json.map((value) => new SZentrale.fromJson(value)).toList();
  }

  static Map<String, SZentrale> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SZentrale>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SZentrale.fromJson(value));
    }
    return map;
  }
}

