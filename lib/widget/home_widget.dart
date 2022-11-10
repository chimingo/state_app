import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_app/providers/favorite_provider.dart';


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
    final myfav = Provider.of<FavoriteProvider>(context);
    return ListView.builder(
      itemCount: 10,
      itemBuilder:((context, index){
        return ListTile(
          leading: Image.asset("assets/images/download.png",width: 30,),
          title: Text("Joseph Okoro $index",style: const TextStyle(fontSize: 20.0,fontWeight: FontWeight.w700,color: Colors.blue),
          ),
          subtitle: const Text("09074455587"),
          trailing: myfav.favoriteContacts.contains(index) 
          ? const Icon(Icons.favorite)
          : ElevatedButton.icon(onPressed:(){
            myfav.addFavorites(index);
          }, 
          icon: const Icon(Icons.add), 
          label:const Text("add"),
          ),
        );
            

      }
     ) );
  }
}