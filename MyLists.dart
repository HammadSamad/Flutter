import 'package:flutter/material.dart';

class MyLists extends StatelessWidget {
  const MyLists({super.key,this.listLeading,required this.listTitle,this.listSubtitle,this.listTrailing,this.listTileColor});

  final Widget? listLeading;
  final String listTitle; 
  final String? listSubtitle; 
  final Widget? listTrailing; 
  final Color? listTileColor; 

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: listLeading ?? Icon(Icons.person),
      title: Text(listTitle),
      tileColor: listTileColor ?? Colors.black12,
      subtitle: Text("$listSubtitle"),
      // subtitle: Text(listSubtitle!),
      trailing: listTrailing,
    );
  }
}