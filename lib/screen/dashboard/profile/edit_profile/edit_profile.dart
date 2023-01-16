import 'package:flutter/material.dart';
import 'package:fraudsentry/screen/dashboard/profile/widgets/app_button.dart';
import 'package:fraudsentry/screen/dashboard/profile/widgets/profile_details.dart';
import 'package:fraudsentry/screen/dashboard/profile/widgets/text_field.dart';
import 'package:google_fonts/google_fonts.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  bool enabledEdit = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: true,
          iconTheme: const IconThemeData(color: Colors.black),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.chevron_left,
            ),
          ),
          title: Text(
            "My Profile",
            style: GoogleFonts.montserrat(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  enabledEdit = !enabledEdit;
                });
              },
              icon: const Icon(
                Icons.edit,
              ),
            ),
          ],
          centerTitle: true,
          backgroundColor: Colors.white,
          shadowColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                ProfileDetails(
                  userAvatar: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.grey.shade100,
                    child: const Icon(
                      Icons.person,
                      size: 32,
                    ),
                  ),
                  userName: "",
                  userId: "",
                ),
                InputField(
                  kPadding: 0,
                  labelText: "Full Name",
                  hintText: "Brooklyn Simmons",
                  isDisabled: enabledEdit,
                ),
                InputField(
                  kPadding: 0,
                  labelText: "Email",
                  hintText: "brooklyn@simmons.com",
                  isDisabled: enabledEdit,
                ),
                InputField(
                  kPadding: 0,
                  labelText: "Phone Number",
                  hintText: "+137123789",
                  isDisabled: enabledEdit,
                ),
                InputField(
                  kPadding: 0,
                  labelText: "Address",
                  hintText: "711 Leavenworth Apt. # 47 San Fransisco, CA 94109",
                  isDisabled: enabledEdit,
                  minLines: enabledEdit ? 1 : 6,
                ),
                AppButton(
                  title: "Upgrade account",
                  width: 250,
                  height: 45,
                  disabled: enabledEdit,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
