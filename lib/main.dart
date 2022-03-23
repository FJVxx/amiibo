import 'package:amiibo_app/api/peticiones_api.dart';
import 'package:amiibo_app/controller/amiibo.controller.dart';
import 'package:amiibo_app/pages/datos_amiibos.dart';
import 'package:amiibo_app/pages/home_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  Get.lazyPut(() => PeticionesApi());
  Get.lazyPut(() => AmiiboController());
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Amiibo',
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFFEFEFEF)),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePages(),
        '/detalles': (context) => DatosAmiiboPages(),
      },
    );
  }
}
