import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // final List<Tab>  topTabs = <Tab>[
    //  const Tab(icon: Icon(Icons.camera)),
    //  const Tab(text:'CHATS'),
    //  const Tab(text: 'STATUS'),
    //  const Tab(text: 'CALLS'),
    // ];
    return Scaffold(
        appBar: AppBar(
      //     bottom: const TabBar(tabs: [
      //       Tab(icon: Icon(Icons.camera)),
      // Tab(text:'CHATS'),
      // Tab(text: 'STATUS'),
      // Tab(text: 'CALLS'),
      //     ]),

          backgroundColor: Colors.green,
          title: const Text(
            'Whatsapp',
            style: TextStyle(fontSize: 30),
          ),
          actions: const [
            Icon(
              Icons.search,
              size: 30,
            ),
            Icon(
              Icons.more_vert,
              size: 30,
            )
          ],
        ),
        
        body: ListView(
            children: [
              _listItem(
                name: 'Ridhi',
              ),
              _listItem(
                name: 'Mumma',
              ),
              _listItem(
                name: 'Mansi',
              ),
              _listItem(
                name: 'Mansi di',
              ),
              _listItem(
                name: 'Kartik',
              ),
              _listItem(
                name: 'Janvi',
              ),
              _listItem(
                name: 'Nilesh sir',
              ),
              _listItem(
                name: 'Tulsi',
              ),
              _listItem(
                name: 'Paresh sir',
              ),
              _listItem(
                name: 'Dadu',
              ),
              _listItem(
                name: 'Bhoomika',
              ),
              _listItem(
                name: 'Adana sir',
              ),
              _listItem(
                name: 'Khushbu',
              ),
              _listItem(
                name: 'Shradha',
              ),
              _listItem(
                name: 'Pa',
              ),
            ],
          ),
    );
  }
}

Widget _listItem({String? name,String? desig}){
      return ListTile(
          dense: true,
          onTap: () => ("$name Pressed"),
          onLongPress: ()=>("$desig long pressed"),
          leading: CircleAvatar(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              ),
            ),
            title: Text('$name',style:const TextStyle(fontSize: 20),),
        );
      
}