import 'package:cannachange/store/personal_data_state/personal_data_state.dart';
import 'package:cannachange/ui/widgets/buttons/main_button.dart';
import 'package:cannachange/ui/widgets/custom_app_bar.dart';
import 'package:cannachange/ui/widgets/rounded_text_input.dart';
import 'package:cannachange/values/values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class AccountDetailsPage extends StatefulWidget {
  const AccountDetailsPage({Key? key}) : super(key: key);

  @override
  State<AccountDetailsPage> createState() => _AccountDetailsPageState();
}

class _AccountDetailsPageState extends State<AccountDetailsPage> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController addressLine1 = TextEditingController();
  TextEditingController addressLine2 = TextEditingController();
  TextEditingController openingHours = TextEditingController();
  TextEditingController emailController = TextEditingController();

  // TextEditingController phoneNumberController = TextEditingController();

  PersonalDataState personalDataState = PersonalDataState();

  @override
  void initState() {
    super.initState();
    //getUserInfo();
  }

  // Future<void> getUserInfo() async {
  //   // await personalDataState.getUser();
  //   // _updateTextController(personalDataState.user!);
  // }
  //
  // _updateTextController(DispensaryModel user) {
  //   nameController.text = user.firstName;
  //   lastNameController.text = user.lastName;
  //   phoneNumberController.text = user.phone;
  //
  //   if (user.email != null) {
  //     emailController.text = user.email!;
  //   }
  //   if (user.country != null) {
  //     countryController.text = user.country!;
  //   }
  //   if (user.city != null) {
  //     cityController.text = user.city!;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Dispensary Name',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                RoundedTextInput(
                  controller: fullNameController,
                  inputType: TextInputType.text,
                  hintText: 'xyz dispensary',
                  obscureText: false,
                  onChanged: (value) {
                    personalDataState.setDispensaryName(value);
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Address Line 1',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                RoundedTextInput(
                  controller: addressLine1,
                  inputType: TextInputType.text,
                  hintText: 'Jane Doe 123 Main Street',
                  obscureText: false,
                  onChanged: (value) {
                    //   personalDataState.setLastName(value);
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Address Line 2',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                RoundedTextInput(
                  controller: emailController,
                  inputType: TextInputType.text,
                  hintText: 'York, NY 11377',
                  obscureText: false,
                  onChanged: (value) {
                    personalDataState.setDispensaryAddressLine2(value);
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Email',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                RoundedTextInput(
                  controller: emailController,
                  inputType: TextInputType.text,
                  hintText: 'Johndoe@gmail.com',
                  obscureText: false,
                  onChanged: (value) {
                    personalDataState.setDispensaryEmail(value);
                  },
                ),
                const SizedBox(
                  height: 40,
                ),
                Center(
                  child: MainButton(
                    callback: () {
                      // personalDataState.updateUser();
                    },
                    label: 'Update Info',
                    // padding: EdgeInsets.zero,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
