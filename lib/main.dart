import 'package:flutter/material.dart';
import './demo/listview_demo.dart';

void main(List<String> args) => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      theme: ThemeData(
          primarySwatch: Colors.yellow,
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
          splashColor: Colors.white70),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
            // leading: IconButton(
            //   icon: Icon(Icons.menu),
            //   tooltip: 'Navigation',
            //   onPressed: () => debugPrint('Leading is pressed'),
            // ),
            title: Text('Mob'),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                tooltip: 'Navigation',
                onPressed: () => debugPrint('Search is pressed'),
              )
            ],
            elevation: 0.0,
            bottom: TabBar(
              unselectedLabelColor: Colors.black38,
              indicatorColor: Colors.black54,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 1.0,
              tabs: <Widget>[
                Tab(icon: Icon(Icons.local_florist)),
                Tab(icon: Icon(Icons.change_history)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Icon(Icons.local_florist, size: 128.0, color: Colors.black12),
              Icon(Icons.change_history, size: 128.0, color: Colors.black12),
              Icon(Icons.directions_bike, size: 128.0, color: Colors.black12),
            ],
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                UserAccountsDrawerHeader(
                  accountName: Text('Mob', style:TextStyle(fontWeight:FontWeight.bold)),
                  accountEmail: Text('mob@qq.com'),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage('https://resources.ninghao.org/images/candy-shop.jpg'),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.yellow[400],
                    image:DecorationImage(
                      image:  NetworkImage('https://resources.ninghao.org/images/candy-shop.jpg'),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                        Colors.yellow[400].withOpacity(0.5), BlendMode.hardLight)
                    )
                  ),
                ),
                ListTile(
                  title: Text('Messages', textAlign: TextAlign.right),
                  trailing:Icon(Icons.message, color: Colors.black12, size: 22.0),
                  onTap: () => Navigator.pop(context),
                ),
                ListTile(
                  title: Text('Favorite', textAlign: TextAlign.right),
                  trailing:Icon(Icons.favorite, color: Colors.black12, size: 22.0),
                  onTap: () => Navigator.pop(context),
                ),
                ListTile(
                  title: Text('Settings', textAlign: TextAlign.right),
                  trailing:Icon(Icons.settings, color: Colors.black12, size: 22.0),
                  onTap: () => Navigator.pop(context),
                )
              ],
            ),
          )),
    );
  }
}
