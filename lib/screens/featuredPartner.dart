import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeaturedPartnersScreen extends StatelessWidget {
  const FeaturedPartnersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index) {},
          destinations: const <Widget>[
            NavigationDestination(
              icon: Icon(Icons.food_bank),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.bookmark),
              icon: Icon(Icons.bookmark_border),
              label: 'Orders',
            ),
            NavigationDestination(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
        appBar: AppBar(
          title: Text(
            'Featured Partners',
          ),
        ),
        body: Container(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: size.height / 3,
                            width: size.width / 2.5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.red),
                          ),
                          Text("McDonald's", style: TextStyle(fontSize: 20)),
                          Text('Chinese . American'),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: size.width / 15),
                        child: Column(
                          children: [
                            Container(
                              height: size.height / 3,
                              width: size.width / 2.5,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.red),
                            ),
                            Text("McDonald's", style: TextStyle(fontSize: 20)),
                            Text('Chinese . American'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ));
  }
}
