import 'package:freezed_annotation/freezed_annotation.dart';

part '{{name.snakeCase()}}_state.freezed.dart';

/// Represents the different screens in the {{name.pascalCase()}} flow
@freezed
sealed class {{name.pascalCase()}}State with _${{name.pascalCase()}}State {
  const factory {{name.pascalCase()}}State.empty() = {{name.pascalCase()}}EmptyState;
}
