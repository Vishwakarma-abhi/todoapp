import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/screens/home.dart';
import 'package:todo_app/providers/todos_models.dart';

void main() {
  runApp(const todo_app());
}

class todo_app extends StatefulWidget {
  const todo_app({Key? key}) : super(key: key);

  @override
  State<todo_app> createState() => _todo_appState();
}

class _todo_appState extends State<todo_app> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => TodosModel(),
      child: MaterialApp(
        title: 'Todos',
        theme: ThemeData.dark(),
        home: homeScreen(),
      ),
    );
  }
}
