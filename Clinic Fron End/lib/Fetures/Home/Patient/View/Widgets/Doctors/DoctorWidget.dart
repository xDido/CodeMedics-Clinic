import 'package:flutter/material.dart';
import 'package:ori_dx_app/GeneralWidgets/CustomRichText.dart';
import 'package:ori_dx_app/GeneralWidgets/CustomRichText2.dart';
import 'package:ori_dx_app/Models/Doctor.dart';
import 'package:ori_dx_app/Models/FamilyMember.dart';
import 'package:ori_dx_app/shared/AppColors.dart';

class DoctorWidget extends StatelessWidget {
  const DoctorWidget({
    super.key,
    required this.doctor,
    required this.onTap,
  });

  final Doctor doctor;
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'assets/images/member1.png',
                height: 100,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            CustomRichText2(
              title: 'Name',
              text: '${doctor.firstName} ${doctor.lastName}',
              size: 14,
            ),
            const SizedBox(
              height: 5,
            ),
            CustomRichText2(
              title: 'Speciality',
              text: doctor.speciality,
              size: 14,
            ),
            const SizedBox(
              height: 5,
            ),
            CustomRichText2(
              title: 'Session Price',
              text: doctor.price.toString(),
              size: 14,
            ),
          ],
        ),
      ),
    );
  }
}
