import 'package:flutter/material.dart';

import 'resources/manager_font_sizes.dart';
import 'resources/manager_strings.dart';

class UserCard extends StatelessWidget {
  final IconData leadingIcon;
  final IconData trailingIcon;
  final String title;
  final String jobDescription;

  const UserCard({
    super.key,
    required this.leadingIcon,
    required this.title,
    required this.jobDescription,
    required this.trailingIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20,),
      child: ListTile(
        leading: Icon(leadingIcon),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: ManagerFontSizes.s16,
            fontStyle: FontStyle.italic,
            fontFamily: 'Georas',
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Text(
          jobDescription,
          style: const TextStyle(
            fontSize: ManagerFontSizes.s14,
            fontStyle: FontStyle.italic,
            fontFamily: 'Georama',
            fontWeight: FontWeight.w500,
            color: Colors.grey,
          ),
        ),
        trailing: IconButton(
          onPressed: () {},
          icon: Icon(trailingIcon),
        ),
      ),
    );
  }
}
