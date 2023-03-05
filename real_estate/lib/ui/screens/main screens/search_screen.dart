import 'package:flutter/material.dart';
import 'package:real_estate/constants/color.dart';
import 'package:real_estate/ui/screens/appartment.dart';
import 'package:real_estate/ui/screens/maps.dart';
import 'package:real_estate/ui/screens/widgets/advertise.dart';
import 'package:real_estate/ui/screens/widgets/indicator.dart';

import '../agents.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen>
    with TickerProviderStateMixin {
  int current = 0;
  List<String> texts = [
    'Жагсаалт',
    'Газрын зураг',
    'Агентууд',

    //  'Газрын зураг
    //   'Агентууд'
  ];
  List tabs = [
    const Tabuud(),
    const Mapss(),
    const Agents(),
  ];
  @override
  Widget build(BuildContext contex) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40),
        // height: 50,
        // width: 400,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: SizedBox(
                // width: MediaQuery.of(context).size.width * 0.95,
                height: 45,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              current = index;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: current == index
                                  ? AppColors.green
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                width: 1,
                                color: const Color.fromARGB(159, 0, 0, 0),
                              ),
                            ),
                            height: 35,
                            width: 130,
                            child: Center(
                              child: Text(
                                texts[index],
                                style: TextStyle(
                                    color: current == index
                                        ? Colors.white
                                        : Colors.black),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      body: tabs[current],
    );
  }
}

class Tabuud extends StatefulWidget {
  const Tabuud({
    Key? key,
  }) : super(key: key);

  @override
  State<Tabuud> createState() => _TabuudState();
}

class _TabuudState extends State<Tabuud> with TickerProviderStateMixin {
  var _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    // TabController tabController = TabController(length: 3, vsync: this);
    return Column(
      children: [
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width * 0.83,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  width: 1,
                  color: const Color.fromARGB(159, 0, 0, 0),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 15),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Хайх утгаа оруулна уу',
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const Icon(
                Icons.settings,
                size: 45,
                color: Color.fromARGB(255, 82, 82, 82),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 7,
        ),
        Container(
          height: 1,
          color: Colors.black,
        ),
        Container(
          height: 40,
          width: MediaQuery.of(context).size.width,
          color: const Color.fromARGB(146, 61, 155, 121),
          child: Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.95,
              child: Row(
                children: const [
                  Text('255 мэдээлэл олдлоо'),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 110,
          width: MediaQuery.of(context).size.width,
          child: PageView.builder(
            onPageChanged: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            controller: PageController(viewportFraction: 0.9),
            itemCount: advertiseList.length,
            itemBuilder: (context, index) {
              return AdvertiseItem(
                advertise: advertiseList[index],
              );
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              advertiseList.length,
              (index) => Indicator(
                isActive: _selectedIndex == index ? true : false,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 453,
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const Appartment()));
                  },
                  child: Container(
                    height: 250,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.black,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class AdvertiseItem extends StatelessWidget {
  final Advertise advertise;
  const AdvertiseItem({
    Key? key,
    required this.advertise,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            image: NetworkImage(advertise.thumbnail),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
