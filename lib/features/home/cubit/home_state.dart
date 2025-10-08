import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:whitelabel/domain/models/membership/membership.dart';

import '../../../domain/models/gym/gym_model.dart';
import '../../../domain/models/merchant/merchant_model.dart';

part 'home_state.freezed.dart';

@freezed
class HomeBuildable with _$HomeBuildable {
  const factory HomeBuildable({
    @Default(false) bool loading,
    List<Membership>? listMembership,
    @Default('') String error,
    @Default(0) int notificationCount,
    List<MerchantModel>? merchants,
    @Default(0) int currentIndex,
    @Default('') String branchName,
    List<GymModel>? listGymModel,

  }) = _HomeBuildable;
}

@freezed
class HomeListenable with _$HomeListenable {
  const factory HomeListenable({
    HomeEffect? effect,
    List<MerchantModel>? merchants,

  }) = _HomeListenable;
}

enum HomeEffect { hasDialog,terms,gymList }

