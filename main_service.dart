import 'datacontoh.dart';

class MainService {
  /**
   * Method: GET
   * Access API
   */
  Future<DataContoh> getDataContoh() async {
    final response = await dio.get('https://wsb.arthabuanamandiri.com/tests/');
    return dataContohFromJson(response);
  }
}
