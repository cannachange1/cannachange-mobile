
import 'package:cannachange/helpers/storage_helper.dart';
import 'package:cannachange/store/personal_data_state/personal_data_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class AvatarWidget extends StatefulWidget {
  const AvatarWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<AvatarWidget> createState() => _AvatarWidgetState();
}

class _AvatarWidgetState extends State<AvatarWidget> {
  final personalDataState = GetIt.I<PersonalDataState>();
  String name = '';
  String surname = '';

  @override
  void initState() {
    super.initState();
    // personalDataState.getUser();
    // personalDataState.selectedImage = null;
  //  getUserInfo();
  }

  Future<void> getUserInfo() async {
    name = await StorageHelper.getUserName();
    surname = await StorageHelper.getUserSurname();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
        builder: (_) => GestureDetector(
            onTap: () async {
              await personalDataState.pickImage();
              getUserInfo();
            },
            child: personalDataState.clientModel != null
                ? Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(80),
                          child: personalDataState.clientSelectedImage != null
                              ? Image.file(
                                  personalDataState.clientSelectedImage!,
                                  fit: BoxFit.cover,
                                  height: 90,
                                  width: 90,
                                )
                              : Image.network(
                                  personalDataState.clientModel!.avatar!,
                                  fit: BoxFit.cover,
                                  height: 90,
                                  width: 90,
                                ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          name,
                          style: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  )
                : SizedBox()));

    // personalDataState.user != null
    //     ? SizedBox(
    //         height: 100,
    //         width: 100,
    //         child: ClipRRect(
    //           borderRadius: BorderRadius.circular(80),
    //           child: personalDataState.selectedImage != null
    //               ? Image.file(
    //                   personalDataState.selectedImage!,
    //                   fit: BoxFit.cover,
    //                 )
    //               : personalDataState.user!.imageUrl == null
    //                   ? const SizedBox()
    //                   : Image.network(
    //                       personalDataState.user!.imageUrl!,
    //                       fit: BoxFit.cover,
    //                     ),
    //         ),
    //       )
    // : const SizedBox(),
    // ),
    // );
  }
}
