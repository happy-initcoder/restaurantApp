import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchResults extends StatelessWidget {
  const SearchResults({super.key});
  static const routeName = '/SearchResults';
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Add social accounts',
          style: TextStyle(fontSize: 16),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('We have founds 80 results of\n Burger’s'),
            TextButton(
              onPressed: () {},
              child: Text(
                'Search Again',
                style: TextStyle(
                  color: Color.fromRGBO(238, 167, 52, 1),
                ),
              ),
            ),
          ],
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: size.height / 3.5,
                          width: size.width / 2.3,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/no.png'),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 10, bottom: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      CupertinoIcons.clock,
                                      size: 15,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      '25min',
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      CupertinoIcons.money_dollar,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                    Text(
                                      'free',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Spacer(),
                                    Padding(
                                      padding: EdgeInsets.only(right: 20),
                                      child: Container(
                                        child: Center(
                                          child: Text('4.3',
                                              style: TextStyle(
                                                  color: Colors.white)),
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color:
                                              Color.fromRGBO(238, 167, 52, 1),
                                        ),
                                        height: 20,
                                        width: 40,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Text("McDonald's", style: TextStyle(fontSize: 20)),
                        Text(
                          'Chinese . American',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: size.width / 30, right: size.width / 30),
                      child: Column(
                        children: [
                          Container(
                            height: size.height / 3,
                            width: size.width / 2.3,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/no.png',
                                  ),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 10, bottom: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        CupertinoIcons.clock,
                                        size: 15,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        '25min',
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        CupertinoIcons.money_dollar,
                                        color: Colors.white,
                                        size: 15,
                                      ),
                                      Text(
                                        'free',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Spacer(),
                                      Padding(
                                        padding: EdgeInsets.only(right: 20),
                                        child: Container(
                                          child: Center(
                                            child: Text('4.3',
                                                style: TextStyle(
                                                    color: Colors.white)),
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color:
                                                Color.fromRGBO(238, 167, 52, 1),
                                          ),
                                          height: 20,
                                          width: 40,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text("McDonald's", style: TextStyle(fontSize: 20)),
                          Text('Chinese . American',
                              style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        )
      ]),
    );
  }
}
