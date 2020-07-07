import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../shared/hooks/hook.dart';

class FlashScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    useAddFrameCallbackForFlashScreenHook();
    return Scaffold(
      body: Container(
        child: Center(child: Text('FlashScreen')),
      ),
    );
  }
}
