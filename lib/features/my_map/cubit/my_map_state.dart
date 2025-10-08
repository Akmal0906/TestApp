
import 'package:freezed_annotation/freezed_annotation.dart';
part 'my_map_state.freezed.dart';

@freezed
class MyMapBuildable with _$MyMapBuildable {
  const factory MyMapBuildable() = _MyMapBuildable;
}

@freezed
class MyMapListenable with _$MyMapListenable {
  const factory MyMapListenable() = _MyMapListenable;
}
