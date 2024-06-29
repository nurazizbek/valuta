
import 'package:dastur/valuta_model.dart';
import 'package:dio/dio.dart';

class Valutaservice {
  Future<dynamic> getUsers() async {
    try {
      Response response =
          await Dio().get('https://cbu.uz/uz/arkhiv-kursov-valyut/json/');
      if (response.statusCode == 200) {
        return (response.data as List)
            .map((e) => Valutamodel.fromJson(e))
            .toList();
      } else {
        return response.statusMessage.toString();
      }
    } on DioError catch (e) {
       return e.message.toString();
    }
  }
}