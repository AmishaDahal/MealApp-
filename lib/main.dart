import 'package:MealApp/dummy_data.dart';
import 'package:MealApp/models/meals.dart';
import 'package:MealApp/screens/categories_screen.dart';
import 'package:MealApp/screens/category_meals_screen.dart';
import 'package:MealApp/screens/filter_screen.dart';
import 'package:MealApp/screens/meal_detail_screen.dart';
import 'package:MealApp/screens/tabs_screen.dart';
import 'package:flutter/material.dart';

import 'screens/categories_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
 
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String,bool>_filters ={
    'gluten':false,
    'lactose':false,
    'vegan':false,
    'vegetarian':false,
  };

  List<Meals> _availableMeals =DUMMY_MEALS;
  List<Meals> _favoriteMeals =[];

  void _setFilters(Map<String,bool>filterData){
    setState(() {
      _filters =filterData;

      _availableMeals =DUMMY_MEALS.where((meal) {
          if(_filters['gluten'] && !meal.isGultenFree){
            return false;
          }
          if(_filters['lactose'] && !meal.isLactoseFree){
            return false;
          }
          if(_filters['vegan'] && !meal.isVegan){
            return false;
          }
          if(_filters['vegetarian'] && !meal.isVegetaran){
            return false;
          }
          return true;
      }).toList();
    });
  }

    void _toggleFavorite(String mealId){
      final existingIndex=
      _favoriteMeals.indexWhere((meal) => meal.id == mealId);
      if (existingIndex>=0){
        setState(() {
          _favoriteMeals.removeAt(existingIndex);
        });
      } else{
        setState(() {
          _favoriteMeals.add(
            DUMMY_MEALS.firstWhere((meal) => meal.id == mealId),
          );
        });
      }
    }

    bool _isMealFavorite(String id){
      return _favoriteMeals.any((meal) => meal.id == id);
    }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DailyMEal',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'OpenSans',
        textTheme: ThemeData.light().textTheme.copyWith(
          bodyText2: TextStyle(color: Color.fromRGBO(20, 51, 51,1),),
          bodyText1: TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1)
          ),
          headline6: TextStyle(
            fontSize: 20,
            fontFamily: 'Quicksand',
          ),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
     // home: CategoriesScreen(),
      initialRoute: '/',
      routes: {
      '/':(ctx)=>TabsScreen(_favoriteMeals),
        CategoryMealsScreen.routeName:(ctx) => CategoryMealsScreen(_availableMeals),
        MealDetailScreen.routeName:(ctx) => MealDetailScreen(_toggleFavorite,_isMealFavorite),
        FiltersScreen.routeName:(ctx)=>FiltersScreen(_filters,_setFilters),
      },
      onUnknownRoute: (setting){
        return MaterialPageRoute(builder: (ctx)=>CategoriesScreen());
      },
    );
  }
}

