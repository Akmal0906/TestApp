import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_state.freezed.dart';

@freezed
class MainBuildable with _$MainBuildable {
  const factory MainBuildable() = _MainBuildable;
}

@freezed
class MainListenable with _$MainListenable {
  const factory MainListenable() = _MainListenable;
}
