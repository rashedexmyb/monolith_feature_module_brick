import 'package:flow_builder/flow_builder.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:{{name.snakeCase()}}/src/flow/{{name.snakeCase()}}_state.dart';
/// Injectable micro package module for auth feature
///
/// This module is automatically included in the main app's dependency injection.
/// It registers auth-related dependencies that are available globally.
@InjectableInit.microPackage()
void initMicroPackage() {}

/// Register module for third-party and framework dependencies
@module
abstract class {{name.pascalCase()}}RegisterModule {
  /// Register FlowController for auth flow navigation
  /// This is registered as a lazy singleton for the auth flow
  // TODO:  Implement scoped FlowController for auth flow
  // Example:
  @lazySingleton
  FlowController<{{name.pascalCase()}}State> get flowController =>
      FlowController(const {{name.pascalCase()}}State.empty());
}

/// Initialize auth feature dependencies (creates a new scope)
///
/// This function creates a new GetIt scope for auth-related dependencies.
/// These dependencies are scoped to the auth flow and will be disposed
/// when the flow exits. Call this when entering the auth flow.
void initialize() {
  GetIt.I.pushNewScope();
  // Scoped dependencies are automatically registered when the scope is pushed
  // Injectable-annotated classes in this package are available within this scope
}

/// Clean up auth feature dependencies (removes the scope)
///
/// This function pops the GetIt scope for auth dependencies.
/// Call this when leaving the auth flow to clean up resources.
void deinitialize() {
  GetIt.I.popScope();
}
