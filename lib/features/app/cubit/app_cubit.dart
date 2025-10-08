import 'package:injectable/injectable.dart';
import 'package:whitelabel/common/base/base_cubit.dart';
import 'package:whitelabel/features/app/cubit/app_state.dart';

import '../../../domain/repository/profile_repo.dart';


@injectable
class AppCubit extends BaseCubit<AppBuildable,AppListenable> {
  AppCubit(this.profileRepo) : super(const AppBuildable());
  final ProfileRepo profileRepo;

  void getUser() => streamable(stream: profileRepo.getUser());



}
