class SpeakerModel {
  int? id;
  String? firstName;
  int? age;

  SpeakerModel({this.id, this.firstName, this.age});

  SpeakerModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['firstName'];
    age = json['age'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['firstName'] = firstName;
    data['age'] = age;
    return data;
  }
}