import 'package:itmeet/models/sponsor_model.dart';

class SponsorCategoryModel {
  String id, title;
  List<SponsorModel> sponsors;

  SponsorCategoryModel({this.id, this.title, this.sponsors});

  SponsorCategoryModel.fromJson(Map<dynamic, dynamic> map) {
    if (map == null) {
      return;
    }
    id = map['id'].toString();
    title = map['title'] != null ? map['title'].toString() : '';
    sponsors = map['sponsors'] != null
        ? List.from(map['sponsors'])
            .map((element) => SponsorModel.fromJson(element))
            .toList()
        : [];
  }

  toJson() {
    return {
      'id': id,
      'title': title,
      'sponsors': sponsors.map((element) => element.toJson()).toList(),
    };
  }
}
