import 'package:flutter/material.dart';

class AppNavBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 60,
      backgroundColor: Color.fromRGBO(246, 132, 168, 1),
      title: Row(
        children: [
          Image.asset(
            'assets/images/PencilstoPeople_Logo.png',
            width: 47,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Text(
                'Pencils to People',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 27,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            ),
          ),
          Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Color.fromRGBO(255, 82, 137, 1)),
            child: Center(
              child: Icon(Icons.person,
                  color: Color.fromRGBO(246, 132, 168, 1), size: 30),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
