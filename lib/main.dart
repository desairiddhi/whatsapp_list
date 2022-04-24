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
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.message_sharp,),
        onPressed: () => {},
        backgroundColor: Colors.green,
        ),
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
                desig: "https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__480.jpg"
              ),
              _listItem(
                name: 'Mumma',
                desig: "https://images.pexels.com/photos/235294/pexels-photo-235294.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"
   
              ),
              _listItem(
                name: 'Mansi',
                desig: "https://images.unsplash.com/photo-1621768216002-5ac171876625?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8YXBwbGUlMjBsb2dvfGVufDB8fDB8fA%3D%3D&w=1000&q=80"
   
              ),
              _listItem(
                name: 'Mansi di',
                desig: "https://wallpapercave.com/wp/wp6974608.jpg"
   
              ),
              _listItem(
                name: 'Kartik',
                desig: "https://www.ohyaaro.com/wp-content/uploads/2021/02/WhatsApp-DP-HDpng.png"
   
              ),
              _listItem(
                name: 'Janvi',
                desig: "https://www.unigreet.com/wp-content/uploads/2020/02/Lovely-dp-843x1024.jpg"
   
              ),
              _listItem(
                name: 'Nilesh sir',
                desig: "https://www.ohyaaro.com/wp-content/uploads/2021/02/WhatsApp-DP-HD-Wallpapers.png"
              ),
              _listItem(
                name: 'Tulsi',
                desig: "https://swall.teahub.io/photos/small/299-2998141_doraemon-pics-for-whatsapp-dp.png"
   
              ),
              _listItem(
                name: 'Paresh sir',
                desig: "https://wallpaperaccess.com/full/2133182.jpg"
   
              ),
              _listItem(
                name: 'Bhoomika',
                desig: "https://1.bp.blogspot.com/-JZbxivCJlIA/YRzpNkcpJvI/AAAAAAAAErA/QMJunP_iLy42RzFXJoYfj9dGSkCypyAFwCLcBGAsYHQ/s818/happy%2Bimages%2Bfor%2Bdp.jpeg"
   
              ),
              _listItem(
                name: 'Adana sir',
                desig: "https://www.happybirthdayimageshd.com/wp-content/uploads/2021/11/Love-WhatsApp-DP-HD.jpg"
   
              ),
              _listItem(
                name: 'Khushbu',
                desig: "https://www.whatsappprofiledpimages.com/wp-content/uploads/2021/08/Beautiful-Superb-Whatsapp-Dp-Profile-Images-for-hd.jpg"
   
              ),
              _listItem(
                name: 'Shradha',
                desig: "http://www.goodmorningimageshddownload.com/wp-content/uploads/2019/12/Whatsapp-DP-Images-3-2.jpg"
   
              ),
              _listItem(
                name: 'Pa',
                desig: "https://i.pinimg.com/736x/f2/15/c5/f215c59407e2fe6ad1a96247c38da247.jpg"
   
              ),
            ],
          ),
    );
  }
}

Widget _listItem({String? name,String? desig}){
      return ListTile(
          //dense: true,
          onTap: () => ("$name Pressed"),
          onLongPress: ()=>("$desig long pressed"),
          leading: CircleAvatar(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(
                '$desig',
                fit: BoxFit.fitHeight,
                height:50 ,
                ),
              ),
            ),
            title: Text('$name',style:const TextStyle(fontSize: 20),),
        );
      
}