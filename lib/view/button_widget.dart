import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../view_model/timertext_provider.dart';
import '../view_model/button_provider.dart';
import '../view_model/button_ext.dart';

class ButtonsContainer extends HookConsumerWidget {
  const ButtonsContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(buttonProvider);

    print('building ButtonsContainer');
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: state.ButtonIconWidget,
    );
  }
}

class StartButton extends ConsumerWidget {
  const StartButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton(
      onPressed: () {
        ref.read(timerProvider.notifier).start();
      },
      child: Icon(Icons.play_arrow),
    );
  }
}

class PauseButton extends ConsumerWidget {
  const PauseButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton(
      onPressed: () {
        ref.read(timerProvider.notifier).pause();
      },
      child: Icon(Icons.pause),
    );
  }
}

class ResetButton extends ConsumerWidget {
  const ResetButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton(
      onPressed: () {
        ref.read(timerProvider.notifier).reset();
      },
      child: Icon(Icons.replay),
    );
  }
}