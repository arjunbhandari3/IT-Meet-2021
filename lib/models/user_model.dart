class UserModel {
  String userId, email, name, pic, phone;

  UserModel({this.userId, this.email, this.name, this.pic, this.phone});

  UserModel.fromJson(Map<dynamic, dynamic> map) {
    if (map == null) {
      return;
    }
    userId = map['userId'];
    email = map['email'];
    name = map['name'];
    pic = map['pic'];
    phone = map['phone'];
  }

  toJson() {
    return {
      'userId': userId,
      'email': email,
      'name': name,
      'pic': pic,
      'phone': phone,
    };
  }
}
