import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gap/gap.dart';
import 'package:howard_app/routes/route_name.dart';
import 'package:howard_app/utils/app_layout.dart';
import 'package:howard_app/utils/app_styles.dart';
import 'package:howard_app/widgets/rounded_button.dart';
import 'package:howard_app/widgets/text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          height: AppLayout.getScreenHeight(),
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/login-bg.png",
                ),
                fit: BoxFit.fill),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Gap(AppLayout.getHeight(50)),
                Text(
                  "Login",
                  style: Styles.headerStyle1.copyWith(fontSize: 80),
                ),
                Gap(AppLayout.getHeight(30)),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: AppLayout.getWidth(30)),
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        CustomTextField(
                          hint: "Email",
                          keyboardType: TextInputType.emailAddress,
                          controller: emailController,
                          textInputAction: TextInputAction.next,
                          validator: (val) {
                            if (val == null) {
                              return;
                            }
                          },
                        ),
                        Gap(AppLayout.getHeight(20)),
                        CustomTextField(
                          hint: "Password",
                          keyboardType: TextInputType.visiblePassword,
                          controller: passwordController,
                          textInputAction: TextInputAction.done,
                          isObscure: true,
                          validator: (val) {
                            if (val == null || val.isEmpty) {
                              return;
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Gap(AppLayout.getHeight(35)),
                RoundedButton(
                    text: "Login",
                    onPress: () {
                     /* if (formKey.currentState!.validate()) {

                        // Fluttertoast.showToast(
                        //   msg: "Please provide all credentials.",
                        //   gravity: ToastGravity.BOTTOM,
                        //   backgroundColor: Styles.buttonColor.withOpacity(0.5),
                        // );
                      }*/

                      Navigator.pushNamed(context, RouteName.dashboardView);


                    }


                    ),
                Gap(AppLayout.getHeight(20)),
                Text.rich(TextSpan(children: [
                  TextSpan(
                    text: "Not a user? ",
                    style: Styles.textStyle
                        .copyWith(color: Colors.grey, fontSize: 14),
                  ),
                  TextSpan(
                    text: "Create an account?",
                    recognizer: TapGestureRecognizer()..onTap = (){

                      Navigator.pushNamed(context, RouteName.signup1View);
                    },
                    style: Styles.textStyle.copyWith(
                      color: Styles.buttonColor,
                      fontSize: 14,
                      decoration: TextDecoration.underline,
                    ),

                  ),
                ])),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
