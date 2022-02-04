import 'package:cannachange/helpers/storage_helper.dart';
import 'package:cannachange/store/personal_data_state/personal_data_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class AvatarWidget extends StatefulWidget {
  final bool isDispensary;
  final bool showName;

  const AvatarWidget({
    Key? key,
    required this.isDispensary,
    required this.showName,
  }) : super(key: key);

  @override
  State<AvatarWidget> createState() => _AvatarWidgetState();
}

class _AvatarWidgetState extends State<AvatarWidget> {
  final personalDataState = GetIt.I<PersonalDataState>();

  @override
  void initState() {
    super.initState();
    // personalDataState.getUser();
    // personalDataState.selectedImage = null;
    //  getUserInfo();
  }

  Future<void> getUserInfo() async {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
        builder: (_) =>
            GestureDetector(
                onTap: () async {
                  widget.isDispensary
                      ? await personalDataState.pickDispensaryImage()
                      : await personalDataState.pickConsumerImage();
                  getUserInfo();
                },
                child: widget.isDispensary
                    ? Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(80),
                          child: personalDataState.dispensarySelectedImage !=
                              null
                              ? Image.file(
                            personalDataState.dispensarySelectedImage!,
                            fit: BoxFit.cover,
                            height: 90,
                            width: 90,
                          )
                              : Image.network(
                            personalDataState.dispensaryModel!.image!,
                            fit: BoxFit.cover,
                            height: 90,
                            width: 90,
                          )),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        personalDataState.dispensaryModel!.name!,
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                )
                    : Center(
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
                          personalDataState.clientModel!.image!,
                          fit: BoxFit.cover,
                          height: 90,
                          width: 90,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      if(widget.showName)
                        Text(
                          personalDataState.clientModel!.name!,
                          style: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                    ],
                  ),
                )));
  }
}
