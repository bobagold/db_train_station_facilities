# swagger
A RESTful webservice to retrieve data about the operational state of public elevators and escalators in german railway stations operated by DB Station&Service AG.

This Dart package is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 2.0
- Build package: io.swagger.codegen.languages.DartClientCodegen

## Requirements

Dart 1.20.0 or later OR Flutter 0.0.20 or later

## Installation & Usage

### Github
If this Dart package is published to Github, please include the following in pubspec.yaml
```
name: swagger
version: 1.0.0
description: Swagger API client
dependencies:
  swagger:
    git: https://github.com/GIT_USER_ID/GIT_REPO_ID.git
      version: 'any'
```

### Local
To use the package in your local drive, please include the following in pubspec.yaml
```
dependencies:
  swagger:
    path: /path/to/swagger
```

## Tests

TODO

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```dart
import 'package:fasta/api.dart';

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

## Documentation for API Endpoints

All URIs are relative to *https://api.deutschebahn.com/fasta/v2*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*DefaultApi* | [**findFacilities**](docs//DefaultApi.md#findfacilities) | **GET** /facilities | 
*DefaultApi* | [**findStationByStationNumber**](docs//DefaultApi.md#findstationbystationnumber) | **GET** /stations/{stationnumber} | 
*DefaultApi* | [**getFacilityByEquipmentNumber**](docs//DefaultApi.md#getfacilitybyequipmentnumber) | **GET** /facilities/{equipmentnumber} | 


## Documentation For Models

 - [Facility](docs//Facility.md)
 - [Station](docs//Station.md)


## Documentation For Authorization


## UserSecurity

- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header


## Author

michael.binzen@deutschebahn.com

