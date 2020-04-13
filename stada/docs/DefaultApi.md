# stada.DefaultApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://api.deutschebahn.com/stada/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**stationsGet**](DefaultApi.md#stationsGet) | **GET** /stations | This operation provides the master data for german railway stations.
[**stationsIdGet**](DefaultApi.md#stationsIdGet) | **GET** /stations/{id} | This operation provides the master data for a german railway station selected by its station-id.
[**szentralenGet**](DefaultApi.md#szentralenGet) | **GET** /szentralen | This operation provides the master data for 3-S-Zentralen.
[**szentralenIdGet**](DefaultApi.md#szentralenIdGet) | **GET** /szentralen/{id} | This operation provides the master data for 3-S-Zentralen select by its id.


# **stationsGet**
> StationQuery stationsGet(offset, limit, searchstring, category, federalstate, eva, ril, logicaloperator)

This operation provides the master data for german railway stations.

Get a QueryResult object containing station objects from the database applying to the parameters described below.   QueryResult is a container providing the following information about the query result.   1. the total number of hits   2. the maximum number of hits to be returned in that QueryResult object   3. the offset of the first hit returned in that QueryResult object with respect to all hits returned by the query   4. the result objects    The parameters described below work as filters to reduce the number of hits returned. Some of these parameters must be used only once, others are allowed to be used multiple times. Valid parameters that are allowed to be used only once are _offset_, _limit_ and _logicaloperator_.   All other parameters described below may be used multiple times.  If a parameter is given more than once, the result will contain all hits that match all given parameter values.  E.g. _federalstate=berlin&federalstate=saarland_ returns all stations in Berlin and Saarland.  If more than one filter criterion is used at the same time, the different filter criteria are interpreted as if they are combined by a logical AND operator, unless the parameter _logicaloperator_ is set to _or_.  E.g. _category=1-2&federalstate=hamburg_ returns all stations in Hamburg having category 1 or 2.  _category=1-2&federalstate=hamburg&federalsate=hessen_ returns all stations in Hamburg and Hessen having category 1 or 2, while  _searchstring=berlin*&federalstate=hamburg&federalsate=hessen&logicaloperator=or_ will return all stations with a name starting with 'berlin' as well as all stations in Hamburg and Hessen.  If no 'limit' parameter is given, the number of hits (stations) is set to its maximum value of 10000.  To specify parameter values containing German umlauts, the following encoding has to be used   * ä  => %C3%A4   * ö  => %C3%B6   * ü  => %C3%BC   * Ä  => %C3%84   * Ö  => %C3%96   * Ü  => %C3%9C   * ß  => %C3%9F 

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DefaultApi();
var offset = 789; // int | Offset of the first hit returned in the QueryResult object with respect to all hits returned by the query. If this parameter is omitted, it will be set to 0 internally.
var limit = 789; // int | The maximum number of hits to be returned by that query. If 'limit' is set greater than 10000, it will be reset to 10000 internally and only 10000 hits will be returned.
var searchstring = searchstring_example; // String | String to search for a station name. The wildcards * (indicating an arbitrary number of characters) and ? (indicating one single character) can be used in the search pattern. A comma separated list of station names is also supported (e.g. searchstring=hamburg*,berlin*).
var category = category_example; // String | Filter by station category. Category ranges are supported as well as lists of categories (e.g. category=2-4 or category=1,3-5). The category must be between 1 and 7 otherwise a parameter exception is returned.
var federalstate = federalstate_example; // String | Filter by German federal state. Lists of federal states are also supported (e.g. federalstate=bayern,hamburg). Wildcards are not allowed here.
var eva = 789; // int | Filter by EVA number. Wildcards are not allowed here.
var ril = ril_example; // String | Filter by Ril100-identifier. Wildcards are not allowed here.
var logicaloperator = logicaloperator_example; // String | Logical operator to combine query parameters (default=AND). See above for further details.  Allowed values: or, and

try { 
    var result = api_instance.stationsGet(offset, limit, searchstring, category, federalstate, eva, ril, logicaloperator);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->stationsGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **offset** | **int**| Offset of the first hit returned in the QueryResult object with respect to all hits returned by the query. If this parameter is omitted, it will be set to 0 internally. | [optional] 
 **limit** | **int**| The maximum number of hits to be returned by that query. If &#39;limit&#39; is set greater than 10000, it will be reset to 10000 internally and only 10000 hits will be returned. | [optional] 
 **searchstring** | **String**| String to search for a station name. The wildcards * (indicating an arbitrary number of characters) and ? (indicating one single character) can be used in the search pattern. A comma separated list of station names is also supported (e.g. searchstring&#x3D;hamburg*,berlin*). | [optional] 
 **category** | **String**| Filter by station category. Category ranges are supported as well as lists of categories (e.g. category&#x3D;2-4 or category&#x3D;1,3-5). The category must be between 1 and 7 otherwise a parameter exception is returned. | [optional] 
 **federalstate** | **String**| Filter by German federal state. Lists of federal states are also supported (e.g. federalstate&#x3D;bayern,hamburg). Wildcards are not allowed here. | [optional] 
 **eva** | **int**| Filter by EVA number. Wildcards are not allowed here. | [optional] 
 **ril** | **String**| Filter by Ril100-identifier. Wildcards are not allowed here. | [optional] 
 **logicaloperator** | **String**| Logical operator to combine query parameters (default&#x3D;AND). See above for further details.  Allowed values: or, and | [optional] 

### Return type

[**StationQuery**](StationQuery.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **stationsIdGet**
> StationQuery stationsIdGet(id)

This operation provides the master data for a german railway station selected by its station-id.

Get a QueryResult object containing one station object specified by its id.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DefaultApi();
var id = 56; // int | Station ID (Bahnhofsnummer)

try { 
    var result = api_instance.stationsIdGet(id);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->stationsIdGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Station ID (Bahnhofsnummer) | 

### Return type

[**StationQuery**](StationQuery.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **szentralenGet**
> SZentraleQuery szentralenGet(offset, limit)

This operation provides the master data for 3-S-Zentralen.

Get a QueryResult object containing SZentralen objects from the database applying to the parameters described below.  QueryResult is a container providing the following information about the query result.   1. the total number of hits   2. the maximum number of hits to be returned in that QueryResult object   3. the offset of the first hit returned in that QueryResult object with respect to all hits returned by the query   4. the result objects 

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DefaultApi();
var offset = 789; // int | Offset of the first hit returned in the QueryResult object with respect to all hits returned by the query. If this parameter is omitted, it will be set to 0 internally.
var limit = 789; // int | The maximum number of hits to be returned by that query. If 'limit' is set greater than 10000, it will be reset to 10000 internally and only 100 hits will be returned.

try { 
    var result = api_instance.szentralenGet(offset, limit);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->szentralenGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **offset** | **int**| Offset of the first hit returned in the QueryResult object with respect to all hits returned by the query. If this parameter is omitted, it will be set to 0 internally. | [optional] 
 **limit** | **int**| The maximum number of hits to be returned by that query. If &#39;limit&#39; is set greater than 10000, it will be reset to 10000 internally and only 100 hits will be returned. | [optional] 

### Return type

[**SZentraleQuery**](SZentraleQuery.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **szentralenIdGet**
> SZentraleQuery szentralenIdGet(id)

This operation provides the master data for 3-S-Zentralen select by its id.

Get a QueryResult object containing one SZentralen object specified by its id. 

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DefaultApi();
var id = 56; // int | id of the 3-S-Zentrale.

try { 
    var result = api_instance.szentralenIdGet(id);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->szentralenIdGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id of the 3-S-Zentrale. | 

### Return type

[**SZentraleQuery**](SZentraleQuery.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

