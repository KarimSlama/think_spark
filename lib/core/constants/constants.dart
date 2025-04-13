import 'package:flutter/material.dart';

bool isLoggedUser = false;

class Constants {
  static final pageController = PageController();
  static int currentPage = 0;
  static String userTokenKey = 'USER_TOKEN_KEY';
  static String refreshTokenKey = 'REFRESH_TOKEN_KEY';
  static String? userKey;
}