import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Screen')),
      body: Center(
        child: FloatingActionButton(
          
                 
          child: Center(
            child:Text(
            '+',
            style: TextStyle(fontSize: 24.0),
          ),
          ),
          
          onPressed: () {
            _navigateToNextScreen(context);
          },
        ),
      ),
    );
  }

  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewScreen()));
  }
}

class NewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('New Screen')),
      body:ListView(
        children: [
          Container(
            color: Colors.deepPurple,
            margin: EdgeInsets.all(5.0),
            child: ListTile(
              leading: Image.network("https://img.buzzfeed.com/buzzfeed-static/static/2013-12/enhanced/webdr02/19/12/enhanced-buzz-28684-1387474736-20.jpg?output-quality=auto&output-format=auto&downsize=640:*",height: 200,),
              title: Text("Burger"),
              trailing: Text("Price: 400 " ,style:TextStyle(fontSize: 20),),
            ),


          ),
           Container(
            child: ListTile(
              leading: Image.network("https://img.buzzfeed.com/buzzfeed-static/static/2013-12/enhanced/webdr02/19/12/enhanced-buzz-28684-1387474736-20.jpg?output-quality=auto&output-format=auto&downsize=640:*",height: 200,),
              title: Text("Burger"),
              trailing: Text("Price: 400 ", style:TextStyle(fontSize: 20),),
            ),
           ),
             Container(
            child: ListTile(
              leading: Image.network("https://img.buzzfeed.com/buzzfeed-static/static/2013-12/enhanced/webdr02/19/12/enhanced-buzz-28684-1387474736-20.jpg?output-quality=auto&output-format=auto&downsize=640:*",height: 200,),
              title: Text("Burger"),
              trailing: Text("Price: 400 ", style:TextStyle(fontSize: 20),),
              subtitle: Text('Here is a second line'),
            ),
             ),
        ],
        
        
        

      
               
      ),
    );
  }
}