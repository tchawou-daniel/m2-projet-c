
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NewScreen extends StatelessWidget {
  const NewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Tab> myTabs = <Tab>[
      const Tab(icon: Icon(Icons.people)),
      const Tab(icon: Icon(Icons.star)),
      const Tab(icon: Icon(Icons.celebration)),
    ];

    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
              title: const Center(child : Text('Book')),
              bottom: TabBar(
                tabs: myTabs,
              ),

          ),

          body: ListView(
              children: const <Widget>[
                ListTile(
                  title: Text('Left hand of Darkness'),
                  subtitle: Text('Map'),
              ),
                ListTile(
                  title: Text('Kindred'),
                  subtitle: Text('Octavia Bufer'),
                ),
              ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.grey,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.book),
                label: 'Book',
               // backgroundColor: Colors.black,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.people),
                label: 'Authors',
               // backgroundColor: Colors.green,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Setting',
                //backgroundColor: Colors.purple,
              ),

            ],
          ),

      ),
      );
  }
}




