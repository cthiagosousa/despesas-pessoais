import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedIconTheme: Theme.of(context).iconTheme,
      unselectedIconTheme: Theme.of(context).iconTheme.copyWith(
        color: Colors.black54,
      ),
      type: BottomNavigationBarType.fixed,

      items: [
        const BottomNavigationBarItem(
          icon: Icon(Icons.home_rounded),
          label: "",
        ),

        BottomNavigationBarItem(
          icon: Container(
            width: 50,
            height: 30,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(10)
            ),
            child: const Icon(
              Icons.add_rounded,
              color: Colors.white,
            ),
          ),
          label: "",
        ),

        const BottomNavigationBarItem(
          icon: Icon(Icons.notifications_rounded),
          label: "",
        ),
      ],
    );
  }
}