import 'package:flutter/material.dart';
import 'package:nn/info.dart';

class AAAA extends StatefulWidget {
  const AAAA({super.key});

  @override
  State<AAAA> createState() => _HomePageState();
}

class _HomePageState extends State<AAAA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor: Colors.green,
      title: Text("Tasbeeh"),),
    body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://4.bp.blogspot.com/-OtkhbOy2PqY/VclzsccKwvI/AAAAAAAAAo4/voUQuBIHdJg/s1600/Zikr.jpg"),fit: BoxFit.fill)
          ),     
           child:Column(

             children: [            
               InkWell(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: ((context) => HomePage()))),
                 child: Padding(
                   padding: const EdgeInsets.only(top: 515,right: 180),
                   child: Container( 
                     
                              height: 38,
                              width: 140,
                   decoration: BoxDecoration(
                               border: Border.all(color: const Color.fromARGB(255, 49, 175, 53),width: 3),
                               color: Color.fromARGB(255, 49, 175, 53),
                               borderRadius: BorderRadius.all(Radius.circular(1))
                               ),          
                               child: Padding(
                                 padding: const EdgeInsets.only(left: 8.0),
                                 child: Text("Tasbeeh",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w700),),
                               ),   
                                ),
                 ),
               ),
             ],
           ),
           ),
    );
  }
}