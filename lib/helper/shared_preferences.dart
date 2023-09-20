import 'package:shared_preferences/shared_preferences.dart';

class SharedPreference {


  saveNumOfPage(int numOfPage) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setInt("num_page", numOfPage);
  }


  getNumOfPage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int? num = prefs.getInt('num_page');
    return num;
  }
}