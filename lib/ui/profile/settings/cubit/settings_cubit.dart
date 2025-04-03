import 'package:bloc/bloc.dart';
import 'package:fake_store/repositories/settings/settings_repository_interface.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_state.dart';

part 'settings_cubit.freezed.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit({required SettingsRepositoryInterface settingsRepository})
      : _settingsRepository = settingsRepository,
        super(
        const SettingsState.light(),
      ) {
    _checkSelectedTheme();
  }

  final SettingsRepositoryInterface _settingsRepository;

  Future<void> toggleTheme() async {
    if (state is _Light) {
      emit(const _Dark());
    } else {
      emit(const _Light());
    }
    await _settingsRepository.setDarkThemeSelected(SettingsState.dark() == _Dark());
  }

  void _checkSelectedTheme(){
    final appTheme = _settingsRepository.isDarkThemeSelected() ? _Dark() : _Light();
    emit(appTheme);
  }
}
