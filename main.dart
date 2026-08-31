
import 'package:flutter/material.dart';
import 'core/theme.dart';
import 'screens/home_screen.dart';
void main()=>runApp(const App());
class App extends StatelessWidget{
 const App({super.key});
 @override Widget build(BuildContext c)=>MaterialApp(
 debugShowCheckedModeBanner:false,
 title:'Divine Creations 592',
 theme:appTheme,
 home:const HomeScreen(),
 );
}
