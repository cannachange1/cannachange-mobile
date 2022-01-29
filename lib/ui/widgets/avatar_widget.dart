import 'package:cannachange/helpers/storage_helper.dart';
import 'package:cannachange/store/personal_data_state/personal_data_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class AvatarWidget extends StatefulWidget {
  final bool isDispensary;

  const AvatarWidget({
    Key? key,
    required this.isDispensary,
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
    // name = await StorageHelper.getUserName();
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
                          child: widget.isDispensary
                              ? personalDataState.dispensarySelectedImage !=
                                      null
                                  ? Image.file(
                                      personalDataState.clientSelectedImage!,
                                      fit: BoxFit.cover,
                                      height: 90,
                                      width: 90,
                                    )
                                  : Image.network(
                                      personalDataState.dispensaryModel!.image!,
                                      fit: BoxFit.cover,
                                      height: 90,
                                      width: 90,
                                    )
                              : personalDataState.clientSelectedImage !=
                                      null
                                  ? Image.file(
                                      personalDataState.clientSelectedImage!,
                                      fit: BoxFit.cover,
                                      height: 90,
                                      width: 90,
                                    )
                                  : Image.network(
                                      personalDataState.clientModel!.image!,
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
                : const SizedBox()));
  }
}
