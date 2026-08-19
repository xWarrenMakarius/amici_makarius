import 'dart:developer';
import 'dart:io';

void main(List<String> args) {
  if (args.isEmpty) {
    log('Usage: dart run tool/create_bloc.dart register');
    return;
  }

  final name = args.first;
  final className = _toPascalCase(name);

  final dir = Directory('lib/bloc/$name');

  if (!dir.existsSync()) {
    dir.createSync(recursive: true);
  }

  File('${dir.path}/${name}_state.dart').writeAsStringSync('''
part of '${name}_bloc.dart';

sealed class ${className}State {}

class InitialState extends ${className}State {}

class LoadingState extends ${className}State {}

class SuccessState extends ${className}State {}

class ErrorState extends ${className}State {
  final String message;
  ErrorState(this.message);
}
''');

  File('${dir.path}/${name}_event.dart').writeAsStringSync('''
part of '${name}_bloc.dart';

sealed class ${className}Event {}
''');

  File('${dir.path}/${name}_bloc.dart').writeAsStringSync('''
import 'package:flutter_bloc/flutter_bloc.dart';

part '${name}_event.dart';
part '${name}_state.dart';

class ${className}Bloc extends Bloc<${className}Event, ${className}State> {
  ${className}Bloc() : super(InitialState()) {
  }
}
''');

  log('✅ Bloc created successfully!');
}

String _toPascalCase(String value) {
  return value
      .split('_')
      .map((e) => e[0].toUpperCase() + e.substring(1))
      .join();
}