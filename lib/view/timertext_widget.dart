import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../view_model/provider.dart';

class TimerTextWidget extends HookConsumerWidget {
  const TimerTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final timeLeft = ref.watch(timeLeftProvider);
    //print('building TimerTextWidget $timeLeft');
    return Text(
      timeLeft,
      style: Theme.of(context).textTheme.headline2,
    );
  }
}