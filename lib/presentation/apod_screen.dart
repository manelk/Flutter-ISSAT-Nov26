import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/fake_date.dart';

class ApodScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("APOD App")),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: fakeDate.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: AlignmentGeometry.center,
                  child: Image.network(
                    height: 200,
                    width: 200,
                    /// Original link: https://assets.science.nasa.gov/dynamicimage/assets/science/missions/webb/science/2026/10/weic2620a.jpg?w=1280&h=1194&fit=clip
                    // "image/assets/science/missions/webb/science/2026/10/STScI-01M2RAWEPQ0YFBJH9VZHV49SQT.png?w=1280&h=1194&fit=clip",
                    fakeDate[index].hdurl,
                    errorBuilder:
                        (
                          BuildContext context,
                          Object error,
                          StackTrace? stackTrace,
                        ) {
                          return Image.asset("assets/images/image_apod.png");
                        },
                  ),
                ),
                Text("Title: ${fakeDate[index].title}"),
                // Text(
                //   "Description: NASA’s James Webb Space Telescope has revealed many protostars and stars within the glowing gases of NGC 7129. The region to the left of the central star is filled with hot, atomic hydrogen gas, which creates a golden glow, while the region to the right is packed with cooler, molecular hydrogen. Embedded protostars in the rightmost region eject outflows that shock and heat the region, giving certain areas a red hue and a clumpy texture. Many of these red outflows, ejected as protostars accumulate mass, are visible throughout the image. The central star and the stars embedded within the golden region are at a more mature stage in their life cycle than the protostars growing to the right of the central star. Their heat breaks down the molecular hydrogen into atoms, driving the differences in temperature and color. The coldest, densest gas, where protostars have yet to form, is shown in gray. ",
                // ),
              ],
            ),
          );
        },
      ),
    );
  }
}
