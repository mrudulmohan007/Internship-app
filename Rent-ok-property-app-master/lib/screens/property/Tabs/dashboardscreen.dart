import 'package:flutter/material.dart';
import 'package:rental_ok_app/screens/property/screen/peopleadd.dart';
import 'package:rental_ok_app/screens/property/screen/propertyadd.dart';

class DashboardTab extends StatefulWidget {
  const DashboardTab({super.key});

  @override
  State<DashboardTab> createState() => _DashboardTabState();
}

class _DashboardTabState extends State<DashboardTab> {
  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    bool showMore = false;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: _mediaQuery.size.height * 0.3,
                padding: EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AddPropertyPro()),
                        );
                      },
                      child: Text('Add Property'),
                    ),
                    SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AddPeoplePro(),
                          ),
                        );
                      },
                      child: Text('Add People'),
                    ),
                    SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop(); // Close the bottom sheet
                      },
                      child: Text('Exit'),
                    ),
                  ],
                ),
              );
            },
          );
        },
        child: Icon(Icons.add),
      ),

      //body is from here
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'search properties',
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: _mediaQuery.size.height * 0.0008,
            ),
            Container(
              height: _mediaQuery.size.height * 0.05,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 227, 236, 254),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 8),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 11, left: 10),
                      child: Icon(
                        Icons.info,
                        color: Color.fromARGB(255, 44, 3, 230),
                        size: 24,
                      ),
                    ),
                    SizedBox(width: _mediaQuery.size.width * 0.05),
                    Text(
                      'Hurray! you have 1 Active Property',
                      style: TextStyle(
                          fontSize: 15, color: Color.fromARGB(255, 33, 5, 240)),
                    ),
                  ],
                ),
              ),
            ),

            //horizontal scrollable items
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              width: double.infinity,
              height: _mediaQuery.size.height * 0.17,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Container(
                          width: _mediaQuery.size.width * 0.3,
                          height: _mediaQuery.size.height * 0.15,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: Colors.black.withOpacity(0.2),
                              width: 1.0,
                            ),
                          ),
                          //text and icons inside the container
                          child: Padding(
                            padding: const EdgeInsets.all(11.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  '0',
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: _mediaQuery.size.height * 0.035,
                                ),
                                Row(
                                  children: [
                                    Text('Total\nRooms'),
                                    SizedBox(
                                      width: _mediaQuery.size.width * 0.04,
                                    ),
                                    Icon(
                                      Icons.door_front_door,
                                      color: Colors.green,
                                      size: 31,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: _mediaQuery.size.width * 0.05),
                        Container(
                          width: _mediaQuery.size.width * 0.3,
                          height: _mediaQuery.size.height * 0.15,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: Colors.black.withOpacity(0.2),
                              width: 1.0,
                            ),
                          ),
                          //text and icons inside the container
                          child: Padding(
                            padding: const EdgeInsets.all(11.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  '0',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: _mediaQuery.size.height * 0.035,
                                ),
                                Row(
                                  children: [
                                    Text('Under\nNotice'),
                                    SizedBox(
                                      width: _mediaQuery.size.width * 0.04,
                                    ),
                                    Icon(
                                      Icons.door_front_door,
                                      color: Colors.red,
                                      size: 31,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: _mediaQuery.size.width * 0.05),
                        Container(
                          width: _mediaQuery.size.width * 0.3,
                          height: _mediaQuery.size.height * 0.15,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: Colors.black.withOpacity(0.2),
                              width: 1.0,
                            ),
                          ),
                          //text and icons inside the container
                          child: Padding(
                            padding: const EdgeInsets.all(11.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  '0',
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: _mediaQuery.size.height * 0.035,
                                ),
                                Row(
                                  children: [
                                    Text('Vacant\nBeds'),
                                    SizedBox(
                                      width: _mediaQuery.size.width * 0.04,
                                    ),
                                    Icon(
                                      Icons.door_front_door,
                                      color: Colors.black54,
                                      size: 31,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: _mediaQuery.size.width * 0.05),
                        Container(
                          width: _mediaQuery.size.width * 0.3,
                          height: _mediaQuery.size.height * 0.15,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: Colors.black.withOpacity(0.2),
                              width: 1.0,
                            ),
                          ),
                          //text and icons inside the container
                          child: Padding(
                            padding: const EdgeInsets.all(11.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  '0',
                                  style: TextStyle(
                                    color: Colors.orange,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: _mediaQuery.size.height * 0.035,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text('Total\nBookings'),
                                    // SizedBox(
                                    //   width: _mediaQuery.size.width * 0.04,
                                    // ),
                                    Icon(
                                      Icons.door_front_door,
                                      color: Colors.orange,
                                      size: 31,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),

            //2nd half of the screen
            SizedBox(
              height: _mediaQuery.size.height * 0.02,
            ),
            ListView(
              shrinkWrap: true,
              children: [
                Container(
                  margin: EdgeInsets.all(14),
                  height: _mediaQuery.size.height * 0.35,
                  width: _mediaQuery.size.width * 0.9,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.black12),
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(
                            Icons.home,
                            size: _mediaQuery.size.width * 0.09,
                          ),
                          title: Text('Achu'),
                          subtitle: Text('0 Rooms/0 Beds\n 12345'),
                          trailing: ElevatedButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.check),
                            label: Text('Current'),
                          ),
                        ),
                        Divider(),
                        ListTile(
                          leading: Icon(
                            Icons.bed_outlined,
                            size: _mediaQuery.size.width * 0.056,
                            color: Colors.green,
                          ),
                          title: Text('Filled Beds'),
                          trailing: Text('0'),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.bed_outlined,
                            size: _mediaQuery.size.width * 0.056,
                            color: Color.fromARGB(255, 7, 241, 238),
                          ),
                          title: Text('Vacant Beds'),
                          trailing: Text('0'),
                        ),
                        ExpansionTile(
                          textColor: Color.fromARGB(255, 9, 65, 230),
                          title: Center(
                            child: Text('View More'),
                          ),
                          children: [
                            ListTile(
                              leading: Icon(
                                Icons.bed_outlined,
                                size: _mediaQuery.size.width * 0.056,
                                color: Colors.orange,
                              ),
                              title: Text('Under Notice'),
                              trailing: Text('0'),
                            ),

                            ListTile(
                              leading: Icon(
                                Icons.people,
                                size: _mediaQuery.size.width * 0.056,
                                color: Color.fromARGB(255, 19, 4, 236),
                              ),
                              title: Text('Tenants'),
                              trailing: Text('0'),
                            ),
                            ListTile(
                              leading: Icon(
                                Icons.money,
                                size: _mediaQuery.size.width * 0.056,
                                color: Color.fromARGB(255, 13, 238, 114),
                              ),
                              title: Text('Collection'),
                              trailing: Text('0'),
                            ),
                            ListTile(
                              leading: Icon(
                                Icons.people,
                                size: _mediaQuery.size.width * 0.056,
                                color: Colors.pink,
                              ),
                              title: Text('Leads'),
                              trailing: Text('0'),
                            ),
                            // Add more ListTile widgets as needed
                          ],
                          // If showMore is false, show an empty list
                          onExpansionChanged: (expanded) {
                            setState(
                              () {
                                showMore = expanded;
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(left: 9, right: 9),
                //   child: ElevatedButton.icon(
                //     style: ElevatedButton.styleFrom(
                //       backgroundColor: Color.fromARGB(255, 10, 2, 235),
                //     ),
                //     onPressed: () {},
                //     icon: Icon(Icons.share),
                //     label: Text('Share my Website'),
                //   ),
                // )
              ],
            )
          ],
        ),
      ),
    );
  }
}
