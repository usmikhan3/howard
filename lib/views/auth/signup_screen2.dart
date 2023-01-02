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


class SignUpScreen2 extends StatefulWidget {
  const SignUpScreen2({Key? key}) : super(key: key);

  @override
  State<SignUpScreen2> createState() => _SignUpScreen2State();
}

class _SignUpScreen2State extends State<SignUpScreen2> {
  final formKey = GlobalKey<FormState>();

  final TextEditingController text1Controller = TextEditingController();
  final TextEditingController text2Controller = TextEditingController();



  int selectedRadio = 0;

  void setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding:  EdgeInsets.symmetric(horizontal: AppLayout.getWidth(10)),
          child: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(


              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Styles.backButtonColor,
              ),
              child: const Center(
                child: Icon(Icons.arrow_back,color: Colors.black,size: 18,),
              ),
            ),
          ),
        ),
      ),
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
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [






                Text(
                  "Please tell\n us more",
                  style: Styles.headerStyle1.copyWith(fontSize: 45),
                  textAlign: TextAlign.center,

                ),
                Gap(AppLayout.getHeight(20)),



                //TODO: FIRST RADIO OPTIONS
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(30)),
                      child: Text(
                        "What do you hope gain by taking this Holistic Journey?",
                        style: Styles.textStyle.copyWith(fontWeight: FontWeight.w500),

                      ),
                    ),
                    Container(
                      height: AppLayout.getHeight(30),
                      child: RadioListTile(
                        title: Text(
                          'Relaxation/Stress Relief',
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
                          'Weight Loss',
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
                    Container(
                      height: AppLayout.getHeight(30),
                      child: RadioListTile(
                        title: Text(
                          'Enhance my personal wellbeing',
                          style: Styles.textStyle.copyWith(color: Styles.buttonColor),
                        ),
                        value: 2,
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
                          'Enhance my professional life',
                          style: Styles.textStyle.copyWith(color: Styles.buttonColor),
                        ),
                        value: 3,
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
                          'Have more fun/be more creative',
                          style: Styles.textStyle.copyWith(color: Styles.buttonColor),
                        ),
                        value: 4,
                        groupValue: selectedRadio,
                        activeColor: Styles.buttonColor,
                        onChanged: (int? val) {
                          setSelectedRadio(val!);
                        },
                      ),
                    ),
                  ],
                ),



                Gap(AppLayout.getHeight(30)),



                //TODO: FIRST QUESTION
                Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(30)),
                      child: Text(
                        "What do you enjoy most about your life?",
                        style: Styles.textStyle.copyWith(fontWeight: FontWeight.w500),

                      ),
                    ),
                    Gap(AppLayout.getHeight(10)),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(30)),
                      child: CustomTextField(
                        hint: "Tell me something...",
                        keyboardType: TextInputType.text ,
                        controller: text1Controller,
                        textInputAction: TextInputAction.next,
                        validator: (val){},
                      ),
                    )
                  ],
                ),


                Gap(AppLayout.getHeight(30)),
                //TODO: SECOND QUESTION
                Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(30)),
                      child: Text(
                        "What do you wish you could change in your life?",
                        style: Styles.textStyle.copyWith(fontWeight: FontWeight.w500),

                      ),
                    ),
                    Gap(AppLayout.getHeight(10)),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(30)),
                      child: CustomTextField(
                        hint: "Tell me something...",
                        keyboardType: TextInputType.text ,
                        controller: text1Controller,
                        textInputAction: TextInputAction.next,
                        validator: (val){},
                      ),
                    )
                  ],
                ),










                Gap(AppLayout.getHeight(20)),
                RoundedButton(
                    text: "Sign up",
                    onPress: () {

                          Navigator.pushNamed(context, RouteName.dashboardView);
                    }),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
