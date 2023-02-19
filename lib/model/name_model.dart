class NamesModel {
  String? name;
  int? age;
  String? profession;
  String? image;
  Details? details;

  NamesModel({this.name, this.age, this.profession, this.image, this.details});

  NamesModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    age = json['age'];
    profession = json['profession'];
    image = json['image'];
    details =
        json['details'] != null ? new Details.fromJson(json['details']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['age'] = this.age;
    data['profession'] = this.profession;
    data['image'] = this.image;
    if (this.details != null) {
      data['details'] = this.details!.toJson();
    }
    return data;
  }
}

class Details {
  String? place;

  Details({this.place});

  Details.fromJson(Map<String, dynamic> json) {
    place = json['place'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['place'] = this.place;
    return data;
  }
}
