import 'package:flutter/material.dart';
import 'package:instituteassignment/dumy_data.dart';
class DummyDataList extends StatelessWidget {
  final List<DummyData> data;

  DummyDataList({required this.data});

  @override
  Widget build(BuildContext context) {
    return
      ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.all(5),
          margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          decoration: BoxDecoration(
            color: Color(0xffF6EFFE),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [


              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/photo.jpg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Positioned.fill(

                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0x00000000), // Transparent at the top
                            Color(0x00000000), // Transparent in the middle
                            Color(0xff7D23E0), // Colored at the bottom
                          ],
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                           // SizedBox(width: 20,),
                            Icon(Icons.location_on_outlined,color: Colors.white,),
                            Text(data[index].location ,style: TextStyle(
                              color: Colors.white, // Text color
                              fontSize: 20, // Text size
                              fontWeight: FontWeight.bold,
                            ),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${data[index].institute}',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Image.asset('assets/icons/rating.png'),
                        SizedBox(width: 3,),
                        Text(
                          '${data[index].rating}',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 5,),
                        Icon(Icons.circle,size: 10,),

                        Text(
                          '${data[index].distance}',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 79,
                              height: 29,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                border: Border.all(
                                  width: 2,
                                  color: Color(0xff7D23E0),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  data[index].subjects[0],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xff7D23E0),
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 5), // Adjust spacing between subjects horizontally
                            Container(
                              width: 79,
                              height: 29,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                border: Border.all(
                                  width: 2,
                                  color: Color(0xff7D23E0),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  data[index].subjects[1],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xff7D23E0),
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8), // Adjust spacing between rows vertically
                        Row(
                          children: [
                            Container(
                              width: 79,
                              height: 29,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                border: Border.all(
                                  width: 2,
                                  color: Color(0xff7D23E0),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  data[index].subjects[2],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xff7D23E0),
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 5), // Adjust spacing between subjects horizontally
                            Container(
                              width: 79,
                              height: 29,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                border: Border.all(
                                  width: 2,
                                  color: Color(0xff7D23E0),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  data[index].subjects[3],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xff7D23E0),
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Container(
                          width: 79,
                          height: 29,
                          decoration: BoxDecoration(
                            color: Color(0xff7D23E0),
                            borderRadius: BorderRadius.circular(7),

                          ),
                          child: Center(
                            child: Text(
                              '20% OFF',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),

                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

