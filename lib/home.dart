


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
   HomeScreen({Key? key}) : super(key: key);


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

FilterOption _selectedFilter = FilterOption.distance;
 // Default filter option
   Future<void> _applyFilter(FilterOption newFilter) async {
     // Apply the filter based on newFilter
     // You can add your filtering logic here
     // For example, you can update _selectedFilter and refresh the UI.
     _selectedFilter = newFilter;

     // Close the dialog
     Navigator.of(context).pop();
   }
Future<void> _showFilterDialog(BuildContext context) async {
  final FilterOption? newFilter = await showDialog<FilterOption>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Filter by:'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              title: Text('Distance'),
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
              title: Text('Rating'),
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
              title: Text('Price'),
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
        title: Text('For JEE Mains'),
        leading: SizedBox(
          width: 30,
          height: 30,
          child: Container(
            //width: 20, // Adjust the width as needed
            //height: 20, // Adjust the height as needed
            child: IconButton(
              icon: Icon(
                Icons.arrow_back_ios_new,
                size: 20,
                color: Colors.white,
              ),
              onPressed: () {
                // Handle the onPressed event for the back button
              },
            ),
            decoration: BoxDecoration(
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
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: TextField(

                    decoration: InputDecoration(
                      hintText: 'Search for UPSC Coaching',
                      border: InputBorder.none, // Remove the border
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  // Handle the search button tap
                },
                icon: Icon(Icons.search, color: Colors.grey),
              ),
              IconButton(
                onPressed: () {
                  // Handle the microphone button tap
                },
                icon: Icon(Icons.mic, color: Color(0xff7D23E0)),
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
                  margin: EdgeInsets.only(left: 24, top: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.5), // Half of the height to create rounded corners
                    border: Border.all(
                      width: 2,
                      color: Color(0xff7D23E0),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Filters',
                        style: TextStyle(fontSize: 15),
                      ),
                      Container(
                        width: 17, // Set the desired width
                        height: 17, // Set the desired height
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
                  margin: EdgeInsets.only(left: 24, top: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.5), // Half of the height to create rounded corners
                    border: Border.all(
                      width: 2,
                      color: Color(0xff7D23E0),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sort',
                        style: TextStyle(fontSize: 15),
                      ),
                      Container(
                          width: 17, // Set the desired width
                          height: 17, // Set the desired height
                          child: Icon(Icons.keyboard_arrow_down_outlined)
                        // Image.asset(
                        //   'assets/icons/filter.png',
                        //   fit: BoxFit.cover, // Use BoxFit.cover to fill the container size
                        // ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 79,
                height: 29,
                margin: EdgeInsets.only(left: 24, top: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14.5), // Half of the height to create rounded corners
                  border: Border.all(
                    width: 2,
                    color: Color(0xff7D23E0),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '<2KM',
                      style: TextStyle(fontSize: 15),
                    ),
                    // Container(
                    //     width: 17, // Set the desired width
                    //     height: 17, // Set the desired height
                    //     child: Icon(Icons.keyboard_arrow_down_outlined)
                    //   // Image.asset(
                    //   //   'assets/icons/filter.png',
                    //   //   fit: BoxFit.cover, // Use BoxFit.cover to fill the container size
                    //   // ),
                    // ),
                  ],
                ),
              ),
              Container(
                width: 79,
                height: 29,
                margin: EdgeInsets.only(left: 24, top: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14.5), // Half of the height to create rounded corners
                  border: Border.all(
                    width: 2,
                    color: Color(0xff7D23E0),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'JEE',
                      style: TextStyle(fontSize: 15),
                    ),
                    // Container(
                    //     width: 17, // Set the desired width
                    //     height: 17, // Set the desired height
                    //     child: Icon(Icons.keyboard_arrow_down_outlined)
                    //   // Image.asset(
                    //   //   'assets/icons/filter.png',
                    //   //   fit: BoxFit.cover, // Use BoxFit.cover to fill the container size
                    //   // ),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
        //LimitedBox(
           // scrollDirection: Axis.vertical,
             //LimitedBox(
        SizedBox(height: 15,),
               //child:
               SizedBox(
                  width: 400,
                  height:450,
                  child: DummyDataList(data: data)),

      ],),
      bottomNavigationBar: BottomNav(),
    );
  }
}
