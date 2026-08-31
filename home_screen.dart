
import 'package:flutter/material.dart';
import 'calculator_screen.dart';
class HomeScreen extends StatelessWidget{
 const HomeScreen({super.key});
 @override Widget build(BuildContext c)=>Scaffold(
 appBar:AppBar(title:const Text('Divine Creations 592')),
 body:ListView(padding:const EdgeInsets.all(16),children:[
 Center(child:Image.asset('assets/logo.png',height:120)),
 const SizedBox(height:16),
 const Card(child:ListTile(title:Text("Today's Orders"),trailing:Text("3"))),
 const Card(child:ListTile(title:Text("Revenue"),trailing:Text("GYD 24,000"))),
 const Card(child:ListTile(title:Text("Boxes Left"),trailing:Text("12"))),
 const SizedBox(height:12),
 FilledButton.icon(icon:const Icon(Icons.calculate),label:const Text('Cake Calculator'),
 onPressed:()=>Navigator.push(c,MaterialPageRoute(builder:(_)=>const CalculatorScreen()))),
 ]));
}
