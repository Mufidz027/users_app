// ignore_for_file: non_constant_identifier_names

class Owners {
  String? name;
  String? uid;
  String? photoUrl;
  String? email;
  String? ratings;

  Owners({
    this.name,
    this.uid,
    this.photoUrl,
    this.email,
    this.ratings,
  });

  Owners.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    uid = json["uid"];
    photoUrl = json["photoUrl"];
    email = json["email"];
    ratings = json["ratings"];
  }
}
