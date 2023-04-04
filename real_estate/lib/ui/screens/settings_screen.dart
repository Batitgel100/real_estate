import 'package:flutter/material.dart';
import 'package:real_estate/constants/color.dart';

const List<Widget> vegetables = <Widget>[
  Text('studio'),
  Text('1'),
  Text('2'),
  Text('3'),
  Text('4'),
  Text('5 +'),
];

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> with TickerProviderStateMixin {
  late TabController tabController;
  final List<bool> isSelected = <bool>[true, false, false, false, false, false];
  bool _value = true;
  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            // width: 400,
            height: 50,
            child: TabBar(
              indicatorWeight: 7,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: AppColors.green,
              labelColor: Colors.black,
              controller: tabController,
              tabs: const [
                Tab(
                  text: 'Худалдах',
                ),
                Tab(
                  text: 'Түрээслэх',
                ),
                Tab(
                  text: 'Зарагдсан',
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                ListView(
                  children: [
                    CustomButton(
                      title: const Text('Exclude under offer'),
                      ontap: () {},
                      icon: const Icon(Icons.warning),
                      icons: Switch.adaptive(
                        value: _value,
                        onChanged: (newValue) => setState(
                          () => _value = newValue,
                        ),
                      ),
                    ),
                    const Line(),
                    CustomButton(
                      title: const Text('Үнэ'),
                      icon: const Icon(Icons.money),
                      ontap: () {},
                      icons: const Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: AppColors.green,
                      ),
                    ),
                    const Line(),
                    CustomButton(
                      title: const Text('Төрөл'),
                      icon: const Icon(Icons.home),
                      ontap: () {},
                      icons: const Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: AppColors.green,
                      ),
                    ),
                    const Line(),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Center(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Унталганы өрөө',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                'Any',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 117, 116, 116)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: ToggleButtons(
                          textStyle: const TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            // color: Colors.black,
                          ),
                          isSelected: isSelected,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          // selectedBorderColor: Colors.red[700],
                          selectedColor: Colors.white,
                          fillColor: AppColors.green,
                          color: AppColors.green,
                          constraints: BoxConstraints(
                            minHeight: 40.0,
                            minWidth: MediaQuery.of(context).size.width * 0.15,
                          ),
                          children: vegetables,
                          onPressed: (int index) {
                            setState(() {
                              // The button that is tapped is set to true, and the others to false.
                              for (int i = 0; i < isSelected.length; i++) {
                                isSelected[i] = i == index;
                              }
                            });
                          },
                        ),
                      ),
                    ),
                    const Line(),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Center(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Угаалгын өрөө',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                'Any',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 117, 116, 116)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: ToggleButtons(
                          textStyle: const TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            // color: Colors.black,
                          ),
                          isSelected: isSelected,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          // selectedBorderColor: Colors.red[700],
                          selectedColor: Colors.white,
                          fillColor: AppColors.green,
                          color: AppColors.green,
                          constraints: BoxConstraints(
                            minHeight: 40.0,
                            minWidth: MediaQuery.of(context).size.width * 0.15,
                          ),
                          children: vegetables,
                          onPressed: (int index) {
                            setState(() {
                              // The button that is tapped is set to true, and the others to false.
                              for (int i = 0; i < isSelected.length; i++) {
                                isSelected[i] = i == index;
                              }
                            });
                          },
                        ),
                      ),
                    ),
                    const Line(),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Center(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Граж',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                'Any',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 117, 116, 116)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: ToggleButtons(
                          textStyle: const TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            // color: Colors.black,
                          ),
                          isSelected: isSelected,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          // selectedBorderColor: Colors.red[700],
                          selectedColor: Colors.white,
                          fillColor: AppColors.green,
                          color: AppColors.green,
                          constraints: BoxConstraints(
                            minHeight: 40.0,
                            minWidth: MediaQuery.of(context).size.width * 0.15,
                          ),
                          children: vegetables,
                          onPressed: (int index) {
                            setState(() {
                              // The button that is tapped is set to true, and the others to false.
                              for (int i = 0; i < isSelected.length; i++) {
                                isSelected[i] = i == index;
                              }
                            });
                          },
                        ),
                      ),
                    ),
                    const Line(),
                  ],
                ),
                const Text('data'),
                const Text('data'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  AppBar appBar(BuildContext context) {
    return AppBar(
      leadingWidth: 70,
      backgroundColor: Colors.white,
      actions: const [
        Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: InkWell(
              child: Text(
                'Ангилал устгах',
                style: TextStyle(
                    fontSize: 17,
                    color: AppColors.green,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        )
      ],
      leading: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Text(
              'буцах',
              style: TextStyle(
                  fontSize: 17,
                  color: AppColors.green,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      title: const Text(
        'Filter',
        style: TextStyle(
            fontSize: 20, color: Colors.black, fontWeight: FontWeight.w500),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final Widget title;
  final VoidCallback ontap;
  final Widget icons;
  final Widget icon;

  const CustomButton({
    Key? key,
    required this.title,
    required this.ontap,
    required this.icon,
    required this.icons,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.068,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      icon,
                      title
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Row(
                    children: [
                      // Text(
                      //   ,
                      //   style: const TextStyle(color: AppColors.green),
                      // ),
                      const SizedBox(
                        width: 5,
                      ),
                      icons,
                      // Icon(
                      //   Icons.arrow_forward_ios,
                      //   size: 20,
                      //   color: AppColors.green,
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class Line extends StatelessWidget {
  const Line({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          color: const Color.fromARGB(255, 195, 194, 194),
          height: 0.5,
          width: MediaQuery.of(context).size.width * 0.95,
        ),
      ],
    );
  }
}
