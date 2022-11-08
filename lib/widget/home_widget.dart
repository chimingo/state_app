import 'package:flutter/material.dart';


class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child:ContactList(),
      );
  }
}
class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder:((context, index){
        return ListTile(
          leading: Image.asset("assets/images/download.png"),
          title:const Text("Joseph Okoro",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w700,color: Colors.blue),
          ),
          subtitle: const Text("09074455587"),
          trailing: ElevatedButton.icon(onPressed:(){}, icon: const Icon(Icons.add), label:const Text("add"),
          ),
        );
            

      }
     ) );
  }
}