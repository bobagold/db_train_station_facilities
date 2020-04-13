import 'package:fasta/api.dart';

class FacilitiesApi {
  final DefaultApi _api;

  FacilitiesApi({String accessToken}) : _api = DefaultApi() {
    _api.apiClient.setAccessToken(accessToken);
  }

  Future<List<Object>> find(int stationNumber) async {
    List<Object> results = [];
    if (stationNumber > 0) {
      try {
        // todo throttle requests
        print('stationNumber: $stationNumber');
        var r = await _api.findStationByStationNumber(stationNumber);
        results = r.facilities;
      } on ApiException catch (e) {
        if (e.code == 404) {
          results = [];
        } else {
          results = [e.toString()];
        }
      } catch (e) {
        results = ['Error while using API', e.toString()];
      }
    }
    print('results: $results');
    return results;
  }
}