import 'package:MealApp/items/main_drawer.dart';
import 'package:flutter/material.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName='filters';

  final Function saveFilters;
  final Map<String,bool>currentFilters;
  FiltersScreen(this.currentFilters,this.saveFilters);



  @override
  _FiltersScreenState createState() => _FiltersScreenState();
  
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _glutenFree = false;
  bool _vegetarain = false;
  bool _vegan =false;
  bool _lactoseFree = false;
  

  @override
  initState(){
    _glutenFree=widget.currentFilters['gluten'];
    _lactoseFree=widget.currentFilters['lactose'];
    _vegan=widget.currentFilters['vegan'];
    _vegetarain=widget.currentFilters['vegetarian'];
    super.initState();
  }
  Widget _buildSwitchListTile(
    String title,
    String description,
    bool currentValue,
    Function updateValue
    ){
    return SwitchListTile(
                      title: Text(title),
                      value: currentValue, 
                      subtitle: Text(
                        description
                      ),
                      onChanged: updateValue,
                      
                      );
  }

  Widget build(BuildContext context) {
    return Scaffold(
          appBar:AppBar(
            title:Text('Your Filters'),
            actions: <Widget>[
              IconButton(icon: Icon(Icons.save),
              onPressed:(){
                final selectedFilters ={
                  'gluten':_glutenFree,
                  'lactose':_lactoseFree,
                  'vegan':_vegan,
                  'vegetarian':_vegetarain,
                };
                widget.saveFilters(selectedFilters);
              },
              ),
            ],
          ) ,
          body: Column(
            children:[
              Container(
                padding: EdgeInsets.all(20),
                child: Text('Adjust your meal selection',
                style:Theme.of(context).textTheme.headline6,
                ),
              ),
              Expanded(
                child: ListView(
                  children: <Widget>[
                    _buildSwitchListTile('GlutenFree', 'Only include gluten-free meals', _glutenFree, (newValue){
                      setState(() {
                        _glutenFree =newValue;
                      });
                    },
                    ),
                    _buildSwitchListTile('Lactose-free', 'Only include  lactose-free meals.', _lactoseFree, (newValue){
                      setState(() {
                        _lactoseFree =newValue;
                      });
                    },
                    ),
                    _buildSwitchListTile('Vegetarain', 'Only include vegetarain  meals', _vegetarain, (newValue){
                      setState(() {
                        _vegetarain =newValue;
                      });
                    },
                    ),
                    _buildSwitchListTile('Vegan', 'Only include vegan meals', _vegan, (newValue){
                      setState(() {
                        _vegan =newValue;
                      });
                    },
                    ),
                    
                    
                    
                  ],
                ),
              ),
            ],
          ),
      drawer: MainDrawer(),
    );
  }
}