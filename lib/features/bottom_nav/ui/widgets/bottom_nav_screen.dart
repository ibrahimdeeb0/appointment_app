import 'package:flutter/material.dart';

abstract class BottomNavScreen {
  PreferredSizeWidget? buildAppBar(BuildContext context);
  Widget buildBody(BuildContext context);
}