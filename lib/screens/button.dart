import 'package:flutter/material.dart';
import 'package:navigation_panel/navigation_panel.dart';
import 'package:line_icons/line_icons.dart';
class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Define a SnackBar instance
    final snackBar = SnackBar(
      content: Text('This is a SnackBar!'),
    );

    return Scaffold(
      backgroundColor: Colors.grey[200],
      floatingActionButton: CenterFloatAnimatedNav(
        navItems: [
          MenuNavItem(
            onTap: () {
              // Show the SnackBar when the first button is tapped
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            icon: LineIcons.amazonWebServicesAws,
          ),
          MenuNavItem(onTap: () {}, icon: LineIcons.fire),
          MenuNavItem(onTap: () {}, icon: LineIcons.meteor),
          MenuNavItem(onTap: () {}, icon: LineIcons.futbol),
          MenuNavItem(onTap: () {}, icon: LineIcons.areaChart),
          MenuNavItem(onTap: () {}, icon: LineIcons.lifeRing),
          MenuNavItem(onTap: () {}, icon: LineIcons.paperPlane),
          MenuNavItem(onTap: () {}, icon: LineIcons.moon),
        ],
      ),
    );
  }
}
