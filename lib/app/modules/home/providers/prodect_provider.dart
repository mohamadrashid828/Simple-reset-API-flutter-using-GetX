import 'package:get/get.dart';

import '../prodect_model.dart';

class ProdectProvider extends GetConnect {
  @override
 

  Future<List<Prodect>> getProdect() async {
    final response = await get('https://fakestoreapi.com/products');
    if (!(response.hasError)) {
     
      List d= response.body as List;
      List<Prodect> res=d.map((e) => Prodect.fromJson(e)).toList();
    
      // Prodect.fromJson(response.body[0]);
      return res;
    } else {
      Future.error("error");
       return [];
    }
  }

  Future<Response<Prodect>> postProdect(Prodect prodect) async =>
      await post('prodect', prodect);
  Future<Response> deleteProdect(int id) async => await delete('prodect/$id');
}
