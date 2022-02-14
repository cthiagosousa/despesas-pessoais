import 'package:flutter/material.dart';

class HomeAppBar extends StatefulWidget  {

  const HomeAppBar({Key? key}) : super(key: key);

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  final double toolbarHeight = 60;
  
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        "Olá Thiago",
        style: Theme.of(context).textTheme.headline3?.copyWith(
          color: Colors.white,
        ),
      ),
      elevation: 0,
      toolbarHeight: toolbarHeight,
      
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              IconButton(
                icon: const Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                onPressed: () {}, 
              ),
              const CircleAvatar(
                radius: 20,
              ),
            ],
          ),
        ),
      ],
      flexibleSpace: Container(
        height: 220 - toolbarHeight,
        margin: EdgeInsets.only(top: toolbarHeight),
        padding: const EdgeInsets.all(10),
        child: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    "R\$ 300,00",
                    style: Theme.of(context).textTheme.headline1?.copyWith(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
        
                  Text(
                    "Total de Despesas",
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              
              Text(
                "Janeiro",
                style: Theme.of(context).textTheme.headline2?.copyWith(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}