


import 'package:dashboard/core/cubit/parent_cubit.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

extension MyTheme on BuildContext{
  ThemeData get getTheme => Theme.of(this);
}

extension MyLocalization on String {

  String tr(BuildContext context) {
    return context.read<ParentCubit>().local[this] ?? toUpperCase();
  }
}