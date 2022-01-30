import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:snape_application/Auth%20Component/credential.dart';
import 'package:snape_application/GlobalState/GlobalState.dart';
import 'package:snape_application/Model/response_model.dart';
import 'package:supabase/supabase.dart';

class AuthService {
  Future signUp({
    required BuildContext context,
    required String? email,
    required String? password,
  }) async {
    GotrueSessionResponse? response =
        await Credential.client.auth.signUp(email!, password!);

    if (response.error != null) {
        // print(response.error);
        ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("${response.error!.message}"),
        ),
      );
    }
    // sign up logic goes here
  }

  Future<void>? signIn({
    required BuildContext context,
    required String? email,
    required String? password,
  }) async {
    GotrueSessionResponse? response = await Credential.client.auth.signIn(
        email: email!,
        password: password!,
        options: AuthOptions(redirectTo: Credential.apiKey));
    if (response.data != null) {       
     GlobalState.responseModel  =  ResponseModel.fromJson(response.data!.toJson());
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Sign in Failed: ${response.error!.message}"),
        ),
      );
    }
    // sign in logic goes here
  }

  Future<bool>? signOut() {
    // sign out logic goes here
  }
}
