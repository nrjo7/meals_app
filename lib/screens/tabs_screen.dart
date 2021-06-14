import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/widgets/main_drawer.dart';
import '/screens/favorite_screen.dart';
import '/screens/category_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        //initialIndex: 0,
        child: Scaffold(
          drawer: MainDrawer(),
          appBar: AppBar(
            title: Text('Meals'),
            bottom: TabBar(tabs: <Widget>[
              Tab(text: 'Categories',icon:Icon(Icons.category) ,),
              Tab(icon:Icon(Icons.star), text:'Favorites' ,)
            ]),
          ),
          body:TabBarView(children: <Widget>[CategoryScreen(),FavoriteScreen()])
        ));
  }
}
