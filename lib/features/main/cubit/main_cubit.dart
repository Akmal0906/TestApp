
import 'package:injectable/injectable.dart';
import 'package:whitelabel/common/base/base_cubit.dart';
import 'package:whitelabel/features/main/cubit/main_state.dart';


@injectable
class MainCubit extends BaseCubit<MainBuildable,MainListenable> {
  MainCubit() : super(const MainBuildable());
}
