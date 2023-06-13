import 'package:eden_movies_app/src/app.dart';
import 'package:eden_movies_app/src/dependency_register.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  registerDependencies();
  runApp(const App());
}

void registerErrorHandlers() {
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.presentError(details);
    debugPrint(details.toString());
  };
  PlatformDispatcher.instance.onError = (Object error, StackTrace stack) {
    debugPrint(error.toString());
    return true;
  };
  ErrorWidget.builder = (FlutterErrorDetails details) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text('An error occurred'),
        ),
        body: Center(child: Text(details.toString())),
      );
}
