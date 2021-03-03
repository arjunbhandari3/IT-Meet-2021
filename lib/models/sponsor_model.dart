class SponsorModel {
  String id, logo, url;

  SponsorModel({this.id, this.logo, this.url});

  SponsorModel.fromJson(Map<dynamic, dynamic> map) {
    if (map == null) {
      return;
    }
    id = map['id'];
    logo = map['logo'];
    url = map['url'];
  }

  toJson() {
    return {
      'id': id,
      'logo': logo,
      'url': url,
    };
  }
}
