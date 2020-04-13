import 'package:stada/api.dart';

class StationsApi {
  final DefaultApi _api;

  StationsApi({String accessToken}) : _api = DefaultApi() {
    _api.apiClient.setAccessToken(accessToken);
  }

  Future<List<Object>> find(String search) async {
    List<Object> results = [];
    var minCharacters = 3;
    if (search.isNotEmpty && search.length >= minCharacters) {
      try {
        // todo throttle requests
        print('search: $search');
        var r = await _api.stationsGet(searchstring: '$search*');
        results = r.result;
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
    if (search.length < minCharacters) {
      results = ['at least $minCharacters characters'];
    }
    print('results: $results');
    return results;
  }
}