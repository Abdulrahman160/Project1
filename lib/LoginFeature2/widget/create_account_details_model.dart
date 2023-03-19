import 'package:flutter/material.dart';

class CreateAccountDetails {
  final IconData? prefixIcons;
  final String hintText;
  final TextInputType? keyboardType;
  final bool? enableSuffixIcon;
  final bool? obscureText;

  CreateAccountDetails(
      {required this.enableSuffixIcon,
      required this.hintText,
      required this.keyboardType,
      required this.prefixIcons,
      required this.obscureText});
}

List<CreateAccountDetails> createAccountDetails = [
  CreateAccountDetails(
    enableSuffixIcon: false,
    hintText: "الاسم الشخصي",
    keyboardType: TextInputType.text,
    prefixIcons: Icons.account_circle_outlined,
    obscureText: false,
  ),
  CreateAccountDetails(
    enableSuffixIcon: false,
    hintText: "رقم الجوال",
    keyboardType: TextInputType.phone,
    prefixIcons: Icons.phone_android_sharp,
    obscureText: false,
  ),
  CreateAccountDetails(
    enableSuffixIcon: false,
    hintText: "البريد الالكتروني",
    keyboardType: TextInputType.text,
    prefixIcons: Icons.email_outlined,
    obscureText: false,
  ),
  CreateAccountDetails(
    enableSuffixIcon: true,
    hintText: "كلمه المرور",
    keyboardType: TextInputType.text,
    prefixIcons: Icons.lock_outline_rounded,
    obscureText: true,
  ),
  CreateAccountDetails(
    enableSuffixIcon: true,
    hintText: "تأكيد كلمه المرور",
    keyboardType: TextInputType.text,
    prefixIcons: Icons.lock_outline_rounded,
    obscureText: true,
  ),
];
