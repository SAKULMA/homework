import 'package:flutter/material.dart';
import 'package:homework/pages/login/login_page.dart';

// HW11 02.07.40
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FLUTTER FOOD'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.purpleAccent,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.person, size: 80.0, color: Colors.white),
                  Text(
                    'Sanhanut Sakulma',
                    style: TextStyle(),
                  ),
                ],
              ),
            ),
            ListTile(
              title: buildDW(Icon(Icons.person),'FOOD'),
              onTap: (){
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              title:  buildDW(Icon(Icons.person),'Profile'),
                onTap: (){
                  Navigator.of(context).pop();
                },

              ),

          ],
        ),
      ),
      body: Container(
        child: Center(
          child: Opacity(
            opacity: 0.7,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'THIS IS A HOME PAGE',
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row buildDW(Icon icon,String title) {
    return Row(
      children: [
        icon,
        SizedBox(width: 8.0),
        Text(title),
      ],
    );
  }
}
