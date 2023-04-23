class Admin {
  late String firstName;
  late String lastName;
  late String email;
  late String password;
  late String companyName;
  late String companyReg;
  late String website;
  late String contactNo;
  late String companyAddress;
  late String id;
  late String companyPref;
  late String logo;
  late String country;

  Admin(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.password,
      required this.companyName,
      required this.companyReg,
      required this.website,
      required this.contactNo,
      required this.companyAddress,
      required this.companyPref,
      required this.logo,
      required this.country});

  factory Admin.fromJSON(Map<dynamic, dynamic> data) {
    return Admin(
        id: data['id'],
        firstName: data['firstName'],
        lastName: data['lastName'],
        email: data['email'],
        password: data['password'],
        companyName: data['companyName'],
        companyReg: data['companyReg'],
        website: data['website'],
        contactNo: data['contactNo'],
        companyAddress: data['companyAddress'],
        companyPref: data['companyPref'],
        logo: data['logo'],
        country: data['countryName']);
  }
}
