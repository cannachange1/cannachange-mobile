import 'package:cannachange/helpers/screen_size_accessor.dart';
import 'package:cannachange/store/personal_data_state/personal_data_state.dart';
import 'package:cannachange/ui/widgets/avatar_widget.dart';
import 'package:cannachange/ui/widgets/buttons/main_button.dart';
import 'package:cannachange/ui/widgets/custom_app_bar.dart';
import 'package:cannachange/ui/widgets/rounded_text_input.dart';
import 'package:cannachange/values/values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class ConsumerPersonalDetailsPage extends StatefulWidget {
  const ConsumerPersonalDetailsPage({Key? key}) : super(key: key);

  @override
  State<ConsumerPersonalDetailsPage> createState() =>
      _ConsumerPersonalDetailsPageState();
}

class _ConsumerPersonalDetailsPageState
    extends State<ConsumerPersonalDetailsPage> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  // TextEditingController phoneNumberController = TextEditingController();

  PersonalDataState personalDataState = PersonalDataState();

  @override
  void initState() {
    super.initState();
    getUserInfo();
  }

  void getUserInfo() async {
    fullNameController.text = personalDataState.clientModel!.name!;
    emailController.text = personalDataState.clientModel!.email!;
    print('aaaaa ${fullNameController.text}');
    print('ccc ${personalDataState.clientModel!.name!}');
  }

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
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const AvatarWidget(
                      isDispensary: false,
                    ),
                    const Text(
                      'Name',
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
                      hintText: 'John Smith',
                      obscureText: false,
                      onChanged: (value) {
                        personalDataState.setConsumerName(value);
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
                  ]),
            ),
          ),
        ));
  }
}
