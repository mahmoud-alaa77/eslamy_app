

import 'package:dio/dio.dart';
import 'package:my_quran_app/models/prayer_model.dart';

class PrayerTimeService{

  Dio dio =Dio();

 Future<PrayerModel> getPrayerTime()async{
    var response=
    await dio.get("https://api.aladhan.com/v1/timingsByCity/${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}?city=cairo&country=egypt&method=8");

    var jsonData= response.data["data"];


    PrayerModel model=PrayerModel.fromJson(jsonData);
return model ;
  }

}