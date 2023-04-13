import 'package:flutter/material.dart';
import 'package:restaurantapp/screens/browseFood.dart';
import 'package:restaurantapp/screens/featuredPartner.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static const routeName = '/HomePage';
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List images = [
    'assets/images/food.png',
    'assets/images/food1.png',
    'assets/images/food2.png',
    'assets/images/food3.png',
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {},
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.food_bank, color: Color.fromRGBO(238, 167, 52, 1)),
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
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                'Filter',
                style: TextStyle(color: Color.fromRGBO(238, 167, 52, 1)),
              ))
        ],
        centerTitle: true,
        title: Column(
          children: [
            Text(
              'DELIVERY TO',
              style: TextStyle(fontSize: 12),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('jodhpur,Raj'),
              ],
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red,
                ),
                height: size.height / 4,
                width: size.width / 1.1,
                child: PageView.builder(
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Image.asset(
                        images[index],
                        fit: BoxFit.fill,
                      );
                    }),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: size.width * .06),
              child: Row(
                children: [
                  Text(
                    'Featured \nPartners',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(
                          context, FeaturedPartnersScreen.routeName);
                    },
                    child: Text(
                      'See all',
                      style: TextStyle(color: Color.fromRGBO(238, 167, 52, 1)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height / 3,
              width: size.width / 1.1,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Container(
                            height: size.height / 5,
                            width: size.width / 2,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                  images[index],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10, top: 10),
                          child: Text('Krispy Creme',
                              style: TextStyle(
                                fontSize: 20,
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 10,
                          ),
                          child: Text(
                            'St Georgece Terrace, Perth',
                            style: TextStyle(fontSize: 13, color: Colors.grey),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10, top: 10),
                          child: Row(
                            children: [
                              Container(
                                child: Center(
                                  child: Text('4.3',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12)),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Color.fromRGBO(238, 167, 52, 1),
                                ),
                                height: 20,
                                width: 30,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text('25min',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12)),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.grey,
                                  ),
                                  height: 5,
                                  width: 5,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text('Free delivery',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12)),
                              )
                            ],
                          ),
                        ),
                      ],
                    );
                  }),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: Container(
                  height: size.height / 4,
                  width: size.width / 1.1,
                  child: Image.asset(
                    'assets/images/Banner.png',
                    fit: BoxFit.fill,
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text(
                    'Best Picks\nby Restaurants \nTeam',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, BrowseFoods.routeName);
                    },
                    child: Text(
                      'See all',
                      style: TextStyle(color: Color.fromRGBO(238, 167, 52, 1)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height / 3,
              width: size.width / 1.1,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Container(
                            height: size.height / 5,
                            width: size.width / 2,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                  images[index],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10, top: 10),
                          child: Text('Krispy Creme',
                              style: TextStyle(
                                fontSize: 20,
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 10,
                          ),
                          child: Text(
                            'St Georgece Terrace, Perth',
                            style: TextStyle(fontSize: 13, color: Colors.grey),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10, top: 10),
                          child: Row(
                            children: [
                              Container(
                                child: Center(
                                  child: Text('4.3',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12)),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Color.fromRGBO(238, 167, 52, 1),
                                ),
                                height: 20,
                                width: 30,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text('25min',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12)),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.grey,
                                  ),
                                  height: 5,
                                  width: 5,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text('Free delivery',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12)),
                              )
                            ],
                          ),
                        ),
                      ],
                    );
                  }),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text(
                    'All Resturants',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(
                          context, FeaturedPartnersScreen.routeName);
                    },
                    child: Text(
                      'See all',
                      style: TextStyle(color: Color.fromRGBO(238, 167, 52, 1)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
