import 'package:flutter/material.dart';
import 'package:real_estate/constants/color.dart';
import 'package:real_estate/ui/screens/widgets/advertise.dart';
import 'package:real_estate/ui/screens/widgets/advertise_item.dart';
import 'package:real_estate/ui/screens/widgets/indicator.dart';

class AgentScreen extends StatefulWidget {
  const AgentScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<AgentScreen> createState() => _AgentScreenState();
}

class _AgentScreenState extends State<AgentScreen>
    with TickerProviderStateMixin {
  ScrollController scrollController = ScrollController();
  final double _opacity = 1.0;
  bool _visible = true;
  var _selectedIndex = 0;
  @override
  void initState() {
    scrollController.addListener(() {
      setState(() {
        // Change the visibility based on the position of the scroll
        _visible = scrollController.offset <= 50;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TabController tabController = TabController(length: 3, vsync: this);
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Flex(
        direction: Axis.vertical,
        children: [
          Expanded(
            flex: _visible ? 4 : 0,
            child: Column(
              children: [
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.95,
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
                            hintText: 'Агент нэрээр хайх',
                          ),
                        ),
                      ),
                    ),
                    // InkWell(
                    //   onTap: () {},
                    //   child: const Icon(
                    //     Icons.settings,
                    //     size: 45,
                    //     color: Color.fromARGB(255, 82, 82, 82),
                    //   ),
                    // ),
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
                          SizedBox(
                            width: 10,
                          ),
                          Text('255 агент олдлоо'),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Visibility(
                  visible: _visible,
                  child: AnimatedOpacity(
                    opacity: _opacity,
                    duration: const Duration(milliseconds: 500),
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.14,
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
            flex: _visible ? 7 : 10,
            child: ListView.builder(
              controller: scrollController,
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const AgentPage(),
                        ),
                      );
                    },
                    child: const Agent(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Agent extends StatelessWidget {
  const Agent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color.fromARGB(255, 89, 88, 88),
        // image: const DecorationImage(
        //     image: AssetImage(
        //       '/Users/unurjargal/Documents/GitHub/real_estate/real_estate/assets/images/ageent.jpg',
        //     ),
        //     fit: BoxFit.cover),
      ),
      child: Row(
        children: [
          Expanded(
              flex: 3,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      bottomLeft: Radius.circular(12)),
                  // image: DecorationImage(
                  //     image: AssetImage(
                  //       '/Users/unurjargal/Documents/GitHub/real_estate/real_estate/assets/images/ageent.jpg',
                  //     ),
                  //     fit: BoxFit.cover),
                ),
                height: 100,
                // child: Image.asset(
                //   '/Users/unurjargal/Documents/GitHub/real_estate/real_estate/assets/images/ageent.jpg',
                //   fit: BoxFit.fitHeight,
                // ),
              )),
          Expanded(
              flex: 7,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 8.0,
                ),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Midel Rigonan',
                          style: TextStyles.white22,
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.home_rounded,
                              color: Colors.white,
                              size: 15,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Борлуулсан :',
                              style: TextStyles.white15,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '53',
                              style: TextStyles.white15bold,
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.money_sharp,
                              color: Colors.white,
                              size: 15,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Борлуулж байгаа :',
                              style: TextStyles.white15,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '153',
                              style: TextStyles.white15bold,
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.phone,
                              color: Colors.white,
                              size: 15,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Утас :',
                              style: TextStyles.white15,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '9999-9999',
                              style: TextStyles.white15bold,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          Icon(
                            Icons.star,
                            size: 20,
                            color: Colors.yellow,
                          ),
                          Text(
                            '5.4',
                            style: TextStyles.white15,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

class AgentPage extends StatefulWidget {
  const AgentPage({super.key});

  @override
  State<AgentPage> createState() => _AgentPageState();
}

class _AgentPageState extends State<AgentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grey,
      appBar: AppBar(
        backgroundColor: AppColors.green,
        title: const Text('Midel Rigonan'),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            SizedBox(
              height: 320,
              child: Stack(
                children: [
                  Container(
                    height: 320,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      // borderRadius: BorderRadius.circular(12),
                      color: Colors.black,
                      // image: DecorationImage(
                      //     image: AssetImage(
                      //       '/Users/unurjargal/Documents/GitHub/real_estate/real_estate/assets/images/ageent.jpg',
                      //     ),
                      //     fit: BoxFit.cover),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width,
                        color: const Color.fromARGB(60, 0, 0, 0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: SizedBox(
                                height: 80,
                                width: 80,
                                child: Image.asset(
                                  '/Users/unurjargal/Documents/GitHub/real_estate/real_estate/assets/images/276ddddss.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            const Text(
                              'Remax',
                              style: TextStyles.white25bold,
                            ),
                            const SizedBox(
                              width: 100,
                            ),
                            SizedBox(
                              width: 120,
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                color: AppColors.grey,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'Midel Rigonan',
                      style: TextStyles.white25bold,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        'Meredith Hart is a junior staff writer for the Sales Blog. She enjoys traveling and photography -- and can often be found roaming around Boston with a camera (or a coffee) in hand. Connect with her on Twitter!',
                        style: TextStyles.white12,
                      ),
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.insights,
                          color: Colors.white,
                          size: 35,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Туршлага:',
                          style: TextStyles.white15,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '15 жил',
                          style: TextStyles.white15bold,
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.home_rounded,
                          color: Colors.white,
                          size: 35,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Борлуулсан :',
                          style: TextStyles.white15,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '53',
                          style: TextStyles.white15bold,
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.money_sharp,
                          color: Colors.white,
                          size: 35,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Борлуулж байгаа :',
                          style: TextStyles.white15,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '153',
                          style: TextStyles.white15bold,
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.phone,
                          color: Colors.white,
                          size: 35,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Утас :',
                          style: TextStyles.white15,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '9999-9999',
                          style: TextStyles.white15bold,
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.star,
                          color: Colors.white,
                          size: 35,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Үнэлгээ :',
                          style: TextStyles.white15,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '4.5',
                          style: TextStyles.white15bold,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 110,
                      width: 400,
                      decoration: BoxDecoration(
                          // image: const DecorationImage(
                          //     image: AssetImage(
                          //         '/Users/unurjargal/Documents/GitHub/real_estate/real_estate/assets/images/reklam.jpg'),
                          //     fit: BoxFit.cover),
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(12)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
