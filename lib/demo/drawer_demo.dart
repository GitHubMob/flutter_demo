import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName:
                Text('Mob', style: TextStyle(fontWeight: FontWeight.bold)),
            accountEmail: Text('mob@qq.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://resources.ninghao.org/images/candy-shop.jpg'),
            ),
            decoration: BoxDecoration(
                color: Colors.yellow[400],
                image: DecorationImage(
                    image: NetworkImage(
                        'https://resources.ninghao.org/images/candy-shop.jpg'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.yellow[400].withOpacity(0.5),
                        BlendMode.hardLight))),
          ),
          ListTile(
            title: Text('Messages', textAlign: TextAlign.right),
            trailing: Icon(Icons.message, color: Colors.black12, size: 22.0),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text('Favorite', textAlign: TextAlign.right),
            trailing: Icon(Icons.favorite, color: Colors.black12, size: 22.0),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text('Settings', textAlign: TextAlign.right),
            trailing: Icon(Icons.settings, color: Colors.black12, size: 22.0),
            onTap: () => Navigator.pop(context),
          )
        ],
      ),
    );
  }
}
