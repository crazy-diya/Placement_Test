import 'package:flutter/material.dart';
import 'package:placement_test/entities/employee_entity.dart';

import '../employee_details_view.dart';

class EmployeeCardView extends StatelessWidget {
  EmployeeEntity employee;

  EmployeeCardView({super.key, required this.employee});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: employee.image != null
              ? Image(
                  image: NetworkImage(
                    employee.image!,
                  ),
                  height: 52,
                  width: 52,
                  fit: BoxFit.cover,
                )
              : const Icon(Icons.image),
        ),
        title: Text(employee.name!),
        subtitle: Text(employee.position!),
        trailing: const Icon(Icons.arrow_forward),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EmployeeDetailsView(employee: employee),
            ),
          );
        },
      ),
    );
  }
}
