import 'package:flutter/material.dart';
import 'package:fraudsentry/screen/dashboard/profile/widgets/section_titile.dart';

class ProfileSection extends StatelessWidget {
  final String? sectionHeading;
  final List<Widget>? sectionChildren;
  const ProfileSection({
    Key? key,
    this.sectionChildren,
    this.sectionHeading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          sectionName: sectionHeading ?? "",
        ),
        const SizedBox(
          height: 10,
        ),
        Column(
          children: sectionChildren ?? [],
        )
      ],
    );
  }
}
