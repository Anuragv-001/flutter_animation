
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_animation/detail_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {

  //// for animated conatainer //////
  var _width = 200.0;
  var _height = 100.0;
  bool flag = true;
  // Color bgclr = Colors.blueGrey;
  Decoration mydecor = BoxDecoration(
    borderRadius: BorderRadius.circular(2),
    color: Colors.blueGrey
  );

  //// for animated opacity //////
  var my_opacity = 1.0;
  bool isvisible = true;

  //// for animated cross fade //////
  bool isfirst = true;
  // @override
  // void initState() {
  //   Timer(Duration(seconds: 4), (){
  //     reload();
  //   });
  // }
  void reload(){
    setState(() {
      if(isfirst) {
        isfirst = false;
      } else{
        isfirst = true;
      }
    });
  }

  ///// for List wheel scroll view ///////
  var arr_index = [1,2,3,4,5,6,7,8,9,10,11];


  ////// for list view //////
  var arr_data = [
    {
      'name' : 'Raman',
      'mobno.' : '9898998989',
      'unread' : '2'
    },
    {
      'name' : 'Rajun',
      'mobno.' : '9898998989',
      'unread' : '2'
    },
    {
      'name' : 'Rakesh',
      'mobno.' : '9898998989',
      'unread' : '1'
    },
    {
      'name' : 'Pushpad',
      'mobno.' : '9898998989',
      'unread' : '4'
    },
    {
      'name' : 'Ritu',
      'mobno.' : '9898998989',
      'unread' : '2'
    },
    {
      'name' : 'Ravi',
      'mobno.' : '9898998989',
      'unread' : '5'
    },
  ];


  ///// for tween animation /////

  // late Animation animation;
  // late Animation colorAnimation;
  // late AnimationController animationController;
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   animationController = AnimationController(vsync: this, duration: Duration(seconds: 3));
  //   animation  = Tween(begin: 500.0, end: 0.0).animate(animationController);
  //   colorAnimation = ColorTween(begin: Colors.blue, end: Colors.orange).animate(animationController);
  //
  //   animationController.addListener(() {
  //     print(animation.value);
  //     setState(() {
  //
  //     });
  //   });
  //   animationController.forward();
  // }


  /////// for ripple effect //////


  // late Animation _animation;
  // late AnimationController _animationController;
  // var listRadius = [150.0, 200.0, 250.0, 300.0, 350.0];
  //
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //
  //   _animationController = AnimationController(vsync: this, duration: Duration(seconds: 4), lowerBound: 0.5);
  //   // _animation = Tween(begin: 0.0, end: 1.0).animate(_animationController);
  //
  //   _animationController.addListener(() {
  //     setState(() {
  //
  //     });
  //   });
  //   _animationController.forward();
  // }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Animation"),
      ),
      body:


      ////// tween animation //////

      // Center(
      //   child: Container(
      //     width: animation.value,
      //     height: animation.value,
      //     color: colorAnimation.value,
      //   ),
      // )


      // Container(
      //   child: ListView(
      //     children: arr_data.map((value) {
      //       return ListTile(
      //         leading: Icon(Icons.account_circle),
      //         title: Text(value['name'].toString()),
      //         subtitle: Text(value['mobno.'].toString()),
      //         trailing: CircleAvatar(
      //           radius: 12,
      //             backgroundColor: Colors.green,
      //             child: Text(value['unread'].toString())
      //         ),
      //       );
      //     }).toList(),
      //   )
      // )



      /////// use of gradient ////

      // Container(
      //   decoration: BoxDecoration(
      //     gradient: RadialGradient(
      //       colors: [
      //         Color(0xffffecd2), Color(0xfffcb69f)
      //       ],
      //       center: Alignment.bottomCenter,
      //       stops: [0.0, 1.0],
      //     )
      //   )
      // )


      ///// clip r rect /////

      // Center(
      //   child: ClipRRect(
      //     borderRadius: BorderRadius.only(
      //         topLeft: Radius.circular(71),
      //         topRight: Radius.circular(21),
      //         bottomRight: Radius.circular(21),
      //         bottomLeft: Radius.circular(21),
      //     ),
      //     child: Image.asset(
      //       "assets/images/profile-pic.png",
      //       width: 200,
      //       height: 200,
      //       fit: BoxFit.fill,
      //     ),
      //   ),
      // )


      ////// List wheel scroll view //////

      // Center(
      //   child: ListWheelScrollView(
      //     itemExtent: 200,
      //     children:
      //         arr_index.map((value) => Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Container(
      //             child: Center(child: Text("$value", style:TextStyle(fontSize: 21, color:Colors.white))),
      //             width: double.infinity,
      //             decoration: BoxDecoration(
      //               color: Colors.black87,
      //               borderRadius: BorderRadius.circular(21),
      //             ),
      //           ),
      //         )).toList(),
      //   ),
      // )




      ///// hero animation/////

      // Container(
      //   child: Center(
      //     child: InkWell(
      //       onTap: () {
      //         Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(),));
      //       },
      //       child: Hero(
      //           child: Image.asset("assets/images/profile-pic.png", width: 150, height: 50),
      //           tag: 'background',
      //       ),
      //     ),
      //   ),
      // )


      ///// animated cross fade /////

      // Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       AnimatedCrossFade(
      //         duration: Duration(seconds: 4),
      //         firstChild: Container(
      //           width: 200,
      //           height: 200,
      //           color: Colors.pink.shade200,
      //         ),
      //         secondChild: Image.asset(
      //           "assets/images/map.png",
      //           width: 200,
      //           height: 200,
      //         ),
      //         firstCurve: Curves.easeInOut,
      //         secondCurve: Curves.bounceInOut,
      //         crossFadeState: isfirst ? CrossFadeState.showFirst: CrossFadeState.showSecond,
      //       ),
      //       SizedBox(height: 11),
      //       ElevatedButton(onPressed: (){
      //         reload();
      //       }, child: Text("Show"))
      //     ],
      //   ),
      // )
      
      ///// animated opacity /////
      
      // Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children:[
      //     AnimatedOpacity(
      //         opacity: my_opacity, 
      //         duration: Duration(seconds: 1),
      //         curve: Curves.elasticInOut,
      //       child: Container(
      //         width: 200,
      //         height: 100,
      //         color:Colors.pinkAccent,
      //       )
      //     ),
      //     SizedBox(height: 11),
      //     ElevatedButton(onPressed: (){
      //       setState(() {
      //         if(isvisible){
      //           my_opacity = 0.0;
      //           isvisible = false;
      //         } else{
      //           my_opacity = 1.0;
      //           isvisible = true;
      //         }
      //       });
      //     }, child: Text("Animate"))
      //   ]
      // )
        
        
        
        
        //////// Animated Container//////
      
      // Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       AnimatedContainer(
      //        width: _width,
      //        height: _height,
      //        curve: Curves.bounceInOut,
      //        decoration: mydecor,
      //        duration: Duration(seconds: 2),
      //       ),
      //       SizedBox(height: 11),
      //       ElevatedButton(onPressed: (){
      //         setState(() {
      //           if(flag){
      //           _width = 100.0;
      //           _height = 200.0;
      //           mydecor = BoxDecoration(
      //             borderRadius: BorderRadius.circular(21),
      //             color: Colors.redAccent,
      //           );
      //           flag = false;
      //           } else{
      //             _width = 200.0;
      //             _height = 100.0;
      //             mydecor = BoxDecoration(
      //                 borderRadius: BorderRadius.circular(2),
      //                 color: Colors.deepPurple,
      //             );
      //             flag = true;
      //           }
      //         });
      //       }, child: Text("Animate"))
      //     ],
      //   ),
      // )
    );
  }
}
//
// Widget buildMyContainer(radius){
//   return
// }

