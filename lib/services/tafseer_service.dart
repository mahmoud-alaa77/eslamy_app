


import 'package:dio/dio.dart';
import 'package:my_quran_app/models/tafseer_quran_model.dart';


class TafseerOfQuranService{

  Dio dio =Dio();

  Future<List<TafseerOfQuranModel>>getTafseer({required int numOfSurah})async{
    var response=
    await dio.get("https://quranenc.com/api/v1/translation/sura/arabic_moyassar/$numOfSurah");

    var jsonData= response.data["result"];

    List<TafseerOfQuranModel> listOfAya=[];



    for(int i=0;i<jsonData.length;i++) {
      TafseerOfQuranModel model = TafseerOfQuranModel.fromJson(jsonData[i]);
      listOfAya.add(model);
    }
    return listOfAya;
  }
}