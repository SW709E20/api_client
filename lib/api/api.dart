import 'package:api_client/persistence/persistence.dart';
import 'package:api_client/persistence/persistence_client.dart';

class Api {
  /// The base of all requests.
  ///
  /// Example: if set to `http://google.com`, then a get request with url
  /// `/search` will resolve to `http://google.com/search`
  String baseUrl;

  //Constructor
  Api(this.baseUrl,
      [String tokenKey = 'token',
        Duration timeout = const Duration(seconds: 5)]) {
    final Persistence persist = PersistenceClient();
    //Out commented because it does not work, since we do not have this yet.
    // account = AccountApi(
    //HttpClient(
      //  baseUrl: '$baseUrl/v1',
        //persist: persist,
        //tokenKey: tokenKey,
        //timeout: timeout),
    //persist);
  }

    //Deletes the APi
    void dispose() {}
}


