import 'dart:core';

import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class User{
  final String name,
  final String Username;
  final String email;
  final String password;
  final String confirm_pasword;
}