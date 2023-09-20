
class PrayerModel{

  final String dateOfDay;
  final String arabicDayName;
  final String fajr;
  final String sunrise;
  final String dhuhr;
  final String asr;
  final String maghrib;
  final String isha;


  PrayerModel({
    required this.fajr,
    required this.sunrise,
    required this.dhuhr,
    required this.asr,
    required this.maghrib,
    required this.isha,
    required this.dateOfDay,
    required this.arabicDayName
  });


factory PrayerModel.fromJson(jsonData){
  return PrayerModel(
      dateOfDay: jsonData["date"]["gregorian"]["date"],
      arabicDayName: jsonData["date"]["hijri"]["weekday"]["ar"],

      fajr: jsonData["timings"]["Fajr"],
      sunrise: jsonData["timings"]["Sunrise"],
      dhuhr: jsonData["timings"]["Dhuhr"],
      asr: jsonData["timings"]["Asr"],
      maghrib: jsonData["timings"]["Maghrib"],
      isha: jsonData["timings"]["Isha"]
  );
}
}




