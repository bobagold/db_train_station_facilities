part of stada;

class Address {
  
  String street = null;
  

  String houseNumber = null;
  

  int zipcode = null;
  

  String city = null;
  
  Address();

  @override
  String toString() {
    return 'Address[street=$street, houseNumber=$houseNumber, zipcode=$zipcode, city=$city, ]';
  }

  Address.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    street =
        json['street']
    ;
    houseNumber =
        json['houseNumber']
    ;
    zipcode =
        json['zipcode']
    ;
    city =
        json['city']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'street': street,
      'houseNumber': houseNumber,
      'zipcode': zipcode,
      'city': city
     };
  }

  static List<Address> listFromJson(List<dynamic> json) {
    return json == null ? new List<Address>() : json.map((value) => new Address.fromJson(value)).toList();
  }

  static Map<String, Address> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Address>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Address.fromJson(value));
    }
    return map;
  }
}

