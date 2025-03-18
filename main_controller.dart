import 'datacontoh.dart';
import 'main_service.dart';

class MainController extends GetxController {
  // variable data sebagai state dinamis yang berefek kepada view / page
  final _data = DataContoh(status: "", message: "", data: null).obs;
  // ini getter
  get data => _data.value;
  // ini setter
  set data(value) => _data.value = value;

  /**
   * Ambil data yang tersedia di main_service.dart
   */
  getData() async {
    this.data = await MainService().getDataContoh();
  }
}
