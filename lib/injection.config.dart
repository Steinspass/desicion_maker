// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i19;
import 'application/auth/login/login_cubit.dart' as _i13;
import 'application/list_pros&cons/item_creater_updater/item_creater_updater_bloc.dart'
    as _i11;
import 'application/list_pros&cons/list_creater_updater/list_creater_updater_bloc.dart'
    as _i12;
import 'application/list_pros&cons/percent/percent_list_cubit.dart' as _i14;
import 'application/list_pros&cons/remover/remover_cubit.dart' as _i15;
import 'application/list_pros&cons/selected_list/selected_list_cubit.dart'
    as _i16;
import 'application/list_pros&cons/watcher/watcher_cubit.dart' as _i18;
import 'application/theme/theme_app_cubit.dart' as _i17;
import 'domain/auth/i_auth_facade.dart' as _i7;
import 'domain/list_pros&cons/i_prosCons_repository.dart' as _i9;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i8;
import 'infrastructure/auth/firebase_user_mapper.dart' as _i5;
import 'infrastructure/core/firebase_injectable_module.dart' as _i20;
import 'infrastructure/core/firestore_helpers.dart' as _i4;
import 'infrastructure/list_pros&cons/listProsCons_repository.dart' as _i10;

const String _prod = 'prod';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i4.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i5.FirebaseUserMapper>(() => _i5.FirebaseUserMapper());
  gh.lazySingleton<_i6.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i7.IAuthFacade>(
      () => _i8.FirebaseAuthFacade(get<_i3.FirebaseAuth>(),
          get<_i6.GoogleSignIn>(), get<_i5.FirebaseUserMapper>()),
      registerFor: {_prod});
  gh.lazySingleton<_i9.IProsConsRepository>(
      () => _i10.ProsConsRepository(get<_i4.FirebaseFirestore>()),
      registerFor: {_prod});
  gh.factory<_i11.ItemCreaterUpdaterBloc>(
      () => _i11.ItemCreaterUpdaterBloc(get<_i9.IProsConsRepository>()));
  gh.factory<_i12.ListCreaterUpdaterBloc>(
      () => _i12.ListCreaterUpdaterBloc(get<_i9.IProsConsRepository>()));
  gh.factory<_i13.LoginCubit>(() => _i13.LoginCubit(get<_i7.IAuthFacade>()));
  gh.factory<_i14.PercentListCubit>(() => _i14.PercentListCubit());
  gh.factory<_i15.RemoverCubit>(
      () => _i15.RemoverCubit(get<_i9.IProsConsRepository>()));
  gh.factory<_i16.SelectedListCubit>(() => _i16.SelectedListCubit());
  gh.factory<_i17.ThemeAppCubit>(() => _i17.ThemeAppCubit());
  gh.factory<_i18.WatcherCubit>(
      () => _i18.WatcherCubit(get<_i9.IProsConsRepository>()));
  gh.factory<_i19.AuthBloc>(() => _i19.AuthBloc(get<_i7.IAuthFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends _i20.FirebaseInjectableModule {}
