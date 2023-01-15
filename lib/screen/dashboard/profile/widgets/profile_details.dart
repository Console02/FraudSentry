import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileDetails extends StatelessWidget {
  final String? userName;
  final String? userId;
  final Widget? userAvatar;
  const ProfileDetails({
    Key? key,
    this.userAvatar,
    this.userId,
    this.userName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: userAvatar ?? Container(),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          userName ?? "",
          style: GoogleFonts.montserrat(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          userId ?? "",
          style: GoogleFonts.montserrat(
            fontSize: 16,
            color: Colors.grey,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
