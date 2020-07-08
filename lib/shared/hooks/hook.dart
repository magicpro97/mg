import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

void useAddFrameCallbackForFlashScreenHook(String route) {
  use(_AddFrameCallbackForFlashScreenHook(route));
}

class _AddFrameCallbackForFlashScreenHook extends Hook<void> {
  final String route;

  _AddFrameCallbackForFlashScreenHook(this.route);

  @override
  HookState<void, Hook<void>> createState() => _FrameCallbackState(route);
}

class _FrameCallbackState
    extends HookState<void, _AddFrameCallbackForFlashScreenHook> {
  final String route;

  _FrameCallbackState(this.route);

  @override
  void initHook() {
    super.initHook();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      Navigator.pushReplacementNamed(context, route);
    });
  }

  @override
  void build(BuildContext context) {}
}
