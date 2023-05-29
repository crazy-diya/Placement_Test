import 'package:flutter/material.dart';
import 'package:placement_test/entities/employee_entity.dart';
import 'package:placement_test/utils/app_colors.dart';
import 'package:placement_test/utils/app_strings.dart';
import 'package:placement_test/views/widgets/employee_card_view.dart';

class EmployeeListView extends StatefulWidget {
  const EmployeeListView({Key? key}) : super(key: key);

  @override
  State<EmployeeListView> createState() => _EmployeeListViewState();
}

class _EmployeeListViewState extends State<EmployeeListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      appBar: AppBar(
        title: const Text(
          AppStrings.employeeListAppBarTitle,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 22,
            color: AppColors.appBarTextColor,
          ),
        ),
        centerTitle: true,
        backgroundColor: AppColors.appBarColorColor,
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: dataSet.length,
        itemBuilder: (context, index) => EmployeeCardView(
          employee: dataSet[index],
        ),
      ),
    );
  }
}
