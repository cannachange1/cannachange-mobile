
import 'package:mobx/mobx.dart';

part 'sessions_state.g.dart';

class SessionsState = _SessionsState with _$SessionsState;

abstract class _SessionsState with Store {

  // final SessionsRepository sessionsRepository = SessionsRepository();
  // final StoreState storeState = StoreState();
  //
  // @observable
  // ObservableList<SessionsModel> sessionList = <SessionsModel>[].asObservable();
  //
  // @action
  // Future<void> getSessions() async {
  //   try {
  //     storeState.changeState(StoreStates.loading);
  //     sessionList.clear();
  //     List<SessionsModel> sessions = await sessionsRepository.getSessions();
  //     sessionList.addAll(sessions);
  //     storeState.changeState(StoreStates.success);
  //   } catch (e) {
  //     storeState.setErrorMessage(e.toString());
  //     storeState.changeState(StoreStates.error);
  //   }
  // }
}
