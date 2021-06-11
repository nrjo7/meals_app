import 'package:flutter/material.dart';
import './dummy_data.dart';
import './category_item.dart';

class CategoryScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ramlas Kitchen nrj'),
      ),
      body:GridView(
        padding:EdgeInsets.all(20) ,
      children: DUMMY_CATEGORIES.map((catData)=>CategoryItem(catData.id,catData.title,catData.color)).toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
      ),
      
    )
     
    );
  }
}
