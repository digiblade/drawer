import 'package:flutter/material.dart';
import 'package:tasktracker/Pages/Drawer.dart';
import 'package:tasktracker/Pages/FrontPage.dart';
import 'package:tasktracker/Template/Colors.dart';
import 'package:tasktracker/Template/Space.dart';
import 'package:tasktracker/Template/Typography.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FrontPage(
      drawer: SideDrawer(
        drawerList: [
          ListTile(
            title: Text(
              "उपयोगकर्ता संपादन",
              style: h5_light,
            ),
          ),
          ListTile(
            title: Text(
              "प्रोजेक्ट सूचि ",
              style: h5_light,
            ),
          ),
          ListTile(
            title: Text(
              "सेक्टर सूचि ",
              style: h5_light,
            ),
          ),
          ListTile(
            title: Text(
              "आंगनवाड़ी सूचि ",
              style: h5_light,
            ),
          ),
          ListTile(
            title: Text(
              "रिपोर्ट देखें",
              style: h5_light,
            ),
          ),
          ListTile(
            title: Text(
              "पासवर्ड बदलें ",
              style: h5_light,
            ),
          ),
        ],
      ),
      action: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search, size: 32, color: light //
              ),
        ),
      ],
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // verticalSpace(1000),
            Text(
              "Dashboard",
              style: h1,
            ),
            verticalSpace(32),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              children: [
                DashboardCard(
                  project: "Korba",
                  childCount: "10000",
                  secterCount: "5",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class DashboardCard extends StatelessWidget {
  final String? project;
  final String? secterCount;
  final String? childCount;
  const DashboardCard({
    Key? key,
    this.project,
    this.secterCount,
    this.childCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            project!,
            style: h4,
          ),
          Text(
            "Sector: " + secterCount!,
            style: h6,
          ),
          Text(
            "Child: " + childCount!,
            style: p,
          )
        ],
      ),
    );
  }
}
