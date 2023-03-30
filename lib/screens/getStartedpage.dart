import 'package:flutter/material.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    // var height = size.height;
    // var width = size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: size.height * .9,
            child: PageView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      // left: MediaQuery.of(context).size.width * .1,
                      top: MediaQuery.of(context).size.height / 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width / 20),
                            child: Image.asset('assets/images/g12.png'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width / 20),
                            child: Column(
                              children: [
                                Text(
                                  'Tamang',
                                  style: TextStyle(
                                      fontSize: size.width / 12,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text('FoodService',
                                    style: TextStyle(
                                        fontSize: size.width / 12,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height / 20),
                        child: Image.asset('assets/images/Illustration.png'),
                      ),
                      Text(
                        'Welcome',
                        style: TextStyle(
                            fontSize: size.width / 12,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: EdgeInsets.all(
                            MediaQuery.of(context).size.width / 20),
                        child: Text(
                          'It’s a pleasure to meet you. We are excited that you’re here so let’s get started!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: size.width / 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      // left: MediaQuery.of(context).size.width * .1,
                      top: MediaQuery.of(context).size.height / 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width / 20),
                            child: Image.asset('assets/images/g12.png'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width / 20),
                            child: Column(
                              children: [
                                Text(
                                  'Tamang',
                                  style: TextStyle(
                                      fontSize: size.width / 12,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text('FoodService',
                                    style: TextStyle(
                                        fontSize: size.width / 12,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * .01),
                        child: Image.asset('assets/images/Illustrations2.png'),
                      ),
                      Text(
                        'All your favorite',
                        style: TextStyle(
                            fontSize: size.width / 12,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: EdgeInsets.all(
                            MediaQuery.of(context).size.width / 30),
                        child: Text(
                          'Order form the best local restaurants with easy on-demand dilivery',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: size.width / 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      // left: MediaQuery.of(context).size.width * .1,
                      top: MediaQuery.of(context).size.height / 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width / 20),
                            child: Image.asset('assets/images/g12.png'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width / 20),
                            child: Column(
                              children: [
                                Text(
                                  'Tamang',
                                  style: TextStyle(
                                      fontSize: size.width / 12,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text('FoodService',
                                    style: TextStyle(
                                        fontSize: size.width / 12,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height / 20),
                        child: Image.asset('assets/images/Illustrations3.png'),
                      ),
                      Text(
                        'Free delivery offers',
                        style: TextStyle(
                            fontSize: size.width / 12,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: EdgeInsets.all(
                            MediaQuery.of(context).size.width / 20),
                        child: Text(
                          'Free delivery for new customers via Apple Pay and others payment methods.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: size.width / 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      // left: MediaQuery.of(context).size.width * .1,
                      top: MediaQuery.of(context).size.height / 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width / 20),
                            child: Image.asset('assets/images/g12.png'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width / 20),
                            child: Column(
                              children: [
                                Text(
                                  'Tamang',
                                  style: TextStyle(
                                      fontSize: size.width / 12,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text('FoodService',
                                    style: TextStyle(
                                        fontSize: size.width / 12,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          )
                        ],
                      ),
                      Image.asset('assets/images/Illustrations4.png'),
                      Text(
                        'Choose your food',
                        style: TextStyle(
                            fontSize: size.width / 12,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: EdgeInsets.all(
                            MediaQuery.of(context).size.width / 30),
                        child: Text(
                          'Easily find your type of food craving and you’ll get delivery in wide range.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: size.width / 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width / 3, vertical: size.height / 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                primary: Color.fromRGBO(238, 167, 52, 1)),
            onPressed: () {},
            child: Text(
              'Get Started',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
