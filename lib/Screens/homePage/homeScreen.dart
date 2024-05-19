import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 30, bottom: 15),
                child: Text(
                  "Gmail",
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w500,
                      fontSize: 25),
                ),
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              ListTile(
                leading: Icon(
                  Icons.inbox_rounded,
                  color: Colors.black87,
                ),
                title: Text(
                  "Primary",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.inbox_rounded,
                  color: Colors.black87,
                ),
                title: Text(
                  "Promotions",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.person_outline_outlined,
                  color: Colors.black87,
                ),
                title: Text(
                  "Social",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
              ListTile(
                  subtitle: Text(
                "All labels",
                style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w500,
                    fontSize: 17),
              )),
              ListTile(
                leading: Icon(
                  Icons.star_border,
                  color: Colors.black87,
                ),
                title: Text(
                  "Starred",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.watch_later_outlined,
                  color: Colors.black87,
                ),
                title: Text(
                  "Snoozed",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.label_important_outline,
                  color: Colors.black87,
                ),
                title: Text(
                  "Important",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.send_outlined,
                  color: Colors.black87,
                ),
                title: Text(
                  "Sent",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.send_and_archive_outlined,
                  color: Colors.black87,
                ),
                title: Text(
                  "Scheduled",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.outbox_outlined,
                  color: Colors.black87,
                ),
                title: Text(
                  "Outbox",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.drafts_outlined,
                  color: Colors.black87,
                ),
                title: Text(
                  "Drafts",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.mail_outline_outlined,
                  color: Colors.black87,
                ),
                title: Text(
                  "All mail",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.sim_card_alert,
                  color: Colors.black87,
                ),
                title: Text(
                  "Spam",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.delete_outline,
                  color: Colors.black87,
                ),
                title: Text(
                  "Trash",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
              ListTile(
                  subtitle: Text(
                "Google apps",
                style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w500,
                    fontSize: 17),
              )),
              ListTile(
                leading: Icon(
                  Icons.calendar_month_outlined,
                  color: Colors.black87,
                ),
                title: Text(
                  "Calendar",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.quick_contacts_dialer_outlined,
                  color: Colors.black87,
                ),
                title: Text(
                  "Contacts",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              ListTile(
                leading: Icon(
                  Icons.settings_outlined,
                  color: Colors.black87,
                ),
                title: Text(
                  "Settings",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.help_outline,
                  color: Colors.black87,
                ),
                title: Text(
                  "Help & feedback",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
