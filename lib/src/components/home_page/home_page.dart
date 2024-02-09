import 'package:flutter/material.dart';

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
                text: "uno",
              ),
              Tab(
                text: "dos",
              ),
              Tab(
                text: "tres",
              )
            ]),
          ),
          body: TabBarView(children: [
            ListView.builder(
              itemCount: 25,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(' $index'),
                );
              },
            ),
            Center(
              child: Text("data"),
            ),
            Container(
              child: Text("3"),
            )
          ]),
        )));
  }
}
