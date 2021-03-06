// class UserModel {
//   String? uid;
//   String? email;
//   String? firstName;
//   String? secondName;
//
//   UserModel({this.uid, this.email, this.firstName, this.secondName});
//
//   // receiving data from server
//   factory UserModel.fromMap(map) {
//     return UserModel(
//       uid: map['uid'],
//       email: map['email'],
//       firstName: map['firstName'],
//       secondName: map['secondName'],
//     );
//   }
//
//   // sending data to our server
//   Map<String, dynamic> toMap() {
//     return {
//       'uid': uid,
//       'email': email,
//       'firstName': firstName,
//       'secondName': secondName,
//     };
//   }
// }


class LoginDataModel {
  String? email;
  String? password;
  LoginDataModel({this.email, this.password});
}

class SettingsDataModel {
  String? name;
  String? email;
  String? phone;
  String? role;
  String? author;
  SettingsDataModel(
      {this.name, this.email, this.phone, this.role, this.author});
  factory SettingsDataModel.fromJson(Map<String, dynamic> json) {
    return SettingsDataModel(
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
      role: json['role'],
      author: json['author'],
    );
  }
}

class AppointmentDataModel {
  String? appointmentDate;
  String? name;
  String? phone;
  String? comments;
  String? author;
  AppointmentDataModel(
      {this.appointmentDate,
        this.name,
        this.phone,
        this.comments,
        this.author});
  factory AppointmentDataModel.fromJson(Map<String, dynamic> json) {
    return AppointmentDataModel(
      appointmentDate: json['appointmentDate'],
      name: json['name'],
      phone: json['phone'],
      comments: json['comments'],
      author: json['author'],
    );
  }
}

class VisitDataModel {
  String? visitDate;
  String? visitorName;
  String? visitorID;
  String? author;
  VisitDataModel(
      {this.visitDate, this.visitorID, this.visitorName, this.author});
  factory VisitDataModel.fromJson(Map<String, dynamic> json) {
    return VisitDataModel(
      visitDate: json['visitDate'],
      visitorName: json['visitorName'],
      visitorID: json['visitorID'],
      author: json['author'],
    );
  }
}

class PersonDataModel {
  String? name;
  String? idType;
  String? id;
  String? sir;
  String? occupation;
  String?
  warrior; // na, military, healthcareworker, police, firefighter, frontline worker, senior, educator
  String? dob;
  String? gender; // m, f, o
  String? medicalHistory;
  String? race; // n, s, e , w, decline
  String? address;
  String? zipcode;
  String? citiesTravelled;
  String? siblings;
  String? familyMembers;
  String? socialActiveness;
  String? declineParticipation; // y, n
  String? author;
  PersonDataModel(
      {this.name,
        this.idType,
        this.id,
        this.sir,
        this.occupation,
        this.warrior,
        this.dob,
        this.gender,
        this.medicalHistory,
        this.race,
        this.address,
        this.zipcode,
        this.citiesTravelled,
        this.siblings,
        this.familyMembers,
        this.socialActiveness,
        this.declineParticipation,
        this.author});
  factory PersonDataModel.fromJson(Map<String, dynamic> json) {
    return PersonDataModel(
      name: json['name'],
      idType: json['idType'],
      id: json['id'],
      sir: json['sir'],
      occupation: json['occupation'],
      warrior: json['warrior'],
      dob: json['dob'],
      gender: json['gender'],
      medicalHistory: json['medicalHistory'],
      race: json['race'],
      address: json['address'],
      zipcode: json['zipcode'],
      citiesTravelled: json['citiesTravelled'],
      siblings: json['siblings'],
      familyMembers: json['familyMembers'],
      socialActiveness: json['socialActiveness'],
      declineParticipation: json['declineParticipation'],
      author: json['author'],
    );
  }
  factory PersonDataModel.toJson(Map<String, dynamic> json) {
    return PersonDataModel(name: json['name']);
  }
}

class VaccineDataModel {
  String? appointmentDate;
  String? newAppointmentDate;
  String? name;
  String? idType;
  String? id;
  String? sir;
  String? occupation;
  String?
  warrior; // na, military, healthcareworker, police, firefighter, frontline worker, senior, educator
  String? dob;
  String? gender; // m, f, o
  String? medicalHistory;
  String? race; // n, s, e , w, decline
  String? address;
  String? zipcode;
  String? citiesTravelled;
  String? siblings;
  String? familyMembers;
  String? socialActiveness;
  String? declineParticipation; // y, n
  String? author;
  VaccineDataModel(
      {this.appointmentDate,
        this.newAppointmentDate,
        this.name,
        this.idType,
        this.id,
        this.sir,
        this.occupation,
        this.warrior,
        this.dob,
        this.gender,
        this.medicalHistory,
        this.race,
        this.address,
        this.zipcode,
        this.citiesTravelled,
        this.siblings,
        this.familyMembers,
        this.socialActiveness,
        this.declineParticipation,
        this.author});
  factory VaccineDataModel.fromJson(Map<String, dynamic> json) {
    return VaccineDataModel(
      appointmentDate: json['appointmentDate'],
      newAppointmentDate: json['newAppointmentDate'],
      name: json['name'],
      idType: json['idType'],
      id: json['id'],
      sir: json['sir'],
      occupation: json['occupation'],
      warrior: json['warrior'],
      dob: json['dob'],
      gender: json['gender'],
      medicalHistory: json['medicalHistory'],
      race: json['race'],
      address: json['address'],
      zipcode: json['zipcode'],
      citiesTravelled: json['citiesTravelled'],
      siblings: json['siblings'],
      familyMembers: json['familyMembers'],
      socialActiveness: json['socialActiveness'],
      declineParticipation: json['declineParticipation'],
      author: json['author'],
    );
  }
  factory VaccineDataModel.toJson(Map<String, dynamic> json) {
    return VaccineDataModel(name: json['name']);
  }
}

class ScreenArguments {
  final String patientID;

  ScreenArguments(this.patientID);
}

class DBDataModel {
  final int? numRows;
  final bool? error;
  final String? message;
  final List<dynamic>? data;
  const DBDataModel({this.numRows, this.error, this.message, this.data});
  factory DBDataModel.fromJson(Map<String, dynamic> json) {
    return DBDataModel(
        numRows: json['numRows'],
        error: json['error'],
        message: json['message'],
        data: json['data']
            .map((value) => new UserModel.fromJson(value))
            .toList());
  }
}

class AddressDataModel {
  final int? numRows;
  final bool? error;
  final String? message;
  final List<dynamic>? data;
  const AddressDataModel({this.numRows, this.error, this.message, this.data});
  factory AddressDataModel.fromJson(Map<String, dynamic> json) {
    return AddressDataModel(
        numRows: json['numRows'],
        error: json['error'],
        message: json['message'],
        data: json['data']
            .map((value) => new AddressBookModel.fromJson(value))
            .toList());
  }
}

class UserModel {
  final String? userid;
  final String? name;
  final String? jwttoken;
  final String? createdAt;
  final String? updatedAt;
  final String? role;

  const UserModel(
      {this.userid,
        this.name,
        this.jwttoken,
        this.createdAt,
        this.updatedAt,
        this.role});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
        userid: json['userid'],
        name: json['name'],
        jwttoken: json['jwttoken'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
        role: json['role']);
  }
  factory UserModel.toJson(Map<String, dynamic> json) {
    return UserModel(
      userid: json['userid'],
      name: json['name'],
      jwttoken: json['jwttoken'],
    );
  }
}

class AddressBookModel {
  final int? addressid;
  final String? firstName;
  final String? middleName;
  final String? lastName;
  final String? address;
  final String? city;
  final String? country;
  final String? zipCode;
  final String? emailid1;
  final String? emailid2;
  final String? phone1;
  final String? phone2;
  final String? createdAt;
  final String? updatedAt;

  const AddressBookModel(
      {this.addressid,
        this.firstName,
        this.middleName,
        this.lastName,
        this.address,
        this.city,
        this.country,
        this.zipCode,
        this.emailid1,
        this.emailid2,
        this.phone1,
        this.phone2,
        this.createdAt,
        this.updatedAt});

  factory AddressBookModel.fromJson(Map<String, dynamic> json) {
    return AddressBookModel(
        addressid: json['addressid'],
        firstName: json['firstName'],
        middleName: json['middleName'],
        lastName: json['lastName'],
        address: json['address'],
        city: json['city'],
        country: json['country'],
        zipCode: json['zipCode'],
        emailid1: json['emailid1'],
        emailid2: json['emailid2'],
        phone1: json['phone1'],
        phone2: json['phone2'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt']);
  }
  factory AddressBookModel.toJson(Map<String, dynamic> json) {
    return AddressBookModel(
        addressid: json['addressid'],
        firstName: json['firstName'],
        middleName: json['middleName'],
        lastName: json['lastName'],
        address: json['address'],
        city: json['city'],
        country: json['country'],
        zipCode: json['zipCode'],
        emailid1: json['emailid1'],
        emailid2: json['emailid2'],
        phone1: json['phone1'],
        phone2: json['phone2'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt']);
  }
}

