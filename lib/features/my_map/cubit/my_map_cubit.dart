import 'package:injectable/injectable.dart';
import 'package:whitelabel/common/base/base_cubit.dart';
import 'package:whitelabel/features/my_map/cubit/my_map_state.dart';


@injectable
class MyMapCubit extends BaseCubit<MyMapBuildable,MyMapListenable> {
  MyMapCubit() : super(const MyMapBuildable());
}

void permission(){

}

