import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocComponent extends StatelessWidget {
  final Bloc bloc;

  const BlocComponent({Key key, @required this.bloc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (BuildContext context) {
      return bloc;
    });
  }
}
