import 'package:digital_tasbeeh/model/tasbeeh_model.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count = 0;
  int currentItemIndex = 0;

  final List<Tasbeeh> _tasbeehItems = tasbeehItems;

  increment() {
    setState(() {
      count++;

      if (count % 33 == 0 && currentItemIndex < _tasbeehItems.length - 1) {
        currentItemIndex++;
      } else if (count % 33 == 0 &&
          currentItemIndex == _tasbeehItems.length - 1) {
        currentItemIndex = 0;
      }
      if (count == 100) {
        count = 0;
        return;
      }
      if (count < 33) {}
    });
  }

  reset() {
    setState(() {
      count = 0;
      currentItemIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        padding: const EdgeInsets.only(top: 60),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.orange,
              Colors.pink,
            ],
          ),
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Digital Tasbeeh",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 20,
              ),
              width: double.maxFinite,
              height: 170,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    _tasbeehItems[currentItemIndex].tasbeehArbi,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    _tasbeehItems[currentItemIndex].tasbeehEnglish,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    _tasbeehItems[currentItemIndex].tasbeehBangla,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .15,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Transform.scale(
                      scale: 1.4,
                      child: Image.asset(
                        "assets/images/digital_tasbeeh.png",
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                    Positioned(
                      left: 152,
                      top: 8,
                      child: Container(
                        alignment: Alignment.center,
                        height: 72,
                        width: 143,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: Text(
                          "$count",
                          style: const TextStyle(
                            fontSize: 55,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'jarvane',
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 255,
                      top: 78,
                      child: IconButton(
                        onPressed: reset,
                        icon: const Icon(
                          Icons.refresh,
                          size: 25,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 180,
                      top: 132,
                      child: InkWell(
                        onTap: increment,
                        child: Container(
                          padding: const EdgeInsets.all(22),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: const [
                              //Shadow for top-left corner
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(1, 1),
                                blurRadius: 0,
                                spreadRadius: 1,
                              ),

                              //Shadow for bottom-right corner
                              BoxShadow(
                                color: Colors.black54,
                                offset: Offset(0, 0),
                                blurRadius: 2,
                                spreadRadius: 1,
                              ),
                            ],
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 0.5,
                              color: Colors.white,
                            ),
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color.lerp(Colors.grey[400], Colors.white, .1)
                                      as Color,
                                  Color.lerp(Colors.white, Colors.grey[100], .2)
                                      as Color,
                                ]),
                          ),
                          child: const Icon(
                            Icons.add,
                            size: 40,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
