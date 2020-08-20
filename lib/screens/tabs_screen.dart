import 'package:MealApp/items/main_drawer.dart';
import 'package:MealApp/models/meals.dart';
import 'package:MealApp/screens/favorites_screen.dart';
import 'package:flutter/material.dart';

import 'categories_screen.dart';

class TabsScreen extends StatefulWidget {
  final List<Meals> favoriteMeals;

   TabsScreen(this.favoriteMeals);
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override

  Widget build(BuildContext context) {
      return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar:AppBar(
          title:Text('Meals'),
          bottom: TabBar(
            
            unselectedLabelColor: Colors.yellow,

            tabs:[
                  Tab(
                    icon: Icon(Icons.category,
                    ),
                    text:'Categories',
                  ),
                  Tab(
                    icon: Icon(Icons.star),
                    text:'Favorites' ,
                  ),
          ],
          ),
        ),
        drawer:MainDrawer(),
        body: TabBarView(children: <Widget>[
          CategoriesScreen(),
          FavoritesScreen(widget.favoriteMeals),
        ],),
      ),
    );
  }
}