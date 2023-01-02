import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gap/gap.dart';
import 'package:howard_app/routes/route_name.dart';
import 'package:howard_app/utils/app_layout.dart';
import 'package:howard_app/utils/app_styles.dart';
import 'package:howard_app/widgets/rounded_button.dart';
import 'package:howard_app/widgets/text_field.dart';
import 'package:intl/intl.dart';


class SignUpScreen1 extends StatefulWidget {
  const SignUpScreen1({Key? key}) : super(key: key);

  @override
  State<SignUpScreen1> createState() => _SignUpScreen1State();
}

class _SignUpScreen1State extends State<SignUpScreen1> {
  final formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController dobController = TextEditingController();


  int selectedRadio = 0;

  void setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          height: AppLayout.getScreenHeight(),
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/signup-bg.png",
                ),
                fit: BoxFit.fill),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Gap(AppLayout.getHeight(10)),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: AppLayout.getWidth(10)),
                    child: InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(

                        height: 48,
                        width: 48,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Styles.backButtonColor,
                        ),
                        child: Center(
                          child: Icon(Icons.arrow_back),
                        ),
                      ),
                    ),
                  ),
                ),


                Gap(AppLayout.getHeight(5)),
                Text(
                  "Create an\naccount",
                  style: Styles.headerStyle1.copyWith(fontSize: 45),
                  textAlign: TextAlign.center,

                ),
                Gap(AppLayout.getHeight(20)),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(30)),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adiquis nostrud.ullamco laboris nisi ut aliquip.",
                    style: Styles.textStyle,
                    textAlign: TextAlign.center,
                  ),
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
                          textInputAction: TextInputAction.next,
                          isObscure: true,
                          validator: (val) {
                            if (val == null || val.isEmpty) {
                              return;
                            }
                            return null;
                          },
                        ),
                        Gap(AppLayout.getHeight(20)),

                      CustomTextField(

                        hint: "Date of birth",
                        keyboardType: TextInputType.visiblePassword,
                        controller: dobController,
                        textInputAction: TextInputAction.done,

                        validator: (val) {
                          if (val == null || val.isEmpty) {
                            return;
                          }
                          return null;
                        },

                        onTap: ( ) async{
                          DateTime? pickedDate = await showDatePicker(
                              context: context, initialDate: DateTime.now(),
                              firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
                              lastDate: DateTime(2101)
                          );
                          if(pickedDate != null ){
                            print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
                            String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
                            print(formattedDate); //formatted date output using intl package =>  2021-03-16
                            //you can implement different kind of Date Format here according to your requirement

                            setState(() {
                              dobController.text = formattedDate; //set output date to TextField value.
                            });
                          }else{
                            print("Date is not selected");
                          }

                        },
                      ),





                      ],
                    ),
                  ),
                ),
                Gap(AppLayout.getHeight(35)),





                Container(
                  height: AppLayout.getHeight(30),
                  child: RadioListTile(

                    title: Text(
                      'Male',
                      style: Styles.textStyle.copyWith(color: Styles.buttonColor),
                    ),
                    value: 0,
                    groupValue: selectedRadio,
                    activeColor: Styles.buttonColor,
                    onChanged: (int? val) {
                      setSelectedRadio(val!);
                    },
                  ),
                ),
                Container(
                  height: AppLayout.getHeight(30),
                  child: RadioListTile(
                    title: Text(
                      'Female',
                      style: Styles.textStyle.copyWith(color: Styles.buttonColor),
                    ),
                    value: 1,
                    groupValue: selectedRadio,
                    activeColor: Styles.buttonColor,
                    onChanged: (int? val) {
                      setSelectedRadio(val!);
                    },
                  ),
                ),


                Gap(AppLayout.getHeight(30)),
                RoundedButton(
                    text: "Next",
                    onPress: () {

                      /*if(emailController.text.isEmpty || !emailController.text.contains("@")){
                        Fluttertoast.showToast(
                          msg: "Please provide valid email address.",
                          gravity: ToastGravity.BOTTOM,
                          backgroundColor: Styles.buttonColor.withOpacity(0.5),
                        );
                      }

                      else if(passwordController.text.isEmpty || passwordController.text.length < 6){
                        Fluttertoast.showToast(
                          msg: "Password must be at least 6 characters.",
                          gravity: ToastGravity.BOTTOM,
                          backgroundColor: Styles.buttonColor.withOpacity(0.5),
                        );
                      }else{
                        Navigator.pushNamed(context,RouteName.signup2View);
                      }*/

                      Navigator.pushNamed(context,RouteName.signup2View);


                    }),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
