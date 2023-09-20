
class TafseerOfQuranModel{

  final String numOfAya;
  final String ayeText;
  final String tafseerText;

  TafseerOfQuranModel({required this.numOfAya, required this.ayeText, required this.tafseerText});

  factory TafseerOfQuranModel.fromJson(jsonData){

    return TafseerOfQuranModel(
      ayeText: jsonData['arabic_text'],
      numOfAya: jsonData['aya'],
      tafseerText:jsonData['translation']

    );
  }

}