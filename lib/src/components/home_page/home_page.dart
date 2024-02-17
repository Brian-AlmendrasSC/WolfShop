import 'package:flutter/material.dart';
import 'package:wolfshop/src/components/layouts/Card/my_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const int tabsCount = 3;
    return (DefaultTabController(
        initialIndex: 1,
        length: tabsCount,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Wolf shop"),
            leading: Icon(Icons.rectangle_sharp),
            backgroundColor: Colors.green,
            bottom: TabBar(tabs: [
              Tab(
                text: "Tienda",
              ),
              Tab(
                text: "Acerca de la tienda",
              ),
              Tab(
                text: "Perfil",
              )
            ]),
          ),
          body: TabBarView(children: [
            ListView.builder(
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return MyCard();
              },
            ),
            Container(
              child: Text("3"),
            ),
            ListView.builder(
              itemCount: 25,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(' $index'),
                );
              },
            ),
          ]),
        )));
  }
}
