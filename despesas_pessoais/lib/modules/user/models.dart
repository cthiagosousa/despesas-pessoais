import 'package:despesas_pessoais/modules/account/models.dart';

class User {
  String? id;
  String? name;
  String? email;
  String? imageProfile;
  String? birthDate;
  String? phone;
  String? idToken;
  String? refreshToken;
  String? expiresIn;
  bool? registered;
  Account? account;

  User({
    this.id,
    this.name,
    this.email,
    this.imageProfile,
    this.birthDate,
    this.phone,
    this.idToken,
    this.refreshToken,
    this.expiresIn,
    this.registered,
    this.account,
  });

  Map<String, dynamic> toMap() {
    return {
      'localId': id,
      'displayName': name,
      'email': email,
      'image_profile': imageProfile,
      'birth_date': birthDate,
      'phone': phone,
      'idToken': idToken,
      'refreshToken': refreshToken,
      'expiresIn': expiresIn,
      'registered': registered,
      'account': account?.toMap(),
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['localId'],
      name: map['displayName'],
      email: map['email'],
      imageProfile: map['image_profile'],
      birthDate: map['birth_date'],
      phone: map['phone'],
      idToken: map['idToken'],
      refreshToken: map['refreshToken'],
      expiresIn: map['expiresIn'],
      registered: map['registered'],
      account: map['account'] != null ? Account.fromMap(map['account']) : null,
    );
  }
}
