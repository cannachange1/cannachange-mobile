
import 'package:cannachange/helpers/overlay_helper.dart';
import 'package:cannachange/values/values.dart';
import 'package:mobx/mobx.dart';

part 'store_state.g.dart';

class StoreState = _StoreState with _$StoreState;

abstract class _StoreState with Store {
  @observable
  StoreStates state = StoreStates.initial;

  @observable
  String? errorMessage;

  @observable
  String? successMessage;

  @action
  void changeState(StoreStates state) => this.state = state;

  @action
  void setErrorMessage(String errorMessage) {
    this.errorMessage = errorMessage;
    showOverlay();
  }

  @action
  void showOverlay() {
    if (errorMessage != null && errorMessage!.isNotEmpty) {
      showCustomOverlayNotification(
          color: AppColors.primaryColor, text: errorMessage!);
    }
  }

  @action
  void showSuccessOverlay() {
    if (successMessage != null && successMessage!.isNotEmpty) {
      showCustomOverlayNotification(
          color: AppColors.lightGreenColor, text: successMessage!);
    }
  }

  @action
  void setSuccessMessage(String message) {
    this.successMessage = message;
    showSuccessOverlay();
  }
}

enum StoreStates { initial, loading, success, error, empty }
