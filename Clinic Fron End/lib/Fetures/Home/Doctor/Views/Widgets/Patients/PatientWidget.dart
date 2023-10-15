import 'package:flutter/material.dart';
import 'package:ori_dx_app/GeneralWidgets/CustomRichText.dart';
import 'package:ori_dx_app/GeneralWidgets/CustomRichText2.dart';
import 'package:ori_dx_app/Models/FamilyMember.dart';
import 'package:ori_dx_app/Models/Patient.dart';
import 'package:ori_dx_app/shared/AppColors.dart';

class PatientWidget extends StatelessWidget {
  const PatientWidget({
    super.key,
    required this.patient,
    required this.onTap,
  });

  final Patient patient;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
          color: AppColors.containerColor,
          // color: tmp,
          // color: color,
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/patient.png',
              height: 100,
            ),
            const SizedBox(
              height: 40,
            ),
            CustomRichText2(
              title: 'Name',
              text: '${patient.firstName} ${patient.lastName}',
            ),
            // const SizedBox(
            //   height: 5,
            // ),
            // CustomRichText(title: 'National ID', text: familyMember.nationalId),
          ],
        ),
      ),
    );
  }
}
