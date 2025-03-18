import 'datacontoh.dart';
import 'main_controller.dart';

runApp({
  MyApp(),
})

/**
 * Ini Applikasinya
 */
class MyApp extends StatelessWidget {
  @override
  Widget build() {
    return MaterialApp(
      home: MyPage
    );
  }
}

/**
 * Ini Halamannya
 */
class MyPage extends StatefulWidget {
  // ini define controllernya
  late MainController mainController;

  @override
  initState() {
    super.initState();
    mainController = Get.put(MainController());
    mainC
  }

  @override
  Widget build() {
    return Scaffold(
      appbar: AppBar(
        title: Text("Flutter Client Server"),
      ),
      body: SafeArea(
        child: Obx({
          return Column(
            children: [
              
            ],
          );
        }),
      ),
    );
  }
}