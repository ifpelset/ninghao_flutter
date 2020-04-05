import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              /*
              DrawerHeader(
                child: Text('header'.toUpperCase()),
                decoration: BoxDecoration(
                  color: Colors.yellow
                ),s
              ),*/
              UserAccountsDrawerHeader(
                accountName: Text('Poocom', style: TextStyle(fontWeight: FontWeight.bold),),
                accountEmail: Text('ifpelset@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage('https://resources.ninghao.org/images/wanghao.jpg'),
                ),
                decoration: BoxDecoration(
                  color: Colors.yellow[400],
                  image: DecorationImage(
                    image: NetworkImage('https://resources.ninghao.org/images/childhood-in-a-picture.jpg'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.yellow[400].withOpacity(0.6),
                      BlendMode.hardLight
                    )
                  )
                ),
              ),
              ListTile(
                title: Text('Messages', textAlign: TextAlign.right,),
                // title左边
                // leading: Icon(Icons.message, color: Colors.grey,),
                // title 右边
                trailing: Icon(Icons.message, color: Colors.black26, size: 22.0,),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                title: Text('Favorite', textAlign: TextAlign.right,),
                trailing: Icon(Icons.favorite, color: Colors.black26, size: 22.0,),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                title: Text('Settings', textAlign: TextAlign.right,),
                trailing: Icon(Icons.settings, color: Colors.black26, size: 22.0,),
                onTap: () => Navigator.pop(context),
              )
            ],
          ),
        );
  }
}