class SocialModel {
  String name, icon, url;

  SocialModel({this.name, this.icon, this.url});

  SocialModel.fromJson(Map<dynamic, dynamic> map) {
    if (map == null) {
      return;
    }
    name = map['name'];
    icon = map['icon'];
    url = map['url'];
  }

  toJson() {
    return {
      'name': name,
      'icon': icon,
      'url': url,
    };
  }
}
