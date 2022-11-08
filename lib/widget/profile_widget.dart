import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child:SingleChildScrollView(
          child: Column(
            children: [
              // const Padding(
              //   padding: EdgeInsets.fromLTRB(10, 10, 10, 400)),
             Container(
              height: 150,
              width: 150,
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                   color: Color.fromARGB(255, 31, 67, 85),
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                image: DecorationImage(image: AssetImage("assets/images/signup.jpeg"),
                fit: BoxFit.cover)
              ),
              ),
           Column(
            children: [
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.only(top: 35),
                child: const Text("Stephanie Milton",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
              ),
              ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: (){}, child: const Text("favourite",style:TextStyle(color:Colors.black),),),
            Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(26, 111, 54, 54),
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
              child:Column(
              children:const [
              Padding(
                padding:EdgeInsets.all(10),
              child:
                   ListTile(autofocus:false,
              leading: Icon(Icons.chat),
              title:  Text("Start a chat "),
              trailing: Icon(Icons.arrow_forward_ios),
              
            ),
              ),
              Padding(
                padding:EdgeInsets.all(10),
              child:
                   ListTile(autofocus:false,
              leading: Icon(Icons.person),
              title:  Text("Expert replies "),
              trailing: Icon(Icons.arrow_forward_ios),
                   ),
             ),
             Padding(
                padding:EdgeInsets.all(10),
              child:
                   ListTile(autofocus:false,
              leading: Icon(Icons.star),
              title:  Text("Review ratings "),
              trailing: Icon(Icons.arrow_forward_ios),
                   ),
             ),
             Padding(
                padding:EdgeInsets.all(10),
              child:
                   ListTile(autofocus:false,
              leading: Icon(Icons.book),
              title:  Text("Asked questions "),
              trailing: Icon(Icons.arrow_forward_ios),
                   ),
             )
             ],
              )
         
              
            ),
            ],
            ),

           ],
       ))); 
          
    
  }
}