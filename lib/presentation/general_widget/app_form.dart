
 
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskingdom/core/utils/styles.dart';
import 'package:taskingdom/presentation/general_widget/app_button.dart';
import 'package:taskingdom/presentation/general_widget/app_textfield.dart';


class AppForm extends StatelessWidget {
  const AppForm({required this.children, required this.formKey, required this.onPressed, required this.buttonText, super.key});
  final List<AppTextField>  children;
  final VoidCallback onPressed;
  final String buttonText;

 final GlobalKey<FormState> formKey;

 


  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          Expanded(
            child: Column(
              children: List.generate(children.length, (index){
                return children[index];
              }),
            ),
          ),
          32.verticalSpace,
          GestureDetector(
            onTap: (){
              formKey.currentState!.validate();
            },
            child: AppButton(text: buttonText,
             onPressed: (){
             
             },),
          ),
        ],
      ),
    );
  }
}
