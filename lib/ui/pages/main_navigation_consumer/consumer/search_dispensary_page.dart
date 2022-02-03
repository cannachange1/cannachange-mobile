import 'dart:async';

import 'package:cannachange/model/dispensary/dispensary_model.dart';
import 'package:cannachange/store/dashboard/dashboard_state.dart';
import 'package:cannachange/store/personal_data_state/personal_data_state.dart';
import 'package:cannachange/ui/widgets/buttons/main_button.dart';
import 'package:cannachange/ui/widgets/rounded_text_input.dart';
import 'package:cannachange/ui/widgets/search_box.dart';
import 'package:cannachange/values/values.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../../store/search/search_state.dart';
import '../../../widgets/dialogs/retailer_description_dialog.dart';

class SearchDispensaryPage extends StatefulWidget {
  const SearchDispensaryPage({Key? key}) : super(key: key);

  @override
  State<SearchDispensaryPage> createState() => _SearchDispensaryPageState();
}

class _SearchDispensaryPageState extends State<SearchDispensaryPage> {
  final Completer<GoogleMapController> _controller = Completer();
  TextEditingController searchController = TextEditingController();
  final searchState = GetIt.I<SearchState>();

  PagingController<int, DispensaryModel> pagingController =
      PagingController(firstPageKey: 0);

  // static const CameraPosition _kGooglePlex = CameraPosition(
  //   target: LatLng(37.42796133580664, -122.085749655962),
  //   zoom: 14.4746,
  // );

  // static const CameraPosition _kLake = CameraPosition(
  //     bearing: 192.8334901395799,
  //     target: LatLng(37.43296265331129, -122.08832357078792),
  //     tilt: 59.440717697143555,
  //     zoom: 19.151926040649414);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (defaultTargetPlatform == TargetPlatform.android) {
      AndroidGoogleMapsFlutter.useAndroidViewSurface = true;
    }
    pagingController.addPageRequestListener((key) => () {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            SearchBox(
              textEditingController: searchController,
              hintText: 'Zip code, city or name',
            ),
            PagedListView(
              pagingController: pagingController,
              builderDelegate: PagedChildBuilderDelegate<dynamic>(
                  noItemsFoundIndicatorBuilder: (_) => Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 40),
                        child: Column(
                          children: const [
                            Text(
                              'No items found',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: AppColors.darkGrey,
                                  fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Check back regularly as our L&L family is always growing.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: AppColors.darkGrey,
                                  fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                      ),
                  itemBuilder: (context, item, index) => Container(
                        margin: EdgeInsets.only(
                          bottom: index == pagingController.itemList!.length - 1
                              ? 55
                              : 0,
                        ),
                        height: 130,
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 10),
                        child: GestureDetector(
                          onTap: () => showModalBottomSheet(
                            context: context,
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            builder: (context) => DispensaryDescriptionDialog(
                              dispensaryModel: item,
                            ),
                          ),
                          child: Card(
                            color: AppColors.secondAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            clipBehavior: Clip.antiAlias,
                            child: Container(
                              height: 100,
                              padding: const EdgeInsets.all(0),
                              child: Stack(
                                children: [
                                  Row(children: [
                                    const Spacer(),
                                    Expanded(
                                      flex: 14,
                                      child: Container(
                                        padding: const EdgeInsets.only(top: 5),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Text(
                                              item.businessName,
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: const TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w800,
                                                  color:
                                                      AppColors.secondAccent),
                                            ),
                                            const SizedBox(
                                              height: 8,
                                            ),
                                            if (!item.isOnline)
                                              Text(
                                                item.address1 ?? 'No address',
                                                maxLines: 2,
                                                style: const TextStyle(
                                                    color:
                                                        AppColors.secondAccent),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            const SizedBox(
                                              height: 4,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 11,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                  item.imageLink ??
                                                      'https://localandloyal.blob.core.windows.net/upload/imageNotFound.jpg',
                                                ),
                                                fit: BoxFit.cover)),
                                      ),
                                    ),
                                  ]),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )),
            )
          ],
        ),
      ),
    );
  }
  Future<void> fetchOnlinePage(String searchKey, int pageKey) async {
    try {
      await searchState.getDispensaries(searchKey, pageKey);
      if (!searchState.hasNextPage) {
        pagingController.appendLastPage(searchState.filteredDispensariesList);
      } else {
        //final nextPageKey = pageKey + res.dealList.length;
        pagingController.appendPage(
        searchState.filteredDispensariesList,
            pageKey + 1);
      }
    } on Exception catch (error) {
      pagingController.error = error;
    }
  }
}
