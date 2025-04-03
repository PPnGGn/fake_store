part of 'settings_cubit.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState.light() = _Light;
  const factory SettingsState.dark() = _Dark;
}
