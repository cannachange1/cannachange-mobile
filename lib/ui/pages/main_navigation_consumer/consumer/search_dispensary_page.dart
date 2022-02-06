import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:cannachange/model/dispensary/dispensary_model.dart';
import 'package:cannachange/ui/widgets/buttons/main_button.dart';
import 'package:cannachange/ui/widgets/custom_app_bar.dart';
import 'package:cannachange/ui/widgets/search_box.dart';
import 'package:cannachange/values/values.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../../helpers/overlay_helper.dart';
import '../../../../router.gr.dart';
import '../../../../store/search/search_state.dart';
import '../../../widgets/dialogs/retailer_description_dialog.dart';

class SearchDispensaryPage extends StatefulWidget {
  const SearchDispensaryPage({Key? key}) : super(key: key);

  @override
  State<SearchDispensaryPage> createState() => _SearchDispensaryPageState();
}

class _SearchDispensaryPageState extends State<SearchDispensaryPage> {
  TextEditingController searchController = TextEditingController();
  SearchState searchState = GetIt.I<SearchState>();
  int pageNumber = 0;
  final PagingController<int, DispensaryModel> _pagingController =
      PagingController(firstPageKey: 0);

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      fetchDispensaries(searchState.searchKey, pageKey);
    });
    super.initState();
    if (defaultTargetPlatform == TargetPlatform.android) {
      AndroidGoogleMapsFlutter.useAndroidViewSurface = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        showBackButton: false,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 10,
          ),
          SearchBox(
            textEditingController: searchController,
            hintText: 'Zip code, city or name',
            onChanged: (txt) {
              searchState.searchKey = txt;
              pageNumber = 0;
              searchState.getDispensaries(txt, pageNumber);
              _pagingController.refresh();
            },
          ),
          const SizedBox(
            height: 18,
          ),
           MainButton(
            label: 'See nearest dispensaries',
            callback: ()=> AutoRouter.of(context).push(const MapRoute()),
          ),
          Observer(
            builder: (_) => PagedListView<int, DispensaryModel>(
              shrinkWrap: true,
              pagingController: _pagingController,
              builderDelegate: PagedChildBuilderDelegate<DispensaryModel>(
                  noItemsFoundIndicatorBuilder: (_) => Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 40),
                        child: Column(
                          children: const [
                            Text(
                              'Empty search',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: AppColors.darkGrey,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                  itemBuilder: (context, item, index) => Container(
                        height: 110,
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 20),
                        child: GestureDetector(
                          onTap: () => item.longitude == null
                              ? showCustomOverlayNotification(
                                  color: AppColors.primaryColor,
                                  text:
                                      'Dispensary location is not specified yet')
                              : showModalBottomSheet(
                                  context: context,
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  builder: (context) =>
                                      DispensaryDescriptionDialog(
                                    dispensaryModel: item,
                                  ),
                                ),
                          child: Card(
                            elevation: 8,
                            color: AppColors.lightGrayColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            clipBehavior: Clip.antiAlias,
                            child: Container(
                              height: 110,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    item.businessName!,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800,
                                        color: AppColors.secondAccent),
                                  ),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            const Text(
                                              'Working hours',
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w600,
                                                  color:
                                                      AppColors.secondAccent),
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  '${item.startHour!} - ',
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: const TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color:
                                                          AppColors.darkGrey),
                                                ),
                                                Text(
                                                  item.endHour!,
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: const TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color:
                                                          AppColors.darkGrey),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            const Text(
                                              'Address',
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w600,
                                                  color:
                                                      AppColors.secondAccent),
                                            ),
                                            Text(
                                              item.address1!,
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: const TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  color: AppColors.darkGrey),
                                            ),
                                            Text(
                                              item.address2!,
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: const TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  color: AppColors.darkGrey),
                                            ),
                                          ],
                                        )
                                      ]),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )),
            ),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  Future<void> fetchDispensaries(String searchKey, int pageKey) async {
    try {
      await searchState.getDispensaries(searchKey, pageKey);
      if (!searchState.hasNextPage) {
        _pagingController.appendLastPage(searchState.filteredDispensariesList);
      } else {
        _pagingController.appendPage(
            searchState.filteredDispensariesList, pageKey + 1);
      }
    } on Exception catch (error) {
      _pagingController.error = error;
    }
  }
}
