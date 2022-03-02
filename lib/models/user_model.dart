//modelo creado en clase independiente
class UserModel {
  String? id;
  String? name;
  String? username;
  String? email;

  UserModel({this.id, this.name, this.username, this.email});

  factory UserModel.fromJsonMap(Map<String, dynamic> jj) {
    return UserModel(
        id: jj['id'],
        name: jj['name'],
        username: jj['username'],
        email: jj['email']);
  }
}
