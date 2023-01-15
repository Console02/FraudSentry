import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SectionContent extends StatelessWidget {
  final String? sectionName;
  final Widget? sectionLeading;
  final Widget? sectionTrailing;
  final VoidCallback? onSectionTap;
  final VoidCallback? onTrailingTap;
  const SectionContent({
    Key? key,
    this.onSectionTap,
    this.onTrailingTap,
    this.sectionLeading,
    this.sectionName,
    this.sectionTrailing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            onSectionTap!();
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  sectionLeading ?? Container(),
                  const SizedBox(
                    width: 16,
                  ),
                  Text(
                    sectionName ?? "",
                    style: GoogleFonts.montserrat(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              sectionTrailing == null
                  ? const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 32,
                        width: 32,
                      ),
                    )
                  : IconButton(
                      onPressed: () {
                        onTrailingTap!();
                      },
                      icon: sectionTrailing!,
                    )
            ],
          ),
        ),
        const Divider()
      ],
    );
  }
}
