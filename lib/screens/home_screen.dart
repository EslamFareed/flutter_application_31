import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<String> names = [
    "Eslam",
    "Ahmed",
    "Mohamed",
    "Alaa",
    "Kareem",
    "Eslam",
    "Ahmed",
    "Mohamed",
    "Alaa",
    "Kareem",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      // body: GridView.builder(
      //   gridDelegate:
      //       SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      //   itemBuilder: (context, index) {
      //     return Card(
      //       child: Column(
      //         children: [
      //           CircleAvatar(),
      //           Text(
      //             names[index],
      //           )
      //         ],
      //       ),
      //     );
      //   },
      //   itemCount: names.length,
      // ),
      // body: ListView.builder(
      //   scrollDirection: Axis.vertical,
      //   itemBuilder: (context, index) {
      //     return Card(
      //       child: ListTile(
      //         leading: CircleAvatar(),
      //         title: Text(names[index]),
      //       ),
      //     );
      //   },
      //   itemCount: names.length,
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider.builder(
              itemCount: 5,
              itemBuilder: (context, index, realIndex) {
                return Image.asset(
                  "assets/image.jpg",
                  fit: BoxFit.cover,
                  width: double.infinity,
                );
              },
              options: CarouselOptions(
                height: 250,
                autoPlay: true,
                enlargeCenterPage: true,
                viewportFraction: 1,
                autoPlayAnimationDuration: const Duration(seconds: 2),
                autoPlayInterval: const Duration(seconds: 2),
              ),
            ),
            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.deepOrange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      width: 100,
                      height: 50,
                      alignment: Alignment.center,
                      child: Text(
                        names[index],
                      ),
                    ),
                  );
                },
                itemCount: names.length,
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    children: [
                      CircleAvatar(),
                      Text(
                        names[index],
                      )
                    ],
                  ),
                );
              },
              itemCount: names.length,
            )

            // ListView.builder(
            //   scrollDirection: Axis.vertical,
            //   shrinkWrap: true,
            //   physics: NeverScrollableScrollPhysics(),
            //   itemBuilder: (context, index) {
            //     return Card(
            //       child: ListTile(
            //         leading: CircleAvatar(),
            //         title: Text(names[index]),
            //       ),
            //     );
            //   },
            //   itemCount: names.length,
            // )
          ],
        ),
      ),
    );
  }
}
