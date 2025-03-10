import 'package:b_be_bee_app/controller/settings_controller.dart';
import 'package:b_be_bee_app/util/native/platform_check.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routerino/routerino.dart';

/// If true, then animations are disabled.
/// Used when the app is in the background.
/// 放在 ProviderContainer 中
/// container.read(sleepProvider.notifier).toFalse();
final sleepProvider = StateNotifierProvider<SleepController,bool>((ref) {
  return SleepController();
}, name: 'sleepProvider');

class SleepController extends StateNotifier<bool>{
  SleepController(): super(false);

  void toTrue() {
    state = true;
  }

  void toFalse() {
    state = false;
  }

  void setState(bool boolState){
    state = boolState;
  }
}

/// If false, then animations are disabled.
final animationProvider = Provider<bool>((ref) {
  final sleeping = ref.watch(sleepProvider);
  final enableAnimations = ref.watch(settingsProvider.select((s) => s.enableAnimations));
  final animations = enableAnimations && !sleeping;

  timeDilation = animations ? 1.0 : 0.00001;
  if (animations) {
    setDefaultRouteTransition();
  } else {
    Routerino.transition = RouterinoTransition.noTransition;
  }

  return animations;
}, name: 'animationProvider');

void setDefaultRouteTransition() {
  // use the "slide" transition for desktop
  if (checkPlatformIsDesktop()) {
    Routerino.transition = RouterinoTransition.cupertino;
  } else {
    Routerino.transition = RouterinoTransition.material;
  }
}
