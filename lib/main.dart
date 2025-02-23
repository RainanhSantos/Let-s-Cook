import 'package:flutter/material.dart';

import 'screens/settings_screen.dart';
import 'screens/categories_meals_screen.dart';
import 'utils/app_routes.dart';
import 'screens/meal_detail_screen.dart';
import 'screens/tabs_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Vamos Cozinhar?",
      theme: ThemeData(
        fontFamily: 'Raleway',
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
          titleLarge: TextStyle( 
            fontSize: 20,
            fontFamily: 'RobotoCondensed',
          ),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.pink,
          foregroundColor: Colors.white,
        ),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Colors.amber,
        ),
      ),
      routes: {
        AppRoutes.home: (ctx) => TabsScreen(),
        AppRoutes.categoriesMeals: (ctx) => CategoriesMealsScreen(),
        AppRoutes.mealDetail: (ctx) => MealDetailScreen(),
        AppRoutes.settings: (ctx) => SettingsScreen(),
      },
    );
  }
}
