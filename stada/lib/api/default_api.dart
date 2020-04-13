part of stada;



class DefaultApi {
  final ApiClient apiClient;

  DefaultApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// This operation provides the master data for german railway stations.
  ///
  /// Get a QueryResult object containing station objects from the database applying to the parameters described below.   QueryResult is a container providing the following information about the query result.   1. the total number of hits   2. the maximum number of hits to be returned in that QueryResult object   3. the offset of the first hit returned in that QueryResult object with respect to all hits returned by the query   4. the result objects    The parameters described below work as filters to reduce the number of hits returned. Some of these parameters must be used only once, others are allowed to be used multiple times. Valid parameters that are allowed to be used only once are _offset_, _limit_ and _logicaloperator_.   All other parameters described below may be used multiple times.  If a parameter is given more than once, the result will contain all hits that match all given parameter values.  E.g. _federalstate&#x3D;berlin&amp;federalstate&#x3D;saarland_ returns all stations in Berlin and Saarland.  If more than one filter criterion is used at the same time, the different filter criteria are interpreted as if they are combined by a logical AND operator, unless the parameter _logicaloperator_ is set to _or_.  E.g. _category&#x3D;1-2&amp;federalstate&#x3D;hamburg_ returns all stations in Hamburg having category 1 or 2.  _category&#x3D;1-2&amp;federalstate&#x3D;hamburg&amp;federalsate&#x3D;hessen_ returns all stations in Hamburg and Hessen having category 1 or 2, while  _searchstring&#x3D;berlin*&amp;federalstate&#x3D;hamburg&amp;federalsate&#x3D;hessen&amp;logicaloperator&#x3D;or_ will return all stations with a name starting with &#39;berlin&#39; as well as all stations in Hamburg and Hessen.  If no &#39;limit&#39; parameter is given, the number of hits (stations) is set to its maximum value of 10000.  To specify parameter values containing German umlauts, the following encoding has to be used   * ä  &#x3D;&gt; %C3%A4   * ö  &#x3D;&gt; %C3%B6   * ü  &#x3D;&gt; %C3%BC   * Ä  &#x3D;&gt; %C3%84   * Ö  &#x3D;&gt; %C3%96   * Ü  &#x3D;&gt; %C3%9C   * ß  &#x3D;&gt; %C3%9F 
  Future<StationQuery> stationsGet({ int offset, int limit, String searchstring, String category, String federalstate, int eva, String ril, String logicaloperator }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/stations".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "offset", offset));
    }
    if(limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }
    if(searchstring != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "searchstring", searchstring));
    }
    if(category != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "category", category));
    }
    if(federalstate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "federalstate", federalstate));
    }
    if(eva != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "eva", eva));
    }
    if(ril != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "ril", ril));
    }
    if(logicaloperator != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "logicaloperator", logicaloperator));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ['oauth'];

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
          apiClient.deserialize(response.body, 'StationQuery') as StationQuery ;
    } else {
      return null;
    }
  }
  /// This operation provides the master data for a german railway station selected by its station-id.
  ///
  /// Get a QueryResult object containing one station object specified by its id.
  Future<StationQuery> stationsIdGet(int id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/stations/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ['oauth'];

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
          apiClient.deserialize(response.body, 'StationQuery') as StationQuery ;
    } else {
      return null;
    }
  }
  /// This operation provides the master data for 3-S-Zentralen.
  ///
  /// Get a QueryResult object containing SZentralen objects from the database applying to the parameters described below.  QueryResult is a container providing the following information about the query result.   1. the total number of hits   2. the maximum number of hits to be returned in that QueryResult object   3. the offset of the first hit returned in that QueryResult object with respect to all hits returned by the query   4. the result objects 
  Future<SZentraleQuery> szentralenGet({ int offset, int limit }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/szentralen".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "offset", offset));
    }
    if(limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ['oauth'];

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
          apiClient.deserialize(response.body, 'SZentraleQuery') as SZentraleQuery ;
    } else {
      return null;
    }
  }
  /// This operation provides the master data for 3-S-Zentralen select by its id.
  ///
  /// Get a QueryResult object containing one SZentralen object specified by its id. 
  Future<SZentraleQuery> szentralenIdGet(int id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/szentralen/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ['oauth'];

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
          apiClient.deserialize(response.body, 'SZentraleQuery') as SZentraleQuery ;
    } else {
      return null;
    }
  }
}
