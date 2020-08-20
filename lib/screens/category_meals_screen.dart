
import 'package:MealApp/items/meals_items.dart';
import 'package:flutter/material.dart';
import '../models/meals.dart';
class CategoryMealsScreen extends StatefulWidget {
  // final String categoryId;
  // final String categoryTitle;
  
  static const routeName ='CategoryMealsScreen';

  final List<Meals>availableMeals;

    CategoryMealsScreen( this.availableMeals) ;

  @override
  _CategoryMealsScreenState createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
  String categoryTitle;
  List<Meals> displayedMeals;
  var _loadedInitData = false;
  
  @override

  void initState(){
    //...
    super.initState();
  }
//due to context we cannot use finalroute inside init so we use didchange.
  @override
  void didChangeDependencies() {
    if (!_loadedInitData){
      final routeArgs = ModalRoute.of(context).settings.arguments as Map<String,String>;
    categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    displayedMeals = widget.availableMeals.where((meal){
      return meal.categories.contains(categoryId);
    } ).toList();
    _loadedInitData=true;
    }

    super.didChangeDependencies();
  }


  void _removeMeal(String mealId){
    setState(() {
      displayedMeals.removeWhere((meal) => meal.id == mealId);
    });
  }

  
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        title:Text(categoryTitle,
        ),
        
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: displayedMeals[index].id,
            title: displayedMeals[index].title,
            imageUrl:displayedMeals[index].imageUrl ,
            duration:displayedMeals[index].duration ,
            affordability: displayedMeals[index].affordability,
            complexity:displayedMeals[index].complexity ,
            
            );
        },
        itemCount: displayedMeals.length,
        ),
    );
  }
}