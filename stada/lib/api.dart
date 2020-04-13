library stada;

import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';

part 'api/default_api.dart';

part 'model/address.dart';
part 'model/aufgabentraeger.dart';
part 'model/eva_number.dart';
part 'model/error.dart';
part 'model/geographic_point.dart';
part 'model/opening_hours.dart';
part 'model/partial.dart';
part 'model/regional_bereich_ref.dart';
part 'model/regionalbereich.dart';
part 'model/ri_l100_identifier.dart';
part 'model/s_zentrale.dart';
part 'model/s_zentrale_query.dart';
part 'model/s_zentrale_ref.dart';
part 'model/schedule.dart';
part 'model/station.dart';
part 'model/station_management.dart';
part 'model/station_management_ref.dart';
part 'model/station_query.dart';
part 'model/timetable_office.dart';


ApiClient defaultApiClient = new ApiClient();
