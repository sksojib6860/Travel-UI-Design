import 'package:flutter/material.dart';

import 'list_of_map.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Image.network(
                'https://images.pexels.com/photos/220067/pexels-photo-220067.jpeg?cs=srgb&dl=background-blur-bright-220067.jpg&fm=jpg',

                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Container(height: 200, color: Colors.black.withOpacity(0.4)),
              Positioned(
                top: 50,
                left: 20,
                child: Column(
                  children: [
                    Text(
                      'Explore the  World',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 100,
                left: 20,
                right: 20,
                child: Container(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText: 'Search Designation',
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Top Destinations',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),

                  GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 3 / 2,
                    ),
                    shrinkWrap: true,
                    itemCount: destinations.length,
                    itemBuilder: (context, index) {
                      return Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  destinations[index]['image']!,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 120,
                            left: 20,
                            child: Text(
                              destinations[index]['title']!,
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          TextButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black12,
                            ),
                            onPressed: () {},
                            child: Text(
                              '⭐ ${destinations[index]['review']!}',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      );
                    },
                  ),

                  SizedBox(height: 10),
                  Text(
                    'Trending Packages',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),

          ListView.builder(
            itemCount: packages.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Container(
                    height: 120,
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 30,
                          offset: Offset(0, 4),
                        ),
                      ],
                      color: Colors.white.withOpacity(0.95),
                      borderRadius: BorderRadius.circular(20),
                    ),

                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),

                        child: Row(
                          children: [
                            Image.network(
                              packages[index]['image']!,
                              fit: BoxFit.cover,
                              height: 120,
                              width: 120,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 6,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    packages[index]['title']!,
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 6),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.access_time,
                                        color: Colors.grey.shade600,
                                        size: 18,
                                      ),
                                      SizedBox(width: 6),

                                      Text(
                                        '4 nights - 5 days',
                                        style: TextStyle(
                                          color: Colors.grey.shade600,
                                        ),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        packages[index]['price']!,
                                        style: TextStyle(
                                          color: Colors.blueAccent,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(width: 160),

                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          foregroundColor: Colors.white,
                                          backgroundColor: Colors.blueAccent,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                          ),
                                        ),
                                        onPressed: () {},
                                        child: Text('Book Now'),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 100,
                    left: 70,
                    child: TextButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black12,
                      ),
                      onPressed: () {},
                      child: Text(
                        '🌟 ${packages[index]['review']!}',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
