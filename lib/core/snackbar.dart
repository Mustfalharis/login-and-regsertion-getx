import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
void snackBar(String message){
  Get.snackbar(
      message,
      "",
      backgroundColor: Colors.blue
  );
}