import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              'https://th.bing.com/th/id/R.dcd20fb5b40563abc40d8df6b6db72be?rik=a%2bHRSjHr4t5yvw&pid=ImgRaw&r=0',
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Trending Packages',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  ListTile(
                    title: Image.network(
                      'https://tse3.mm.bing.net/th/id/OIP.nYlqMF3Tua6gCjcs0pLY7gHaEK?rs=1&pid=ImgDetMain&o=7&rm=3',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
