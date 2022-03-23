import 'package:amiibo_app/api/peticiones_api.dart';
import 'package:amiibo_app/models/amiibo_model.dart';
import 'package:get/get.dart';

class AmiiboController extends GetxController {
  @override
  void onInit() {
    obtenerAmiibos();
    super.onInit();
  }

  final peticionesApi = Get.find<PeticionesApi>();
  bool cargando = false;
  List<AmiiboModel> amiibos = [];
  late AmiiboModel amiibo;
  Future<void> obtenerAmiibos() async {
    cargando = true;
    update();
    final response = await peticionesApi.httpGet();
    final listaAmiibos = response.body['amiibo'];
    final listaAmiibosModel = List<AmiiboModel>.from(
        listaAmiibos.map((amiibo) => AmiiboModel.fromJsonMap(amiibo)));
    amiibos.addAll(listaAmiibosModel);
    cargando = false;
    update();
  }
}
