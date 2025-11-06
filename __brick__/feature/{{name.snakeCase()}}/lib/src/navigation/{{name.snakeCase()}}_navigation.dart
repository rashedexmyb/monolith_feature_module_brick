import 'package:auto_route/annotations.dart';

/// Abstract navigation interface for the auth feature
///
/// The app layer will provide the concrete implementation

@AutoRouterConfig()
abstract class {{name.pascalCase()}}Navigation {
  /// Navigate back to previous screen
  void navigateBack();
}
