
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instituteassignment/home.dart';
import 'package:instituteassignment/slideshow.dart';
//import 'package:flutter_svg/flutter_svg.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  int currentIndex = 0;
  late PageController _controller;
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                controller: _controller,
                itemCount: contents.length,
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (_, i) {
                  return Column(

                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 280,
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomeScreen()));
                              },
                              child: Text(
                                "Skip",
                                textAlign: TextAlign.right,
                              )),
                        ],
                      ),

                      SizedBox(height: MediaQuery.of(context).size.height/3),
                      Text(
                        contents[i].title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        contents[i].description,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  );
                }),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(contents.length,
                  (index) => property(currentIndex, index, context)),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width - 40,
            height: 50,
            margin: const EdgeInsets.symmetric(horizontal: 60),
            decoration: BoxDecoration(
                color: Color(0xff6318AF),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: InkWell(
              onTap: () {
                if (currentIndex == contents.length - 1) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                }
                _controller.nextPage(
                    duration: Duration(milliseconds: 100),
                    curve: Curves.bounceIn);
                // authController.loginuser
              },
              child: Center(
                child: Text(
                  currentIndex == contents.length - 1 ? 'Continue' : 'Next',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Container property(int current, int index, BuildContext context) {
  return Container(
    height: 10,
    width: current == index ? 20 : 10,
    margin: EdgeInsets.only(right: 5),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20), color: Colors.purple),
  );
}
