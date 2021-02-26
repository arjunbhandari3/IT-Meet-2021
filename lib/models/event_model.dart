class EventModel {
  String name, logo, url, formURL;

  EventModel({this.name, this.logo, this.url, this.formURL});

  EventModel.fromJson(Map<dynamic, dynamic> map) {
    if (map == null) {
      return;
    }
    name = map['name'];
    logo = map['logo'];
    url = map['url'];
    formURL = map['formURL'];
  }

  toJson() {
    return {
      'name': name,
      'logo': logo,
      'url': url,
      'formURL': formURL,
    };
  }
}
