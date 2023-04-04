import 'package:flutter/material.dart';
import 'package:real_estate/constants/color.dart';
import 'package:real_estate/ui/screens/appartment.dart';
import 'package:real_estate/ui/screens/maps.dart';
import 'package:real_estate/ui/screens/settings_screen.dart';
import 'package:real_estate/ui/screens/widgets/advertise.dart';
import 'package:real_estate/ui/screens/widgets/indicator.dart';

import '../agent_screen.dart';
import '../widgets/advertise_item.dart';

bool favorite = false;

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Navigator(
        onGenerateRoute: (insight) {
          Widget page = const SearchScreen();
          if (insight.name == 'search') page = const SearchScreen();
          if (insight.name == 'appartment') page = const Appartment();

          return MaterialPageRoute(builder: (_) => page);
        },
      ),
    );
  }
}

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
  ];
  List tabs = [
    const Tabuud(),
    const Mapss(),
    const AgentScreen(),
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext contex) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.05),

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
                height: MediaQuery.of(context).size.height * 0.05,
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
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.width * 0.3,
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
  ScrollController scrollController = ScrollController();
  bool _isVisible = true;
  final double _opacity = 1.0;
  @override
  void initState() {
    scrollController.addListener(() {
      setState(() {
        // Change the visibility based on the position of the scroll
        _isVisible = scrollController.offset <= 50;
      });
    });
    super.initState();
  }

  var _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    // TabController tabController = TabController(length: 3, vsync: this);
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Flex(
        direction: Axis.vertical,
        children: [
          Expanded(
            flex: _isVisible ? 4 : 0,
            child: Column(
              children: [
                const SizedBox(
                  height: 3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.054,
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
                        child: Center(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Хайх утгаа оруулна уу',
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const Settings()));
                      },
                      child: const Icon(
                        Icons.settings,
                        size: 45,
                        color: Color.fromARGB(255, 82, 82, 82),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  height: 1,
                  color: Colors.black,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.04,
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
                  height: 5,
                ),
                Visibility(
                  visible: _isVisible,
                  child: AnimatedOpacity(
                    opacity: _opacity,
                    duration: const Duration(milliseconds: 500),
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.15,
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
                                isActive:
                                    _selectedIndex == index ? true : false,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: _isVisible ? 7 : 10,
            child: ListView.builder(
              controller: scrollController,
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return const AppartmentWidget();
              },
            ),
          ),
        ],
      ),
    );
  }
}

class AppartmentWidget extends StatelessWidget {
  const AppartmentWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, 'appartment');
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          height: 250,
          width: 400,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  // image: const DecorationImage(
                  //   fit: BoxFit.cover,
                  //   image: AssetImage(
                  //     '/Users/unurjargal/Documents/GitHub/real_estate/real_estate/assets/images/ff.png',
                  //   ),
                  // ),
                  borderRadius: BorderRadius.circular(12),
                  color: const Color.fromARGB(161, 61, 155, 121),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(130, 61, 155, 121),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Center(
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  // image: const DecorationImage(
                                  //     image: AssetImage(
                                  //       '/Users/unurjargal/Documents/GitHub/real_estate/real_estate/assets/images/agent.png',
                                  //     ),
                                  //     fit: BoxFit.cover),
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text(
                                'Madel Rigonan',
                                style: TextStyles.white12,
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 15,
                                  ),
                                  Text(
                                    '4.5  Remax',
                                    style: TextStyles.white12,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(161, 61, 155, 121),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(12),
                              bottomRight: Radius.circular(12),
                            ),
                          ),
                          height: 70,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 4,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        'Hilton house',
                                        style: TextStyles.white15,
                                      ),
                                      Text(
                                        'Улаанбаатар, Баянзүрх дүүрэг',
                                        style: TextStyles.white12,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        '1’500’000’000 ₮',
                                        style: TextStyles.white12,
                                      ),
                                      Text(
                                        '150.6 м²',
                                        style: TextStyles.white12,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              // Expanded(
                              //   flex: 1,
                              //   child: favorite
                              //       ? const Icon(
                              //           Icons.favorite,
                              //           size: 25,
                              //           color: Colors.red,
                              //         )
                              //       : const Icon(
                              //           Icons.favorite_border,
                              //           size: 25,
                              //           color: Colors.white,
                              //         ),
                              // ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
