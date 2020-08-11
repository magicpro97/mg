import 'package:mg/core/bloc/text_field_bloc.dart';

class TextFieldBlocValidator {
  static List<String> getValidValue(List<TextFieldBloc> blocs) {
    final List<String> values = [];

    for (var bloc in blocs) {
      final String value = bloc.state.when(
        normal: (value) => value,
        error: (error) => null,
      );

      if (value?.isEmpty ?? true) {
        bloc.onTextChange('');
      } else {
        values.add(value);
      }
    }
    return values;
  }
}
