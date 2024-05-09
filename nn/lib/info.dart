import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int zikrsoni = 0;
  String zikrnomi = 'SubhanOlloh';
  int allzikrsoni=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Tasbeeh"),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://i.etsystatic.com/26084700/r/il/f0ef82/2664107728/il_fullxfull.2664107728_gdx6.jpg"),fit: BoxFit.fill)),
          
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(zikrnomi,style: TextStyle(color: const Color.fromARGB(255, 255, 193, 7),fontSize: 30,fontWeight: FontWeight.w800),),
               SizedBox(height: 480,),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: [
                      Text(zikrsoni.toString(),style: TextStyle(color:Colors.black54,fontSize: 30,fontWeight: FontWeight.w600),),
                      Text("/",style: TextStyle(color:Colors.black54,fontSize: 30,fontWeight: FontWeight.w600),),
                      Text(allzikrsoni.toString(),style: TextStyle(color:Colors.black54,fontSize: 30,fontWeight: FontWeight.w600),),],),
InkWell(
                  onTap: () {
                    Yangila();
                  },
                  child: Icon(Icons.recycling)),
                   
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: FloatingActionButton(
                    
                      
                      onPressed: () async {
                        Zikrsoninioshir();
                        if (zikrsoni == 33) {
                          Zikrnominiozg("Alhamdulillah");
                        } else if (zikrsoni == 66) {
                          Zikrnominiozg("Allohu Akbar");
                        } else if (zikrsoni == 99) {
                          Zikrnominiozg("Raxmat");
                          await Future.delayed(Duration(seconds: 3));
                          Qaytaboshla();
                          allzikrsoni++;
                        }
                      },
                      child: Image(image: NetworkImage("https://th.bing.com/th/id/OIP.vmxqPSbjwH4XvHaTcuj_2AAAAA?rs=1&pid=ImgDetMain"),fit: BoxFit.fill,),
                      ),
                )],),),

                
              ],
            ),
          ),
        ));
  }

  void Zikrsoninioshir() {
    zikrsoni++;
    setState(() {});
  }

  void Zikrnominiozg(String Yangizikr) {
    zikrnomi = Yangizikr;
    setState(() {});
  }

  void Qaytaboshla() {
    zikrsoni = 0;
    Zikrnominiozg("SubhanOlloh");
  }
  void Yangila(){
     zikrsoni = 0;
     allzikrsoni=0;
    Zikrnominiozg("SubhanOlloh");
  }
}