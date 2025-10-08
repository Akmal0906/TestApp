import 'package:injectable/injectable.dart';
import 'package:whitelabel/common/base/base_cubit.dart';
import 'package:whitelabel/domain/repository/home_repo.dart';
import 'package:whitelabel/features/home/cubit/home_state.dart';

@injectable
class HomeCubit extends BaseCubit<HomeBuildable, HomeListenable> {
  HomeCubit(this._homeRepo) : super(const HomeBuildable());
  final HomeRepo _homeRepo;

  getMembership() {
    callable(
      future: _homeRepo.getMembership(),
      buildOnStart: () => buildable.copyWith(loading: true),
      buildOnError: (e) => buildable.copyWith(error: e.toString()),
      buildOnDone: () => buildable.copyWith(loading: false),
      buildOnData: (data) => buildable.copyWith(listMembership: data),
    );
  }

  getUnreadNotificationCount() {
    callable(
      future: _homeRepo.getUnreadNotification(),
      buildOnStart: () => buildable.copyWith(loading: true),
      buildOnError: (e) => buildable.copyWith(error: e.toString()),
      buildOnDone: () => buildable.copyWith(loading: false),
      buildOnData: (data) => buildable.copyWith(notificationCount: data),
    );
  }

  getMerchants() {
    callable(
      future: _homeRepo.merchantList(),
      buildOnStart: () => buildable.copyWith(loading: true),
      buildOnData: (data) => buildable.copyWith(merchants: data),
      buildOnDone: () => buildable.copyWith(loading: false),
      buildOnError: (e) => buildable.copyWith(error: e.toString()),
    );
  }

  getGymList() {
    callable(
      future: _homeRepo.getLocations(),
     // buildOnStart: () => buildable.copyWith(loading: true),
      buildOnData: (data) => buildable.copyWith(listGymModel: data),
      invokeOnData: (data)=>HomeListenable(effect: HomeEffect.gymList),
      //buildOnDone: () => buildable.copyWith(loading: false),
      buildOnError: (e) => buildable.copyWith(error: e.toString()),
    );
  }

  getCheckTerms(){
    callable(future: _homeRepo.checkTerm(),
    buildOnStart: ()=>buildable.copyWith(loading: true),

    );
  }



  changeCurrentIndex(int index) {
    build((buildable) => buildable.copyWith(currentIndex: index));
  }

  changeBranchName(String value) {
    build((buildable) => buildable.copyWith(branchName: value));
  }
}
