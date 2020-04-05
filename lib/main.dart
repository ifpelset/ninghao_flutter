import 'package:flutter/material.dart';
import 'demo/listview_demo.dart';
import 'demo/drawer_demo.dart';
import 'demo/bottom_navigation_bar_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        // 点击按钮高亮的颜色
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        // 点击按钮的水波纹颜色
        splashColor: Colors.white70
      ),
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
          // 左边的菜单按钮
          // leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   tooltip: 'Navigation',
          //   onPressed: () => debugPrint('Navigation button is pressed'),
          // ),
          // 右边的搜索按钮
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: () => debugPrint('Search button is pressed'),
            )
          ],
          title: Text('NINGHAO'),
          elevation: 30.0, // 阴影，默认4.0
          bottom: TabBar(
            unselectedLabelColor: Colors.black45,
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,//tab,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist),),
              Tab(icon: Icon(Icons.change_history),),
              Tab(icon: Icon(Icons.directions_bike),)
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            // Icon(Icons.local_florist, size: 128.0, color: Colors.grey,),
            ListViewDemo(),
            Icon(Icons.change_history, size: 128.0, color: Colors.grey,),
            Icon(Icons.directions_bike, size: 128.0, color: Colors.grey,)
        ],),
        // 左抽屉
        // drawer: Text('This is a drawer'),
        // 右抽屉
        // endDrawer: Text('This is a drawer'),
        // drawer: Container(
        //   color: Colors.white,
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: <Widget>[
        //       Text('This is a drawers')
        //     ],
        //   ),
        // ),
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomNavigationBarDemo()
      ),
    );
  }
}