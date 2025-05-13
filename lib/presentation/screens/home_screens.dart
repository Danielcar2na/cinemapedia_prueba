import 'package:cinemapedia/config/constants/environment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: width,
            height: height,
            padding: EdgeInsets.only(top: height * 0.12, left: width * 0.11),
            color: Color(0xFF4F87B2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello, what do you\nwant to watch?',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 26,
                    letterSpacing: -width * 0.0004,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: height * 0.017),
                Container(
                  alignment: Alignment.centerLeft,
                  height: height * 0.042,
                  width: width * 0.8,
                  decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                    child: Row(
                      children: [
                        Icon(Icons.search, color: Colors.white),
                        SizedBox(width: width * 0.03),
                        Text(
                          'Search',
                          style: TextStyle(color: Colors.white54, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: height * 0.3,
            child: Container(
              width: width,
              height: height * 0.7,
              decoration: BoxDecoration(
                color: Color(0xFF242F3D),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                child: Column(
                  children: [
                    SizedBox(height: height * 0.05),
                    TitleSeeAll(),
                    SizedBox(height: height * 0.05),
                    // CardCustom(
                    //   width: width,
                    //   height: height,
                    //   text: '',
                    //   image: '',
                    // ),
                    Row(
                      children: [
                        Text('TOP RATE', style: TextStyle(color: Colors.white)),
                        Spacer(),
                        Text('See all', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(1),
                          width: width * 0.3,
                          height: height * 0.225,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        Text(Environment.themovieDbKey, style: TextStyle(color: Colors.white)),
                        Icon(Icons.star, color: Colors.amberAccent),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          ///////////////////////////////////////////////////////////////////
          /////////////////////////////////////////////////////////////////
          ////
          Positioned(
            top: height * 0.08,
            left: width * 0.05,
            child: Icon(Icons.nights_stay_outlined, color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class TitleSeeAll extends StatelessWidget {
  const TitleSeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('RECOMMENDED FOR YOU', style: TextStyle(color: Colors.white)),
        Spacer(),
        Text('See all', style: TextStyle(color: Colors.white)),
      ],
    );
  }
}

class CardCustom extends StatelessWidget {
  const CardCustom({
    super.key,
    required this.width,
    required this.height,
    required this.text,
    required this.image,
  });

  final double width;
  final double height;
  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(1),
          width: width * 0.3,
          height: height * 0.225,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Image.network(image),
        ),
        Text('TITLE', style: TextStyle(color: Colors.white)),
        Icon(Icons.star, color: Colors.amberAccent),
      ],
    );
  }
}
