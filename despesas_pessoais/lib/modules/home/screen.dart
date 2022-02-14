import 'package:despesas_pessoais/modules/home/widgets/bottom_navigation_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:despesas_pessoais/modules/core/base.dart';
import 'package:despesas_pessoais/modules/home/widgets/appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      body: Column(
        children: [
          HomeAppBar(),
          SingleChildScrollView(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
          
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Minha Carteira",
                              style: Theme.of(context).textTheme.headline4?.copyWith(
                                color: Colors.black54,
                              ),
                            ),

                            IconButton(
                              icon: const Icon(Icons.edit_rounded),
                              iconSize: Theme.of(context).iconTheme.size!,
                              color: Theme.of(context).iconTheme.color,
                              padding: EdgeInsets.zero,
                              splashRadius: 20,
                              onPressed: () {},
                            ),
                          ],
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: RichText(
                            text: TextSpan(
                              text: "R\$ 1800,00",
                              style: Theme.of(context).textTheme.headline3,

                              children: [
                                TextSpan(
                                  text: " - R\$ 300,00",
                                  style: Theme.of(context).textTheme.headline3?.copyWith(
                                    color: Colors.red,
                                  ),
                                ),
                              ]
                            ),
                          ),
                        ),

                        Text(
                          "R\$ 1500,00",
                          style: Theme.of(context).textTheme.headline2?.copyWith(
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
          
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Cartões de Crédito",
                              style: Theme.of(context).textTheme.headline4?.copyWith(
                                color: Colors.black54,
                              ),
                            ),

                            IconButton(
                              icon: const Icon(Icons.edit_rounded),
                              iconSize: Theme.of(context).iconTheme.size!,
                              color: Theme.of(context).iconTheme.color,
                              padding: EdgeInsets.zero,
                              splashRadius: 20,
                              onPressed: () {},
                            ),
                          ],
                        ),

                        SizedBox(
                          height: 180,
                          child: PageView(
                            children: [
                              Container(
                                width: 250,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10)
                                ),
                              ),

                              Container(
                                width: 250,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10)
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavigationBarWidget(),
    );
  }
}