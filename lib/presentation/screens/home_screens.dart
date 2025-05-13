import 'package:cinemapedia/presentation/blocs/home_bloc.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeBloc? bloc;

  HomeScreen({super.key, this.bloc});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Form(
      key: bloc?.state.formkey,
      child: Scaffold(
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
                            style: TextStyle(
                              color: Colors.white54,
                              fontSize: 18,
                            ),
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
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: height * 0.045),
                        TitleSeeAll(
                          title: 'RECOMMENDED FOR YOU',
                          otherTitle: 'See all',
                        ),
                        SizedBox(height: height * 0.035),
                        CardCustom(
                          width: width,
                          height: height,
                          title: 'RECOMMENDED FOR YOU',
                          image: 'See all',
                        ),
                        //SizedBox(height: height * 0.05),
                        TitleSeeAll(
                          title: 'RECOMMENDED FOR YOU',
                          otherTitle: 'See all',
                        ),
                        SizedBox(height: height * 0.025),
                        CardCustom(
                          width: width,
                          height: height,
                          title: 'TOP RATE',
                          image: 'See all',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: height * 0.08,
              left: width * 0.05,
              child: Icon(Icons.nights_stay_outlined, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

class TitleSeeAll extends StatelessWidget {
  const TitleSeeAll({super.key, required this.title, required this.otherTitle});

  final String title;
  final String otherTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: TextStyle(color: Colors.white)),
        Spacer(),
        Text(otherTitle, style: TextStyle(color: Colors.white)),
      ],
    );
  }
}

class CardCustom extends StatelessWidget {
  const CardCustom({
    super.key,
    required this.width,
    required this.height,
    required this.title,
    required this.image,
  });

  final double width;
  final double height;
  final String title;
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
        Text(title, style: TextStyle(color: Colors.white)),
        Icon(Icons.star, color: Colors.amberAccent),
      ],
    );
  }
}
