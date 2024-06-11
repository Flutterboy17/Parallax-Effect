import 'package:parallex_effect_movie/utils/app_assets.dart';

class DataModel {
  final String image;
  final String title;
  final String rating;

  DataModel({required this.image, required this.title, required this.rating});
}

List<DataModel> dataList = [
  DataModel(image: arizona, title: "Antelope Canyon, Arizona", rating: "4.7"),
  DataModel(image: india, title: "Jaipur, India", rating: "4.8"),
  DataModel(image: brazil, title: "Iguazu Falls, Brazil", rating: "4.6"),
  DataModel(image: turkey, title: "Cappadocia, Turkey", rating: "4.9"),
  DataModel(image: france, title: "Provence, France", rating: "4.7"),
  DataModel(image: namibia, title: "Namib Desert, Namibia", rating: "4.7"),
  DataModel(image: seychelles, title: "Seychelles", rating: "4.8"),
  DataModel(image: japan, title: "Kyoto, Japan", rating: "4.7"),
];
