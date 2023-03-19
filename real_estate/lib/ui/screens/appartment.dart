import 'package:flutter/material.dart';
import 'package:real_estate/constants/color.dart';
import 'package:real_estate/ui/screens/agent_screen.dart';

class Appartment extends StatefulWidget {
  const Appartment({super.key});

  @override
  State<Appartment> createState() => _AppartmentState();
}

class _AppartmentState extends State<Appartment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool isScrolled) {
          return [
            SliverAppBar(
              leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    size: 30,
                  )),

              expandedHeight: 190,
              // leading: IconButton(icon: Icons.arrow_back_ios,color: ,),
              flexibleSpace: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  SizedBox(
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      'assets/images/real_estate.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 40,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(231, 61, 155, 121),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15))),
                    child: Row(
                      children: [
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.75,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Text(
                                    '350,000,000',
                                    style: TextStyles.white22,
                                  ),
                                ),
                              ],
                            )),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.25,
                          child: Center(
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.visibility,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '350,000',
                                  style: TextStyles.white15,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite,
                    size: 30,
                  ),
                ),
              ],
              backgroundColor: const Color.fromARGB(0, 255, 255, 255),
              elevation: 0,
            ),
          ];
        },
        body: Expanded(
          child: SizedBox(
            // width: MediaQuery.of(context).size.width * 0.95,
            // color: Colors.yellow,
            child: ListView(
              shrinkWrap: true,
              children: [
                const First(),
                const line(),
                const Luxury(),
                const line(),
                const Location(),
                const SizedBox(
                  height: 20,
                ),
                const line(),
                Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.95,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 5,
                            bottom: 10,
                          ),
                          child: Text(
                            'Төстэй зарууд',
                            style: TextStyles.white22,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: Agent(),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: Agent(),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: Agent(),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      backgroundColor: AppColors.grey,
      // bottomNavigationBar:
      // MyBottomNavBar(currentIndex: 0, onTap: widget.toSomething),
    );
  }
}

class Location extends StatelessWidget {
  const Location({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.95,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(
                top: 5,
              ),
              child: Text(
                'Location',
                style: TextStyles.white22,
              ),
            ),
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(12),
                // image: const DecorationImage(
                //   image: AssetImage(
                //     '/Users/unurjargal/Documents/GitHub/real_estate/real_estate/assets/images/ddd.jpg',
                //   ),
                //   fit: BoxFit.contain,
                // ),
              ),
              child: Image.asset(
                '/Users/unurjargal/Documents/GitHub/real_estate/real_estate/assets/images/imageddd.png',
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Agent(),
          ],
        ),
      ),
    );
  }
}

class Luxury extends StatelessWidget {
  const Luxury({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.yellow,
      height: MediaQuery.of(context).size.height * 0.3,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text('Luxury appartment', style: TextStyles.white25),
            const Text('Ашиглалтад орсон эсэх: Тийм',
                style: TextStyles.white15),
            const Text('Ашиглалтад орсон: 2020', style: TextStyles.white15),
            const Text('Лизинг: Үгүй', style: TextStyles.white15),
            const Text('Байршил: СБД 1-р хороо Ч апартмент',
                style: TextStyles.white15),
            Container(
              height: 100,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 69, 69, 69),
                borderRadius: BorderRadius.circular(20),
                // border: Border.all(
                //   color: Colors.white,
                //   width: 2,
                // ),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Center(
                  child: Text(
                    'Хотын төвд, УИД-н баруун талд Peace mall худалдааны төвийн баруун жигүүр буюу Пийс тауэрт 95 мкв оффис худалдана. Эрэлттэй байршил тохилог оффис, хямд үнэ. Бартерт төвийн байршилд орон сууц оролцуулах боломжтой',
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class First extends StatelessWidget {
  const First({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.07,
      // color: Colors.yellow,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: const [
              Icon(
                Icons.door_back_door_outlined,
                size: 40,
                color: Colors.white,
              ),
              Text(
                '2',
                style: TextStyles.white15,
              )
            ],
          ),
          Column(
            children: const [
              Icon(
                Icons.bathtub,
                size: 40,
                color: Colors.white,
              ),
              Text(
                '2',
                style: TextStyles.white15,
              )
            ],
          ),
          Column(
            children: const [
              Icon(
                Icons.home,
                size: 40,
                color: Colors.white,
              ),
              Text(
                '58m2',
                style: TextStyles.white15,
              )
            ],
          ),
          Column(
            children: const [
              Icon(
                Icons.stairs,
                size: 40,
                color: Colors.white,
              ),
              Text(
                '2/8',
                style: TextStyles.white15,
              )
            ],
          ),
          Column(
            children: const [
              Icon(
                Icons.garage,
                size: 40,
                color: Colors.white,
              ),
              Text(
                '1',
                style: TextStyles.white15,
              )
            ],
          ),
        ],
      ),
    );
  }
}

class line extends StatelessWidget {
  const line({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
    );
  }
}
