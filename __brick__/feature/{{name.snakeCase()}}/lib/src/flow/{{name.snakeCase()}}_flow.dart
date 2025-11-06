import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
export 'package:{{name.snakeCase()}}/src/di/di_initializer.dart';
import 'package:{{name.snakeCase()}}/src/flow/{{name.snakeCase()}}_state.dart';

@RoutePage(name: '{{name.pascalCase()}}Route')
class {{name.pascalCase()}}Flow extends StatefulWidget {
  const {{name.pascalCase()}}Flow({ super.key });

  @override
  State<{{name.pascalCase()}}Flow> createState() => _{{name.pascalCase()}}State();
}

class _{{name.pascalCase()}}State extends State<{{name.pascalCase()}}Flow> {

    @override
  void initState() {
    super.initState();
    initialize();
  }

  @override
  void dispose() {
    deinitialize();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return FlowBuilder<AuthState>(
      controller: GetIt.I.get<FlowController<{{name.pascalCase()}}State>>(),
       onGeneratePages: (state, pages) {
        return [];
      },
    );
  }
}
