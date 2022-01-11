import 'package:mobx/mobx.dart';

part 'drivers_state.g.dart';

class DriversState = _DriversState with _$DriversState;

abstract class _DriversState with Store {
  // final DriverRepository driverRepository = DriverRepository();
  // final StoreState storeState = StoreState();
  //
  // @observable
  // ObservableList<DriverModel> driverList = <DriverModel>[].asObservable();
  //
  // @observable
  // DriverModel selectedDriver = DriverModel();
  //
  // @observable
  // DriverModel? selectedDriverSessions;
  //
  // @action
  // Future<void> getDrivers() async {
  //   try {
  //     storeState.changeState(StoreStates.loading);
  //     driverList.clear();
  //     List<DriverModel> drivers = await driverRepository.getDrivers();
  //     driverList.addAll(drivers);
  //     selectedDriver = driverList.first;
  //     storeState.changeState(StoreStates.success);
  //     selectedDriverSessions = driverList.first;
  //   } catch (e) {
  //     storeState.setErrorMessage(e.toString());
  //     storeState.changeState(StoreStates.error);
  //   }
  // }
}
