import 'package:flutter/material.dart';
import 'package:snape_application/Auth%20Component/authService.dart';

class AuthNotifier extends ChangeNotifier {
  final AuthService authService = new AuthService();

  Future<void>? signUp({
    required BuildContext context,
    required String email,
    required String password,
  }) async {
    try {
      await authService.signUp(
          context: context, email: email, password: password);
    } catch (e) {
      print(e);
    }
  }

  Future<void>? signIn({
    required BuildContext context,
    required String email,
    required String password,
  }) async {
    try {
      await authService.signIn(
          context: context, email: email, password: password);
    } catch (e) {
      print(e);
    }
  }
}
