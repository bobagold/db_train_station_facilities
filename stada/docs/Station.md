# swagger.model.Station

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**number** | **int** | unique identifier representing a specific railway station | [optional] [default to null]
**name** | **String** | the stations name | [optional] [default to null]
**mailingAdress** | [**Address**](Address.md) | mailing address of the railway station | [optional] [default to null]
**category** | **int** | the stations category (-1...7). Stations with category -1 or 0 are not in production, e.g. planned, saled, without train stops. | [optional] [default to null]
**priceCategory** | **int** | determines in some respect the price for train stops at a specific station (1..7) | [optional] [default to null]
**federalState** | **String** | german federal state | [optional] [default to null]
**hasParking** | **bool** | public parking y/n | [optional] [default to null]
**hasBicycleParking** | **bool** | public bicycle parking y/n | [optional] [default to null]
**hasPublicFacilities** | **bool** | public facilities y/n | [optional] [default to null]
**hasLockerSystem** | **bool** | public facilities y/n | [optional] [default to null]
**hasLocalPublicTransport** | **bool** | local public transport y/n | [optional] [default to null]
**hasTaxiRank** | **bool** | taxi rank in front of the station y/n | [optional] [default to null]
**hasTravelNecessities** | **bool** | a shop for travel necessities y/n | [optional] [default to null]
**hasSteplessAccess** | [**Partial**](Partial.md) | stepless access is availiable yes, no or partial | [optional] [default to null]
**hasMobilityService** | **String** | values are &#39;no&#39;, &#39;yes, advance notification is requested...&#39; or &#39;yes, advance notification is required...&#39; | [optional] [default to null]
**hasWiFi** | **bool** | public Wi-Fi is available y/n | [optional] [default to null]
**hasTravelCenter** | **bool** | local travel center y/n | [optional] [default to null]
**hasRailwayMission** | **bool** | railway mission y/n | [optional] [default to null]
**hasDBLounge** | **bool** | DB lounge y/n | [optional] [default to null]
**hasLostAndFound** | **bool** | lost and found y/n | [optional] [default to null]
**hasCarRental** | **bool** | car sharing or car rental y/n | [optional] [default to null]
**evaNumbers** | [**List&lt;EVANumber&gt;**](EVANumber.md) | station related EVA-Numbers | [optional] [default to []]
**riL100Identifiers** | [**List&lt;RiL100Identifier&gt;**](RiL100Identifier.md) | station related Ril100s | [optional] [default to []]
**timetableOffice** | [**TimetableOffice**](TimetableOffice.md) |  | [optional] [default to null]
**stationManagement** | [**StationManagementRef**](StationManagementRef.md) |  | [optional] [default to null]
**localServiceStaff** | [**Schedule**](Schedule.md) |  | [optional] [default to null]
**dBinformation** | [**Schedule**](Schedule.md) |  | [optional] [default to null]
**regionalbereich** | [**RegionalBereichRef**](RegionalBereichRef.md) |  | [optional] [default to null]
**szentrale** | [**SZentraleRef**](SZentraleRef.md) |  | [optional] [default to null]
**aufgabentraeger** | [**Aufgabentraeger**](Aufgabentraeger.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


