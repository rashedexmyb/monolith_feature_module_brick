import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage(name: '{{name.pascalCase()}}Route')
class {{name.pascalCase()}}Flow extends StatefulWidget {
  const {{name.pascalCase()}}Flow({ super.key });

  @override
  State<{{name.pascalCase()}}Flow> createState() => _{{name.pascalCase()}}State();
}

class _{{name.pascalCase()}}State extends State<{{name.pascalCase()}}Flow> {
  @override
  Widget build(BuildContext context) {
    return Container(color: const Color(0xFFFFE306));
  }
}
