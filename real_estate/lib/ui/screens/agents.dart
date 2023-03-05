import 'package:flutter/material.dart';
import 'package:real_estate/ui/screens/main%20screens/search_screen.dart';
import 'package:real_estate/ui/screens/widgets/advertise.dart';
import 'package:real_estate/ui/screens/widgets/indicator.dart';

class Agents extends StatefulWidget {
  const Agents({
    Key? key,
  }) : super(key: key);

  @override
  State<Agents> createState() => _AgentsState();
}

class _AgentsState extends State<Agents> with TickerProviderStateMixin {
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
                child: Container(
                  height: 120,
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.black,
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
