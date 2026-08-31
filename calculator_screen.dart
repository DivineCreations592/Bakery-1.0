
import 'package:flutter/material.dart';
class CalculatorScreen extends StatefulWidget{
 const CalculatorScreen({super.key});
 @override State<CalculatorScreen> createState()=>_CalculatorScreenState();
}
class _CalculatorScreenState extends State<CalculatorScreen>{
 String size='8';
 bool fondant=false;
 final costs={'6':1850,'8':2850,'10':4300,'12':6200};
 int get finish=>fondant?2200:{'6':700,'8':1200,'10':1700,'12':2400}[size]!;
 int get total=>costs[size]!+finish+300+250+2500;
 int get sell=>(0);
 @override Widget build(BuildContext c){
 final selling=((total*1.7)/100).round()*100;
 return Scaffold(appBar:AppBar(title:const Text("Cake Calculator")),
 body:Padding(padding:const EdgeInsets.all(16),child:Column(children:[
 DropdownButton<String>(value:size,isExpanded:true,items:['6','8','10','12'].map((e)=>DropdownMenuItem(value:e,child:Text(e+'"'))).toList(),onChanged:(v)=>setState(()=>size=v!)),
 SwitchListTile(title:const Text('Fondant Finish'),value:fondant,onChanged:(v)=>setState(()=>fondant=v)),
 const SizedBox(height:12),
 Card(child:Padding(padding:const EdgeInsets.all(16),child:Column(children:[
 Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children:[const Text('Cost'),Text('GYD '+total.toString())]),
 const SizedBox(height:8),
 Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children:[const Text('Selling Price'),Text('GYD '+selling.toString())]),
 ])))
 ])));
 }
}
