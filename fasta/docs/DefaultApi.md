# fasta.DefaultApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://api.deutschebahn.com/fasta/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**findFacilities**](DefaultApi.md#findFacilities) | **GET** /facilities | 
[**findStationByStationNumber**](DefaultApi.md#findStationByStationNumber) | **GET** /stations/{stationnumber} | 
[**getFacilityByEquipmentNumber**](DefaultApi.md#getFacilityByEquipmentNumber) | **GET** /facilities/{equipmentnumber} | 


# **findFacilities**
> List<Facility> findFacilities(type, state, equipmentnumbers, stationnumber, area)



Access to public facilities (escalators and elevators) in railway stations

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: UserSecurity
//fasta.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//fasta.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new DefaultApi();
var type = []; // List<String> | Type of the facility.
var state = []; // List<String> | Operational state of the facility.
var equipmentnumbers = []; // List<int> | List of equipmentnumbers to select.
var stationnumber = 789; // int | Number of the station the facilities belong to.
var area = []; // List<String> | Geo coordinate rectangle in WGS84-format to filter facilities by geographical position. Parameters must be 4 numbers exactly as follows: longitudeWest, latitudeSouth, longitudeEast, latitudeNorth.

try { 
    var result = api_instance.findFacilities(type, state, equipmentnumbers, stationnumber, area);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->findFacilities: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | [**List&lt;String&gt;**](String.md)| Type of the facility. | [optional] [default to [&quot;ESCALATOR&quot;,&quot;ELEVATOR&quot;]]
 **state** | [**List&lt;String&gt;**](String.md)| Operational state of the facility. | [optional] [default to [&quot;ACTIVE&quot;,&quot;INACTIVE&quot;,&quot;UNKNOWN&quot;]]
 **equipmentnumbers** | [**List&lt;int&gt;**](int.md)| List of equipmentnumbers to select. | [optional] 
 **stationnumber** | **int**| Number of the station the facilities belong to. | [optional] 
 **area** | [**List&lt;String&gt;**](String.md)| Geo coordinate rectangle in WGS84-format to filter facilities by geographical position. Parameters must be 4 numbers exactly as follows: longitudeWest, latitudeSouth, longitudeEast, latitudeNorth. | [optional] 

### Return type

[**List<Facility>**](Facility.md)

### Authorization

[UserSecurity](../README.md#UserSecurity)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findStationByStationNumber**
> Station findStationByStationNumber(stationnumber)



Returns information about a station (and its corresponding facilities) identified by a stationnumber.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: UserSecurity
//fasta.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//fasta.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new DefaultApi();
var stationnumber = 789; // int | Number of the station to fetch.

try { 
    var result = api_instance.findStationByStationNumber(stationnumber);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->findStationByStationNumber: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stationnumber** | **int**| Number of the station to fetch. | 

### Return type

[**Station**](Station.md)

### Authorization

[UserSecurity](../README.md#UserSecurity)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFacilityByEquipmentNumber**
> Facility getFacilityByEquipmentNumber(equipmentnumber)



Returns the facility identified by its equipmentnumber.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: UserSecurity
//fasta.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//fasta.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new DefaultApi();
var equipmentnumber = 789; // int | Equipmentnumber of the facility to fetch.

try { 
    var result = api_instance.getFacilityByEquipmentNumber(equipmentnumber);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getFacilityByEquipmentNumber: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **equipmentnumber** | **int**| Equipmentnumber of the facility to fetch. | 

### Return type

[**Facility**](Facility.md)

### Authorization

[UserSecurity](../README.md#UserSecurity)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

