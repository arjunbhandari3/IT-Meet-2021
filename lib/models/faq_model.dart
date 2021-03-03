class FAQModel {
  String title, content;

  FAQModel({this.title, this.content});

  FAQModel.fromJson(Map<dynamic, dynamic> map) {
    if (map == null) {
      return;
    }
    title = map['title'];
    content = map['content'];
  }

  toJson() {
    return {
      'title': title,
      'content': content,
    };
  }
}
