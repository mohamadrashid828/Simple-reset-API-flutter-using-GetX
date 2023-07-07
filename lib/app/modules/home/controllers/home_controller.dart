import 'package:get/get.dart';

import '../prodect_model.dart';
import '../providers/prodect_provider.dart';

class HomeController extends GetxController  with StateMixin<List<Prodect>>{
  //TODO: Implement HomeController

  @override
  void onInit() {
    super.onInit();
    ProdectProvider().getProdect().then((value) {
      change(value,status: RxStatus.success());
    },
    onError: (e){
      change(null,status: RxStatus.error(e));
    }
    
    );
  }

}
