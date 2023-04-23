import 'package:dotted_border/dotted_border.dart';
// import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
// import 'package:revoo/Admin/admin_controller.dart';
// import 'package:revoo/Widgets/validator.dart';

// import '../../Widgets/colors.dart';
import '../../Widgets/custom_text.dart';
import '../../Widgets/custom_widgets.dart';
// import '../../Widgets/text.dart';
import '../../Widgets/validator.dart';
import '../../Widgets/widgets.dart';
import '../../constants/colors.dart';
// import '../Controllers/super_admin_controller.dart';
// import '../Widgets/custom_dropDown.dart';
// import '../Widgets/snack_bar.dart';

class AdminProfileForm extends StatefulWidget {
  const AdminProfileForm({Key? key}) : super(key: key);

  @override
  State<AdminProfileForm> createState() => _AdminProfileFormState();
}

class _AdminProfileFormState extends State<AdminProfileForm> {
  TextEditingController companyPrefix = TextEditingController();
  TextEditingController companyName = TextEditingController();
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController taxNo = TextEditingController(text: '');
  TextEditingController registerationNo = TextEditingController(text: '');
  TextEditingController website = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController phoneNo = TextEditingController();

  String pattern = r'^(?:[+\d].*\d|\d)';

  Uint8List? _bytesData;
  String? fileName;

  // late CountryDropDown countryDropDown;

  // @override
  // void initState() {
  //   countryDropDown = CountryDropDown(
  //     check: 'false',
  //     selectedValue: '',
  //   );
  //   super.initState();
  // }

  // AdminSettingsController adminController = AdminSettingsController();
  // SuperAdminController superAdminController = Get.put(SuperAdminController());

  List<String> ProductType = <String>[
    'India',
    'Austria',
    'USA',
  ];

  String type = 'India';

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            dialogueHeader('Admin Profile'),
            // Container(
            //   height: Get.height * .085,
            //   width: Get.width,
            //   decoration: BoxDecoration(
            //     color: mainColor,
            //   ),
            //   child: Padding(
            //       padding: const EdgeInsets.all(15),
            //       child: formHeader('Admin Profile')),
            // ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              formTitle('Your First Name'),
                              TextFormField(
                                controller: firstName,
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                validator: (value) =>
                                    CustomValidator.nameValidation(
                                        value: firstName.text,
                                        text: "first name"),
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.title,
                                    color: iconColor,
                                  ),
                                  filled: true,
                                  fillColor: formFillColor,
                                  hintText: 'Enter name',
                                  border: InputBorder.none,
                                ),
                              ),
                            ],
                          ),
                        ),
                        sizedWidth(),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              formTitle('Your Last Name'),
                              TextFormField(
                                controller: lastName,
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                validator: (value) =>
                                    CustomValidator.nameValidation(
                                        value: lastName.text,
                                        text: "last name"),
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.title,
                                    color: iconColor,
                                  ),
                                  filled: true,
                                  fillColor: formFillColor,
                                  hintText: 'Enter name',
                                  border: InputBorder.none,
                                ),
                              ),
                            ],
                          ),
                        ),
                        sizedHeight(),
                      ],
                    ),
                    sizedHeight(),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              formTitle('Your Email'),
                              TextFormField(
                                controller: email,
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                validator: (value) =>
                                    CustomValidator.emailValidation(
                                        value: email.text, text: "email"),
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.mail_outlined,
                                    color: iconColor,
                                  ),
                                  filled: true,
                                  fillColor: formFillColor,
                                  hintText: 'Enter name',
                                  border: InputBorder.none,
                                ),
                              ),
                            ],
                          ),
                        ),
                        sizedWidth(),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              formTitle('Password'),
                              TextFormField(
                                controller: password,
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                validator: (value) =>
                                    CustomValidator.basicTextValidation(
                                        value: password.text, text: "password"),
                                obscureText: true,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.key, color: iconColor),
                                  filled: true,
                                  fillColor: formFillColor,
                                  hintText: 'type.....',
                                  border: InputBorder.none,
                                ),
                              ),
                            ],
                          ),
                        ),
                        sizedHeight(),
                      ],
                    ),
                    sizedHeight(),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              formTitle('Company Prefix'),
                              TextFormField(
                                controller: companyPrefix,
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                validator: (value) =>
                                    CustomValidator.basicTextValidation(
                                        value: companyPrefix.text,
                                        text: "company prefix"),
                                decoration: InputDecoration(
                                  // prefixIcon: Icon(
                                  //   Icons.title,
                                  //   color: iconColor,
                                  // ),
                                  filled: true,
                                  hintText: 'Choose Prefix',
                                  fillColor: formFillColor,
                                  // hintText: 'Enter name',
                                  border: InputBorder.none,
                                ),
                              ),
                            ],
                          ),
                        ),
                        sizedWidth(),
                        Expanded(
                          // child: Text(''),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              formTitle('Company Name'),
                              TextFormField(
                                controller: companyName,
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                validator: (value) =>
                                    CustomValidator.nameValidation(
                                        value: companyName.text,
                                        text: "company name"),
                                decoration: InputDecoration(
                                  // prefixIcon: Icon(
                                  //   Icons.title,
                                  //   color: iconColor,
                                  // ),
                                  filled: true,
                                  hintText: 'Company Name',
                                  fillColor: formFillColor,
                                  // hintText: 'Enter department',
                                  border: InputBorder.none,
                                ),
                              ),
                            ],
                          ),
                        ),
                        sizedHeight(),
                      ],
                    ),
                    sizedHeight(),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              formTitle('Company GSTIN/VAT No.'),
                              TextFormField(
                                controller: taxNo,
                                decoration: InputDecoration(
                                  // prefixIcon: Icon(
                                  //   Icons.mail_outlined,
                                  //   color: iconColor,
                                  // ),
                                  filled: true,
                                  fillColor: formFillColor,
                                  hintText: '6545648455',
                                  border: InputBorder.none,
                                ),
                              ),
                            ],
                          ),
                        ),
                        sizedWidth(),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              formTitle('Company Registration No.'),
                              TextFormField(
                                controller: registerationNo,
                                decoration: InputDecoration(
                                  // prefixIcon:
                                  //     Icon(Icons.phone, color: iconColor),
                                  filled: true,
                                  fillColor: formFillColor,
                                  hintText: 'COM561465465',
                                  border: InputBorder.none,
                                ),
                              ),
                            ],
                          ),
                        ),
                        sizedHeight(),
                      ],
                    ),
                    sizedHeight(),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  formTitle('Website'),
                                  TextFormField(
                                    controller: website,
                                    decoration: InputDecoration(
                                      // prefixIcon: const Icon(Icons.person),
                                      filled: true,
                                      fillColor: formFillColor,
                                      hintText: 'link',
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  formTitle('Phone Number'),
                                  TextFormField(
                                    controller: phoneNo,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly
                                    ],
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    validator: (value) =>
                                        CustomValidator.phoneNumberValidation(
                                            value: phoneNo.text,
                                            text: "phone number"),
                                    maxLength: 14,
                                    onChanged: (value) {
                                      phoneNo.text = '+$value';
                                      // final regex = RegExp(pattern);
                                      // if (regex.hasMatch(value)) {
                                      //   // final match = regex.firstMatch(value);
                                      //   phoneNo.text =
                                      //       regex.stringMatch(value).toString();
                                      //   if (phoneNo.text.length == 1) {
                                      //     phoneNo.text = '+' + phoneNo.text;
                                      //   } else if (phoneNo.text.isNotEmpty &&
                                      //       phoneNo.text.length <= 13) {
                                      //     phoneNo.text =
                                      //         '+' + phoneNo.text.substring(1);
                                      //   }
                                      // } else {
                                      //   phoneNo.text = '';
                                      // }

                                      phoneNo.selection =
                                          TextSelection.fromPosition(
                                              TextPosition(
                                                  offset: phoneNo.text.length));
                                      //.split('').join();
                                    },
                                    decoration: InputDecoration(
                                      counterText: '',
                                      // prefixIcon: const Icon(Icons.person),
                                      filled: true,
                                      fillColor: formFillColor,
                                      hintText: 'enter number',
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        sizedWidth(),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              formTitle('Company Address'),
                              TextFormField(
                                keyboardType: TextInputType.multiline,
                                maxLines: 6,
                                controller: address,
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                validator: (value) =>
                                    CustomValidator.addressValidation(
                                        value: address.text, text: "address"),
                                decoration: InputDecoration(
                                  // prefixIcon: const Icon(Icons.person),
                                  filled: true,
                                  fillColor: formFillColor,
                                  hintText: 'Enter full adress.......',
                                  border: InputBorder.none,
                                ),
                              ),
                            ],
                          ),
                        ),
                        sizedHeight(),
                      ],
                    ),
                    sizedHeight(),
                    Row(
                      children: [
                        // sizedWidth(),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              formTitle('Upload Image(Profile image)'),
                              DottedBorder(
                                dashPattern: const [10, 10],
                                strokeWidth: 1,
                                child: InkWell(
                                    onTap: () async {
                                      // final result =
                                      //     await FilePicker.platform.pickFiles();
                                      // if (result == null) return;

                                      // _bytesData = result.files.single.bytes!;
                                      // fileName = result.files.single.name;
                                      // print(_bytesData);
                                      // openFile(_bytesData);

                                      // final newFile = await saveFilePermanently(file);
                                      // print("NEW FILE : $newFile");
                                    },
                                    child: Container(
                                      height: 40,
                                      color: formFillColor,
                                      child: const Row(
                                        children: [
                                          Icon(Icons.attachment),
                                          Text("Select File")
                                        ],
                                      ),
                                    )),
                              ),

                              // DottedBorder(
                              //   dashPattern: [10, 10],
                              //   strokeWidth: 1,
                              //   child: InkWell(
                              //     onTap: () async{
                              //       final result =
                              //         await FilePicker.platform.pickFiles();
                              //     if (result == null) return;

                              //     _bytesData = result.files.single.bytes!;
                              //     },
                              //     child: Container(
                              //       child: TextFormField(
                              //         readOnly: true,
                              //         decoration: InputDecoration(
                              //           prefixIcon: const Icon(Icons.attachment),
                              //           filled: true,
                              //           fillColor: formFillColor,
                              //           hintText: 'Drop files OR click to select',
                              //           border: InputBorder.none,
                              //         ),
                              //       ),
                              //     ),
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                        sizedWidth(),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              formTitle('Select Country'),
                              // countryDropDown,
                              DropdownButtonFormField<String>(
                                decoration: InputDecoration(
                                    filled: true,
                                    fillColor: formFillColor,
                                    // hintText: 'Select Type',
                                    border: InputBorder.none),
                                value: type,
                                icon: const Icon(
                                  Icons.expand_more,
                                  size: 30,
                                ),
                                style: const TextStyle(
                                    color: Color(0xff605D5D), fontSize: 18),
                                onChanged: (String? value) async {
                                  // This is called when the user selects an item.
                                  // type = value!.toLowerCase();
                                  // await customerController.getProduct(companyId!,
                                  //     type: type);
                                  // log("DUTY : $dropdownValue5");
                                },
                                items:
                                    ProductType.map<DropdownMenuItem<String>>(
                                        (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ],
                          ),

                          // child: Column(
                          //   crossAxisAlignment: CrossAxisAlignment.start,
                          //   children: [
                          //     formTitle('User Email'),
                          //     TextFormField(
                          //       decoration: InputDecoration(
                          //         prefixIcon: Icon(
                          //           Icons.mail_outline,
                          //           color: iconColor,
                          //         ),
                          //         filled: true,
                          //         fillColor: formFillColor,
                          //         hintText: 'user123@gmail.com',
                          //         border: InputBorder.none,
                          //       ),
                          //       keyboardType: TextInputType.number,
                          //     ),
                          //   ],
                          // ),
                        ),
                        sizedHeight(),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: Get.height * .08,
                      width: Get.width * .15,
                      decoration: BoxDecoration(
                          color: mainColor,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8))),
                      child: TextButton(
                          onPressed: () async {
                            // if (_formKey.currentState!.validate()) {
                            //   var data = {
                            //     'firstName': firstName.text,
                            //     'lastName': lastName.text,
                            //     'email': email.text,
                            //     'password': password.text,
                            //     'companyName': companyName.text,
                            //     'companyReg': registerationNo.text,
                            //     'website': website.text,
                            //     'contactNo': phoneNo.text,
                            //     'companyAddress': address.text,
                            //     'companyPref': companyPrefix.text,
                            //     'country_id':
                            //         countryDropDown.countryCode.toString()
                            //   };
                            //   print(countryDropDown.countryCode);
                            //   if (_bytesData.runtimeType == Null) {
                            //     showSnackBar(context, 'Please choose logo.');
                            //     return;
                            //   }
                            //   print(_bytesData!.length);
                            //   int status = await adminController.addAdmin(
                            //       data, _bytesData!, fileName!);
                            //   if (status == 0) {
                            //     showSnackBar(context, 'Action Failed!');
                            //   } else if (status == 1) {
                            //     showSnackBar(
                            //         context, 'Company Added Successfully.');
                            //     Navigator.of(context).pop();
                            //     superAdminController.getAdminList();
                            //   } else if (status == 2) {
                            //     showSnackBar(context, 'Already registered.');
                            //   }
                            // }
                          },
                          child: Text(
                            'Save',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: white),
                          )),
                    ),
                    const SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
