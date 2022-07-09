import 'package:amazon_clone/comman/widget/custom_buttons.dart';
import 'package:amazon_clone/comman/widget/custom_input_felds.dart';
import 'package:amazon_clone/constant/global_variables.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

enum Auth {
  signIn,
  signUp,
}

class AuthScreen extends StatefulWidget {
  static const String routeName = '/authScreen';
  const AuthScreen({Key? key}) : super(key: key);

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {

  final SignUpFormkey = GlobalKey<FormState>();
  final SignInFormkey = GlobalKey<FormState>();

  Auth _auth = Auth.signUp;

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController nameController = TextEditingController();

    @override
    void dispose() {
      super.dispose();
      emailController.dispose();
      passwordController.dispose();
      nameController.dispose();
    }

    return Scaffold(
      backgroundColor: Global_variables.greyBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Welcome',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
              ListTile(
                tileColor: _auth == Auth.signUp
                    ? Global_variables.backgroundColor
                    : Global_variables.greyBackgroundColor,
                title: const Text(
                  'Create an account ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Radio(
                  activeColor: Global_variables.secondaryColor,
                  value: Auth.signUp,
                  groupValue: _auth,
                  onChanged: (Auth? val) {
                    setState(() {
                      _auth = val!;
                    });
                  },
                ),
              ),
              if (_auth == Auth.signUp)
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Global_variables.backgroundColor,
                  child: Form(
                    key: SignUpFormkey,
                    child: Column(
                      children: [
                        CustomTextFeld(
                          controller: nameController,
                          hintTex: 'Name',
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        CustomTextFeld(
                          controller: emailController,
                          hintTex: 'Email',
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        CustomTextFeld(
                          controller: passwordController,
                          hintTex: 'Password',
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        CustomButtons(
                          text: 'Sign up ',
                          onPres: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ListTile(
                tileColor: _auth == Auth.signIn
                    ? Global_variables.backgroundColor
                    : Global_variables.greyBackgroundColor,
                title: const Text(
                  'Sign in',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Radio(
                  activeColor: Global_variables.secondaryColor,
                  value: Auth.signIn,
                  groupValue: _auth,
                  onChanged: (Auth? val) {
                    setState(() {
                      _auth = val!;
                    });
                  },
                ),
              ),
              if (_auth == Auth.signIn)
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Global_variables.backgroundColor,
                  child: Form(
                    key: SignUpFormkey,
                    child: Column(
                      children: [
                        CustomTextFeld(
                          controller: emailController,
                          hintTex: 'Email',
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        CustomTextFeld(
                          controller: passwordController,
                          hintTex: 'Password',
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        CustomButtons(
                          text: 'Sign in ',
                          onPres: () {},
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
