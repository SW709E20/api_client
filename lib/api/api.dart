


class Api{
  /// The base of all requests.
  ///
  /// Example: if set to `http://google.com`, then a get request with url
  /// `/search` will resolve to `http://google.com/search`
  String baseUrl;

  //Constructor
  Api(this.baseUrl,
  [String tokenKey ='token',
  Duration timeout = const Duration(seconds: 5)])

  final Persistence persist = PersistenceClient();

  //Deletes the APi
  void dispose(){}
}


