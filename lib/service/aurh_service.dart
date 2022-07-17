
import 'package:amazon_clone/constant/global_variables.dart';
import 'package:amazon_clone/constant/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:amazon_clone/constant/error_handling.dart';

import 'package:amazon_clone/models/user.dart';

class AuthService {
  //signup user//
  void signUpUser({
    required BuildContext context,
    required String email,
    required String password,
    required String name,
  }) async {
    //this block provided to see if there is any kind of errors when user ready to sign up.
    try {
      User user = User(
        name: name,
        id: '',
        password: password,
        email: email,
        address: '',
        type: '',
        token: '',
      );

      http.Response res = await http.post(Uri.parse("$uri/api/signup"),
          body: user.toJson(),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },

      );
      httpErrorHandel(
        response: res,
        context: context,
        onSuccess: () {
          showSnackBar(context, "Account has been created ! Log in with the same credintial. ");
        },
      );
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }
}
