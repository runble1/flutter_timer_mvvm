import 'package:flutter/material.dart';

import '../view/button_widget.dart';
import '../model/timer.dart';

extension ButtonStateExt on ButtonState {
  List<Widget> get ButtonIconWidget {
    switch (this) {
      case ButtonState.initial:
        return [StartButton()];
      case ButtonState.started:
        return [PauseButton(),SizedBox(width: 20),ResetButton(),];
      case ButtonState.paused:
        return [StartButton(),SizedBox(width: 20),ResetButton(),];
      case ButtonState.finished:
        return [ResetButton()];
    }
  }
}