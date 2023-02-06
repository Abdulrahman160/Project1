import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateAccountDetails {
  final IconData? prefixIcons;
  final String hintText;
  final TextInputType? keyboardType;
  final bool? enabelsuffixIcon;

  CreateAccountDetails({
    required this.enabelsuffixIcon,
    required this.hintText,
    required this.keyboardType,
    required this.prefixIcons,
  });
}

List<CreateAccountDetails> createAccountDetails = [
  CreateAccountDetails(
    enabelsuffixIcon: false,
    hintText: "الاسم الشخصي",
    keyboardType: TextInputType.text,
    prefixIcons: Icons.account_circle_outlined,
  ),
  CreateAccountDetails(
    enabelsuffixIcon: false,
    hintText: "رقم الجوال",
    keyboardType: TextInputType.phone,
    prefixIcons: Icons.phone_android_sharp,
  ),
  CreateAccountDetails(
    enabelsuffixIcon: false,
    hintText: "البريد الالكتروني",
    keyboardType: TextInputType.text,
    prefixIcons: Icons.email_outlined,
  ),
  CreateAccountDetails(
    enabelsuffixIcon: true,
    hintText: "كلمه المرور",
    keyboardType: TextInputType.text,
    prefixIcons: Icons.lock_outline_rounded,
  ),


  CreateAccountDetails(
    enabelsuffixIcon: true,
    hintText: "تأكيد كلمه المرور",
    keyboardType: TextInputType.text,
    prefixIcons: Icons.lock_outline_rounded,
  ),

];
