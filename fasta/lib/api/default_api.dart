part of fasta;



class DefaultApi {
  final ApiClient apiClient;

  DefaultApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Access to public facilities (escalators and elevators) in railway stations
  Future<List<Facility>> findFacilities({ List<String> type, List<String> state, List<int> equipmentnumbers, int stationnumber, List<String> area }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/facilities".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(type != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("csv", "type", type));
    }
    if(state != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("csv", "state", state));
    }
    if(equipmentnumbers != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("csv", "equipmentnumbers", equipmentnumbers));
    }
    if(stationnumber != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "stationnumber", stationnumber));
    }
    if(area != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("csv", "area", area));
    }
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["UserSecurity", 'oauth'];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
        (apiClient.deserialize(response.body, 'List<Facility>') as List).map((item) => item as Facility).toList();
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Returns information about a station (and its corresponding facilities) identified by a stationnumber.
  Future<Station> findStationByStationNumber(int stationnumber) async {
    Object postBody = null;

    // verify required params are set
    if(stationnumber == null) {
     throw new ApiException(400, "Missing required param: stationnumber");
    }

    // create path and map variables
    String path = "/stations/{stationnumber}".replaceAll("{format}","json").replaceAll("{" + "stationnumber" + "}", stationnumber.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["UserSecurity", 'oauth'];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'Station') as Station ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Returns the facility identified by its equipmentnumber.
  Future<Facility> getFacilityByEquipmentNumber(int equipmentnumber) async {
    Object postBody = null;

    // verify required params are set
    if(equipmentnumber == null) {
     throw new ApiException(400, "Missing required param: equipmentnumber");
    }

    // create path and map variables
    String path = "/facilities/{equipmentnumber}".replaceAll("{format}","json").replaceAll("{" + "equipmentnumber" + "}", equipmentnumber.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["UserSecurity", 'oauth'];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'Facility') as Facility ;
    } else {
      return null;
    }
  }
}
