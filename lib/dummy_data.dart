import 'package:MealApp/models/category.dart';
import 'package:MealApp/models/meals.dart';
import 'package:flutter/material.dart';

const DUMMY_CATEGORIES =const [
  Category(
  id:'c1',
  title:'Summer',
  color: Colors.purple,
  ),
  Category(
  id:'c2',
  title:'Italian',
  color: Colors.red,
  ),

  Category(
  id:'c3',
  title:'Quick & Easy',
  color: Colors.blue,
  ),

  Category(
  id:'c4',
  title:'French',
  color: Colors.orange,
  ),

  Category(
  id:'c5',
  title:'Hamburgers',
  color: Colors.green,
  ),

  Category(
  id:'c6',
  title:'German',
  color: Colors.blue,
  ),

  Category(
  id:'c7',
  title:'Light & Lovely',
  color: Colors.deepOrange,
  ),

  Category(
  id:'c8',
  title:'Breakfast',
  color: Colors.teal,
  ),

  Category(
  id:'c9',
  title:'Asian',
  color: Colors.lightBlue,
  ),
  Category(
  id:'c10',
  title:'Exotic',
  color: Colors.greenAccent,
  ),

];
const DUMMY_MEALS =const [
  Meals(
    id: 'm1', 
    categories: ['c1','c2','c3'], 
    title: 'Spaghetti with Tomato Sacuce', 
    imageUrl: 'https://www.thespruceeats.com/thmb/Y2SpC8Jn7TBcJjrvMx4f2UQ764Y=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/147332016-56a371c23df78cf7727d672f.jpg',
    ingredients: [
      'Spaghetti Pasta- 250 gms',
      'Water + salt - to boil it',
      'Olive oil- 2 tbsp',
      'Oregano',
      'Garlic cloves- 4' ,
      'Chopped onions- 1',
      'Puree of 5 tomatoes',
      'Salt to taste',
      'Red chilli Powder or Black Pepper Powder',
      'Chilli Flakes',
      'Mixed herbs',

], 
    steps: [
      'Boil water in a large pot. To make sure pasta doesnotstick together, use at least 4 quarts of water for every pound of noodles.',
      'Salt the water with at least a tablespoon—more is fine. The salty water adds flavor to the pasta.',
      'Add pasta. ...',
      'Stir the pasta. ...',
      'Test the pasta by tasting it. ...',
      'Drain the pasta',
    ], 
    duration: 20, 
    complexity: Complexity.Simply, 
    affordability: Affordability.Affordable, 
    isGultenFree: true, 
    isLactoseFree: true, 
    isVegan: true, 
    isVegetaran: true,
    ),

    Meals(
    id: 'm2', 
    categories: ['c3','c4'], 
    title: 'Spaghetti with Tomato Sacuce', 
    imageUrl: 'https://i.pinimg.com/originals/c9/b2/09/c9b209c5937c0016d929c511beb842dd.jpg', 
    ingredients: [
      'Spaghetti Pasta- 250 gms',
      'Water + salt - to boil it',
      'Olive oil- 2 tbsp',
      'Oregano',
      'Garlic cloves- 4' ,
      'Chopped onions- 1',
      'Puree of 5 tomatoes',
      'Salt to taste',
      'Red chilli Powder or Black Pepper Powder',
      'Chilli Flakes',
      'Mixed herbs'

], 
    steps: [
      'Boil water in a large pot. ' ,
      'Salt the water with at least a tablespoon—more is fine. ' ,
      'Add pasta. ' ,
      'Stir the pasta.' ,
      'Test the pasta by tasting it.' ,
      'Drain the pasta'
    ], 
    duration: 20, 
    complexity: Complexity.Simply, 
    affordability: Affordability.Affordable, 
    isGultenFree: true, 
    isLactoseFree: true, 
    isVegan: true, 
    isVegetaran: true,
    ),
     Meals(
    id: 'm3', 
    categories: ['c5','c6'], 
    title: 'Spaghetti with Tomato Sacuce', 
    imageUrl: 'https://i.pinimg.com/originals/c9/b2/09/c9b209c5937c0016d929c511beb842dd.jpg', 
    ingredients: [
      'Spaghetti Pasta- 250 gms',
      'Water + salt - to boil it',
      'Olive oil- 2 tbsp',
      'Oregano',
      'Garlic cloves- 4' ,
      'Chopped onions- 1',
      'Puree of 5 tomatoes',
      'Salt to taste',
      'Red chilli Powder or Black Pepper Powder',
      'Chilli Flakes',
      'Mixed herbs'

], 
    steps: [
      'Boil water in a large pot. To make sure pasta doesnotstick together, use at least 4 quarts of water for every pound of noodles.',
      'Salt the water with at least a tablespoon—more is fine. The salty water adds flavor to the pasta.',
      'Add pasta. ...',
      'Stir the pasta. ...',
      'Test the pasta by tasting it. ...',
      'Drain the pasta',
    ], 
    duration: 20, 
    complexity: Complexity.Simply, 
    affordability: Affordability.Affordable, 
    isGultenFree: true, 
    isLactoseFree: true, 
    isVegan: true, 
    isVegetaran: true,
    ),
     Meals(
    id: 'm4', 
    categories: ['c7','c8'], 
    title: 'Spaghetti with Tomato Sacuce', 
    imageUrl: 'https://i.pinimg.com/originals/c9/b2/09/c9b209c5937c0016d929c511beb842dd.jpg', 
    ingredients: [
      'Spaghetti Pasta- 250 gms',
      'Water + salt - to boil it',
      'Olive oil- 2 tbsp',
      'Oregano',
      'Garlic cloves- 4' ,
      'Chopped onions- 1',
      'Puree of 5 tomatoes',
      'Salt to taste',
      'Red chilli Powder or Black Pepper Powder',
      'Chilli Flakes',
      'Mixed herbs',

], 
    steps: [
      'Boil water in a large pot. To make sure pasta doesnotstick together, use at least 4 quarts of water for every pound of noodles.',
      'Salt the water with at least a tablespoon—more is fine. The salty water adds flavor to the pasta.',
      'Add pasta. ...',
      'Stir the pasta. ...',
      'Test the pasta by tasting it. ...',
      'Drain the pasta',
    ], 
    duration: 20, 
    complexity: Complexity.Simply, 
    affordability: Affordability.Affordable, 
    isGultenFree: true, 
    isLactoseFree: true, 
    isVegan: true, 
    isVegetaran: true,
    ),
     Meals(
    id: 'm5', 
    categories: ['c9','c10'], 
    title: 'Spaghetti with Tomato Sacuce', 
    imageUrl: 'https://i.pinimg.com/originals/c9/b2/09/c9b209c5937c0016d929c511beb842dd.jpg', 
    ingredients: [
      'Spaghetti Pasta- 250 gms',
      'Water + salt - to boil it',
      'Olive oil- 2 tbsp',
      'Oregano',
      'Garlic cloves- 4' ,
      'Chopped onions- 1',
      'Puree of 5 tomatoes',
      'Salt to taste',
      'Red chilli Powder or Black Pepper Powder',
      'Chilli Flakes',
      'Mixed herbs'

], 
    steps: [
      'Boil water in a large pot. To make sure pasta doesnotstick together, use at least 4 quarts of water for every pound of noodles.',
      'Salt the water with at least a tablespoon—more is fine. The salty water adds flavor to the pasta.',
      'Add pasta. ...',
      'Stir the pasta. ...',
      'Test the pasta by tasting it. ...',
      'Drain the pasta',
    ], 
    duration: 20, 
    complexity: Complexity.Simply, 
    affordability: Affordability.Affordable, 
    isGultenFree: true, 
    isLactoseFree: true, 
    isVegan: true, 
    isVegetaran: true,
    ),
     Meals(
    id: 'm6', 
    categories: ['c1','c10'], 
    title: 'Spaghetti with Tomato Sacuce', 
    imageUrl: 'https://i.pinimg.com/originals/c9/b2/09/c9b209c5937c0016d929c511beb842dd.jpg', 
        ingredients: [
      'Spaghetti Pasta- 250 gms',
      'Water + salt - to boil it',
      'Olive oil- 2 tbsp',
      'Oregano',
      'Garlic cloves- 4' ,
      'Chopped onions- 1',
      'Puree of 5 tomatoes',
      'Salt to taste',
      'Red chilli Powder or Black Pepper Powder',
      'Chilli Flakes',
      'Mixed herbs'

], 
    steps: [
      'Boil water in a large pot. To make sure pasta doesnotstick together, use at least 4 quarts of water for every pound of noodles.',
      'Salt the water with at least a tablespoon—more is fine. The salty water adds flavor to the pasta.',
      'Add pasta. ...',
      'Stir the pasta. ...',
      'Test the pasta by tasting it. ...',
      'Drain the pasta',
    ], 
    duration: 20, 
    complexity: Complexity.Simply, 
    affordability: Affordability.Affordable, 
    isGultenFree: true, 
    isLactoseFree: true, 
    isVegan: true, 
    isVegetaran: true,
    ),
     Meals(
    id: 'm7', 
    categories: ['c9','c2'], 
    title: 'Spaghetti with Tomato Sacuce', 
    imageUrl: 'https://i.pinimg.com/originals/c9/b2/09/c9b209c5937c0016d929c511beb842dd.jpg', 
    ingredients: [
      'Spaghetti Pasta- 250 gms',
      'Water + salt - to boil it',
      'Olive oil- 2 tbsp',
      'Oregano',
      'Garlic cloves- 4' ,
      'Chopped onions- 1',
      'Puree of 5 tomatoes',
      'Salt to taste',
      'Red chilli Powder or Black Pepper Powder',
      'Chilli Flakes',
      'Mixed herbs'

], 
    steps: [
      'Boil water in a large pot. To make sure pasta doesnotstick together, use at least 4 quarts of water for every pound of noodles.',
      'Salt the water with at least a tablespoon—more is fine. The salty water adds flavor to the pasta.',
      'Add pasta. ...',
      'Stir the pasta. ...',
      'Test the pasta by tasting it. ...',
      'Drain the pasta',
    ], 
    duration: 20, 
    complexity: Complexity.Simply, 
    affordability: Affordability.Affordable, 
    isGultenFree: true, 
    isLactoseFree: true, 
    isVegan: true, 
    isVegetaran: true,
    ),
     Meals(
    id: 'm8', 
    categories: ['c3','c8'], 
    title: 'Spaghetti with Tomato Sacuce', 
    imageUrl: 'https://i.pinimg.com/originals/c9/b2/09/c9b209c5937c0016d929c511beb842dd.jpg', 
    ingredients: [
      'Spaghetti Pasta- 250 gms',
      'Water + salt - to boil it',
      'Olive oil- 2 tbsp',
      'Oregano',
      'Garlic cloves- 4' ,
      'Chopped onions- 1',
      'Puree of 5 tomatoes',
      'Salt to taste',
      'Red chilli Powder or Black Pepper Powder',
      'Chilli Flakes',
      'Mixed herbs'
], 
    steps: [
      'Boil water in a large pot. To make sure pasta doesnotstick together, use at least 4 quarts of water for every pound of noodles.',
      'Salt the water with at least a tablespoon—more is fine. The salty water adds flavor to the pasta.',
      'Add pasta. ...',
      'Stir the pasta. ...',
      'Test the pasta by tasting it. ...',
      'Drain the pasta',
    ], 
    duration: 20, 
    complexity: Complexity.Simply, 
    affordability: Affordability.Affordable, 
    isGultenFree: true, 
    isLactoseFree: true, 
    isVegan: true, 
    isVegetaran: true,
    ),
     Meals(
    id: 'm9', 
    categories: ['c4','c7'], 
    title: 'Spaghetti with Tomato Sacuce', 
    imageUrl: 'https://i.pinimg.com/originals/c9/b2/09/c9b209c5937c0016d929c511beb842dd.jpg', 
    ingredients: [
    'Spaghetti Pasta- 250 gms',
      'Water + salt - to boil it',
      'Olive oil- 2 tbsp',
      'Oregano',
      'Garlic cloves- 4' ,
      'Chopped onions- 1',
      'Puree of 5 tomatoes',
      'Salt to taste',
      'Red chilli Powder or Black Pepper Powder',
      'Chilli Flakes',
      'Mixed herbs'
], 
    steps: [
      'Boil water in a large pot. To make sure pasta doesnotstick together, use at least 4 quarts of water for every pound of noodles.',
      'Salt the water with at least a tablespoon—more is fine. The salty water adds flavor to the pasta.',
      'Add pasta. ...',
      'Stir the pasta. ...',
      'Test the pasta by tasting it. ...',
      'Drain the pasta',
    ], 
    duration: 20, 
    complexity: Complexity.Simply, 
    affordability: Affordability.Affordable, 
    isGultenFree: true, 
    isLactoseFree: true, 
    isVegan: true, 
    isVegetaran: true,
    ),
    Meals(
    id: 'm10', 
    categories: ['c5','c6'], 
    title: 'Spaghetti with Tomato Sacuce', 
    imageUrl: 'https://i.pinimg.com/originals/c9/b2/09/c9b209c5937c0016d929c511beb842dd.jpg', 
    ingredients: [
      'Spaghetti Pasta- 250 gms',
      'Water + salt - to boil it',
      'Olive oil- 2 tbsp',
      'Oregano',
      'Garlic cloves- 4' ,
      'Chopped onions- 1',
      'Puree of 5 tomatoes',
      'Salt to taste',
      'Red chilli Powder or Black Pepper Powder',
      'Chilli Flakes',
      'Mixed herbs'

], 
    steps: [
      'Boil water in a large pot. To make sure pasta doesnotstick together, use at least 4 quarts of water for every pound of noodles.',
      'Salt the water with at least a tablespoon—more is fine. The salty water adds flavor to the pasta.',
      'Add pasta. ...',
      'Stir the pasta. ...',
      'Test the pasta by tasting it. ...',
      'Drain the pasta',
    ], 
    duration: 20, 
    complexity: Complexity.Simply, 
    affordability: Affordability.Affordable, 
    isGultenFree: true, 
    isLactoseFree: true, 
    isVegan: true, 
    isVegetaran: true,
    ),
    
];