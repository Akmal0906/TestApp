import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:whitelabel/common/base/base_cubit.dart';
import 'package:whitelabel/features/profile/cubit/profile_state.dart';


@injectable
class ProfileCubit extends BaseCubit<ProfileBuildable,ProfileListenable> {
  ProfileCubit() : super(const ProfileBuildable());
}
