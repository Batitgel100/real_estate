import 'package:flutter/material.dart';
import 'package:real_estate/ui/screens/main%20screens/home_screen.dart';

import '../../../constants/color.dart';

class MyAdvertisement extends StatefulWidget {
  const MyAdvertisement({super.key});

  @override
  State<MyAdvertisement> createState() => _MyAdvertisementState();
}

class _MyAdvertisementState extends State<MyAdvertisement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.green,
          leading: InkWell(
            onTap: () {
              setState(() {
                indexcolor = 0;
              });
            },
            child: const Icon(
              Icons.arrow_back_ios,
            ),
          ),
          title: const Text('Миний зарууд'),
        ),
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.14,
                      width: MediaQuery.of(context).size.width * 0.95,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 7,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(12),
                                      ),
                                      // image: DecorationImage(
                                      //     image: AssetImage(
                                      //         '/Users/unurjargal/Documents/GitHub/real_estate/real_estate/assets/images/ff.png'),
                                      //     fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: InkWell(
                                    onTap: () {},
                                    child: Container(
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(12),
                                          ),
                                          color: Colors.green),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: const [
                                          Text(
                                            'Засварлах',
                                            style: TextStyles.white15,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 7,
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 5,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 98, 179, 150),
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(12),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Row(
                                        children: [
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                'King Appartment',
                                                style: TextStyles.white22,
                                              ),
                                              Row(
                                                children: const [
                                                  Text(
                                                    'Байршил: СБД 1-р хороо Ч апартмент',
                                                    style: TextStyles.white12,
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: const [
                                                  Text(
                                                    '350.000.000₮',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Color.fromARGB(
                                                            255, 255, 255, 255),
                                                        fontSize: 18),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: const [
                                                  // SizedBox(
                                                  //   width: 15,
                                                  // ),
                                                  Icon(
                                                    Icons.visibility,
                                                    size: 15,
                                                    color: Colors.white,
                                                  ),
                                                  Text(
                                                    '100',
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.022,
                                  decoration: const BoxDecoration(
                                    color: AppColors.green,
                                    borderRadius: BorderRadius.only(
                                        // bottomRight: Radius.circular(12),
                                        ),
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                        children: const [
                                          Icon(
                                            Icons.door_back_door_outlined,
                                            size: 15,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            '2',
                                            style: TextStyles.white15,
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: const [
                                          Icon(
                                            Icons.bathtub,
                                            size: 15,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            '2',
                                            style: TextStyles.white15,
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: const [
                                          Icon(
                                            Icons.home,
                                            size: 15,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            '58m2',
                                            style: TextStyles.white15,
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: const [
                                          Icon(
                                            Icons.stairs,
                                            size: 15,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            '2/8',
                                            style: TextStyles.white15,
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: const [
                                          Icon(
                                            Icons.garage,
                                            size: 15,
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
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: InkWell(
                                          onTap: () {},
                                          child: Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.05,
                                            decoration: const BoxDecoration(
                                                color: Color.fromARGB(
                                                    255, 133, 172, 205)),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: const [
                                                Text(
                                                  'Зарагдсанаар тэмдэглэх',
                                                  style: TextStyles.white15,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: InkWell(
                                          onTap: () {},
                                          child: Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.05,
                                            decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  bottomRight:
                                                      Radius.circular(12),
                                                ),
                                                color: Color.fromARGB(
                                                    255, 237, 147, 141)),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: const [
                                                Text(
                                                  'Устгах',
                                                  style: TextStyles.white15,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ));
  }
}
