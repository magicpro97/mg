import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

void useAddFrameCallbackForFlashScreenHook(void Function() callback) {
  use(_AddFrameCallbackForFlashScreenHook(callback));
}

class _AddFrameCallbackForFlashScreenHook extends Hook<void> {
  final void Function() callback;

  _AddFrameCallbackForFlashScreenHook(this.callback);

  @override
  HookState<void, Hook<void>> createState() => _FrameCallbackState(callback);
}

class _FrameCallbackState
    extends HookState<void, _AddFrameCallbackForFlashScreenHook> {
  final void Function() callback;

  _FrameCallbackState(this.callback);

  @override
  void initHook() {
    super.initHook();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      callback();
    });
  }

  @override
  void build(BuildContext context) {}
}
