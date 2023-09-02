
import 'package:flutter/material.dart';
import 'package:instituteassignment/bottomnavigation.dart';
import 'package:instituteassignment/detail.dart';
import 'package:instituteassignment/dumy_data.dart';
enum FilterOption {
  distance,
  rating,
  price,
}
class HomeScreen extends StatefulWidget {
   const HomeScreen({Key? key}) : super(key: key);


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

final FilterOption _selectedFilter = FilterOption.distance;
 void _sortDataByDistance() {
  data.sort((a, b) => a.distance.compareTo(b.distance));
  setState(() {});
}

Future<void> _applyFilter(FilterOption newFilter) async {
  switch (newFilter) {
    case FilterOption.distance:
      _sortDataByDistance();
      break;
  }
  Navigator.of(context).pop();
}

Future<void> _showFilterDialog(BuildContext context) async {
  final FilterOption? newFilter = await showDialog<FilterOption>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Filter by:'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              title: const Text('Distance'),
              leading: Radio<FilterOption>(
                value: FilterOption.distance,
                groupValue: _selectedFilter,
                onChanged: (FilterOption? value) {
                  if (value != null) {
                    _applyFilter(value);
                  }
                },
              ),
            ),

            ListTile(
              title: const Text('Rating'),
              leading: Radio<FilterOption>(
                value: FilterOption.rating,
                groupValue: _selectedFilter,
                onChanged: (FilterOption? value) {
                  if (value != null) {
                    _applyFilter(value);
                  }
                },
              ),
            ),
            ListTile(
              title: const Text('Price'),
              leading: Radio<FilterOption>(
                value: FilterOption.price,
                groupValue: _selectedFilter,
                onChanged: (FilterOption? value) {
                  if (value != null) {
                    _applyFilter(value);
                  }
                },
              ),
            ),
          ],
        ),
      );
    },
  );
}
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('For JEE Mains'),
        leading: SizedBox(
          width: 30,
          height: 30,
          child: Container(
             child:   IconButton(
              icon:  Icon(
                Icons.arrow_back_ios_new,
                size: 20,
                color: Colors.white,
              ),
              onPressed: () {
              },
            ),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xff7D23E0),
            ),
          ),
        ),
      ),

      body: Column(children: [
        Container(
          width: 339,
          height: 50,
          margin: EdgeInsets.only(left: 10, top: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), // Rounded corners
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Row(
            children: [
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: TextField(

                    decoration: InputDecoration(
                      hintText: 'Search for UPSC Coaching',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                },
                icon: const Icon(Icons.search, color: Colors.grey),
              ),
              IconButton(
                onPressed: () {
                },
                icon: const Icon(Icons.mic, color: Color(0xff7D23E0)),
              ),
            ],
          ),
        )       ,
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  _showFilterDialog(context);
                },
                child: Container(
                  width: 79,
                  height: 29,
                  margin: const EdgeInsets.only(left: 24, top: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.5), // Half of the height to create rounded corners
                    border: Border.all(
                      width: 2,
                      color: const Color(0xff7D23E0),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Filters',
                        style: TextStyle(fontSize: 15),
                      ),
                       Container(
                        width: 17,
                        height: 17,
                        child: Image.asset(
                          'assets/icons/filter.png',
                          fit: BoxFit.cover, // Use BoxFit.cover to fill the container size
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  _showFilterDialog(context);

                },
                child: Container(
                  width: 79,
                  height: 29,
                  margin: const EdgeInsets.only(left: 24, top: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.5),
                    border: Border.all(
                      width: 2,
                      color: const Color(0xff7D23E0),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Sort',
                        style: TextStyle(fontSize: 15),
                      ),
                      Container(
                          width: 17,
                          height: 17,
                          child: const Icon(Icons.keyboard_arrow_down_outlined)

                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 79,
                height: 29,
                margin: const EdgeInsets.only(left: 24, top: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14.5),
                  border: Border.all(
                    width: 2,
                    color: const Color(0xff7D23E0),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      '<2KM',
                      style: TextStyle(fontSize: 15),
                    ),

                  ],
                ),
              ),
              Container(
                width: 79,
                height: 29,
                margin: const EdgeInsets.only(left: 24, top: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14.5),
                  border: Border.all(
                    width: 2,
                    color: Color(0xff7D23E0),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'JEE',
                      style: TextStyle(fontSize: 15),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 15,),
               //child:
               SizedBox(
                  width: 400,
                  height:450,
                  child: DummyDataList(data: data)),

      ],),
      bottomNavigationBar: const BottomNav(),
    );
  }
}
