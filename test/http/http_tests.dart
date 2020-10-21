import 'package:api_client/http/http_mock.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  HttpMock httpMock;

  setUp((){
    httpMock = HttpMock();
  });

  test('Flusher should flush response', (){
    const String message = 'Hello World!';
    final Call call = Call(Method.get, 'http://');
    call.flush.listen(expectAsync1<void, dynamic>((dynamic res){
      expect(res, message);
    }));
    Flusher(call).flush(message);
  });
}