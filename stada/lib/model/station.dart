part of stada;

class Station {
  /* unique identifier representing a specific railway station */
  int number = null;
  
/* the stations name */
  String name = null;
  
/* mailing address of the railway station */
  Address mailingAdress = null;
  
/* the stations category (-1...7). Stations with category -1 or 0 are not in production, e.g. planned, saled, without train stops. */
  int category = null;
  
/* determines in some respect the price for train stops at a specific station (1..7) */
  int priceCategory = null;
  
/* german federal state */
  String federalState = null;
  
/* public parking y/n */
  bool hasParking = null;
  
/* public bicycle parking y/n */
  bool hasBicycleParking = null;
  
/* public facilities y/n */
  bool hasPublicFacilities = null;
  
/* public facilities y/n */
  bool hasLockerSystem = null;
  
/* local public transport y/n */
  bool hasLocalPublicTransport = null;
  
/* taxi rank in front of the station y/n */
  bool hasTaxiRank = null;
  
/* a shop for travel necessities y/n */
  bool hasTravelNecessities = null;
  
/* stepless access is availiable yes, no or partial */
  Partial hasSteplessAccess = null;
  
/* values are 'no', 'yes, advance notification is requested...' or 'yes, advance notification is required...' */
  String hasMobilityService = null;
  
/* public Wi-Fi is available y/n */
  bool hasWiFi = null;
  
/* local travel center y/n */
  bool hasTravelCenter = null;
  
/* railway mission y/n */
  bool hasRailwayMission = null;
  
/* DB lounge y/n */
  bool hasDBLounge = null;
  
/* lost and found y/n */
  bool hasLostAndFound = null;
  
/* car sharing or car rental y/n */
  bool hasCarRental = null;
  
/* station related EVA-Numbers */
  List<EVANumber> evaNumbers = [];
  
/* station related Ril100s */
  List<RiL100Identifier> riL100Identifiers = [];
  

  TimetableOffice timetableOffice = null;
  

  StationManagementRef stationManagement = null;
  

  Schedule localServiceStaff = null;
  

  Schedule dBinformation = null;
  

  RegionalBereichRef regionalbereich = null;
  

  SZentraleRef szentrale = null;
  

  Aufgabentraeger aufgabentraeger = null;
  
  Station();

  @override
  String toString() {
    return 'Station[number=$number, name=$name, mailingAdress=$mailingAdress, category=$category, priceCategory=$priceCategory, federalState=$federalState, hasParking=$hasParking, hasBicycleParking=$hasBicycleParking, hasPublicFacilities=$hasPublicFacilities, hasLockerSystem=$hasLockerSystem, hasLocalPublicTransport=$hasLocalPublicTransport, hasTaxiRank=$hasTaxiRank, hasTravelNecessities=$hasTravelNecessities, hasSteplessAccess=$hasSteplessAccess, hasMobilityService=$hasMobilityService, hasWiFi=$hasWiFi, hasTravelCenter=$hasTravelCenter, hasRailwayMission=$hasRailwayMission, hasDBLounge=$hasDBLounge, hasLostAndFound=$hasLostAndFound, hasCarRental=$hasCarRental, evaNumbers=$evaNumbers, riL100Identifiers=$riL100Identifiers, timetableOffice=$timetableOffice, stationManagement=$stationManagement, localServiceStaff=$localServiceStaff, dBinformation=$dBinformation, regionalbereich=$regionalbereich, szentrale=$szentrale, aufgabentraeger=$aufgabentraeger, ]';
  }

  Station.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    number =
        json['number']
    ;
    name =
        json['name']
    ;
    mailingAdress =
      
      
      new Address.fromJson(json['mailingAdress'])
;
    category =
        json['category']
    ;
    priceCategory =
        json['priceCategory']
    ;
    federalState =
        json['federalState']
    ;
    hasParking =
        json['hasParking']
    ;
    hasBicycleParking =
        json['hasBicycleParking']
    ;
    hasPublicFacilities =
        json['hasPublicFacilities']
    ;
    hasLockerSystem =
        json['hasLockerSystem']
    ;
    hasLocalPublicTransport =
        json['hasLocalPublicTransport']
    ;
    hasTaxiRank =
        json['hasTaxiRank']
    ;
    hasTravelNecessities =
        json['hasTravelNecessities']
    ;
    hasSteplessAccess =
      
      
      new Partial.fromJson(json['hasSteplessAccess'])
;
    hasMobilityService =
        json['hasMobilityService']
    ;
    hasWiFi =
        json['hasWiFi']
    ;
    hasTravelCenter =
        json['hasTravelCenter']
    ;
    hasRailwayMission =
        json['hasRailwayMission']
    ;
    hasDBLounge =
        json['hasDBLounge']
    ;
    hasLostAndFound =
        json['hasLostAndFound']
    ;
    hasCarRental =
        json['hasCarRental']
    ;
    evaNumbers =
      EVANumber.listFromJson(json['evaNumbers'])
;
    riL100Identifiers =
      RiL100Identifier.listFromJson(json['riL100Identifiers'])
;
    timetableOffice =
      
      
      new TimetableOffice.fromJson(json['timetableOffice'])
;
    stationManagement =
      
      
      new StationManagementRef.fromJson(json['stationManagement'])
;
    localServiceStaff =
      
      
      new Schedule.fromJson(json['localServiceStaff'])
;
    dBinformation =
      
      
      new Schedule.fromJson(json['DBinformation'])
;
    regionalbereich =
      
      
      new RegionalBereichRef.fromJson(json['regionalbereich'])
;
    szentrale =
      
      
      new SZentraleRef.fromJson(json['szentrale'])
;
    aufgabentraeger =
      
      
      new Aufgabentraeger.fromJson(json['aufgabentraeger'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'number': number,
      'name': name,
      'mailingAdress': mailingAdress,
      'category': category,
      'priceCategory': priceCategory,
      'federalState': federalState,
      'hasParking': hasParking,
      'hasBicycleParking': hasBicycleParking,
      'hasPublicFacilities': hasPublicFacilities,
      'hasLockerSystem': hasLockerSystem,
      'hasLocalPublicTransport': hasLocalPublicTransport,
      'hasTaxiRank': hasTaxiRank,
      'hasTravelNecessities': hasTravelNecessities,
      'hasSteplessAccess': hasSteplessAccess,
      'hasMobilityService': hasMobilityService,
      'hasWiFi': hasWiFi,
      'hasTravelCenter': hasTravelCenter,
      'hasRailwayMission': hasRailwayMission,
      'hasDBLounge': hasDBLounge,
      'hasLostAndFound': hasLostAndFound,
      'hasCarRental': hasCarRental,
      'evaNumbers': evaNumbers,
      'riL100Identifiers': riL100Identifiers,
      'timetableOffice': timetableOffice,
      'stationManagement': stationManagement,
      'localServiceStaff': localServiceStaff,
      'DBinformation': dBinformation,
      'regionalbereich': regionalbereich,
      'szentrale': szentrale,
      'aufgabentraeger': aufgabentraeger
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

