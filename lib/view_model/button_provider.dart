import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../view_model/timertext_provider.dart';
import '../model/timer.dart';

final _buttonState = Provider<ButtonState>((ref) {
  return ref.watch(timerProvider).buttonState;
});

final buttonProvider = Provider<ButtonState>((ref) {
  return ref.watch(_buttonState);
});