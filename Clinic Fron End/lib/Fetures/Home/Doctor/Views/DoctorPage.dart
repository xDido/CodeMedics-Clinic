import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:ori_dx_app/Fetures/Guest/View/Widgets/GusestBody.dart';
import 'package:ori_dx_app/Fetures/Home/Doctor/Views/Widgets/DoctorPageBody.dart';
import 'package:ori_dx_app/Fetures/Home/Patient/View/Widgets/PatientPageBody.dart';
import 'package:ori_dx_app/GeneralWidgets/AppText.dart';
import 'package:ori_dx_app/shared/AppColors.dart';
import 'package:ori_dx_app/shared/Fonts/FontModel.dart';

class DoctorPage extends StatelessWidget {
  const DoctorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return _moveBack();
      },
      child: Scaffold(
        body: SafeArea(
          child: DoctorPageBody(),
        ),
      ),
    );
  }

  _moveBack() {
    Get.back();
    return true;
  }
}
