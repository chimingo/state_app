
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:state_app/providers/counter.dart';
import 'package:state_app/providers/favorite_provider.dart';


class FavouriteWidget extends StatefulWidget {
  const FavouriteWidget({super.key});

  @override
  State<FavouriteWidget> createState() => _FavouriteWidgetState();
}

class _FavouriteWidgetState extends State<FavouriteWidget> {
  // int num = 0;
  @override
  Widget build(BuildContext context) {
     return const SafeArea(
      child: ContactList()

      );
        
  }
}


class ContactList extends StatefulWidget {
  const ContactList({super.key});

  @override
  State<ContactList> createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  @override
  Widget build(BuildContext context) {
    final provider =  Provider.of<FavoriteProvider>(context);
    return Consumer<FavoriteProvider>(builder: (context,index,child){
    return ListView.builder(
      itemCount: index.favoriteContacts.length,
      itemBuilder:((context, i){
        return ListTile(
          leading: ClipRRect(borderRadius: BorderRadius.circular(30),
          child: Image.asset("assets/images/download.png",width: 30),
          ),
          title:Text("Joseph Okoro ${index.favoriteContacts[i]}",style: const TextStyle(fontSize: 20.0,fontWeight: FontWeight.w700,color: Colors.blue),
          ),
          subtitle: const Text("09074455587"),
          trailing: IconButton(onPressed: (){
           provider.removeFavorite(index.favoriteContacts[i]);
            
          },icon: const Icon(Icons.cancel_outlined,color: Colors.red,),)
        );
      }
      ));
    });
            

     
  }
}


class Fav extends StatelessWidget {
  const Fav({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 1,
      itemBuilder:((context, index){
        return ListTile(
          leading: ClipRRect(borderRadius: BorderRadius.circular(30),
          child: Image.asset("assets/images/download.png",width: 30),
          ),
          title:const Text("Joseph Okoro",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w700,color: Colors.blue),
          ),
          subtitle: const Text("09074455587"),
          trailing: IconButton(onPressed: (){},icon: const Icon(Icons.cancel_outlined,color: Colors.red,),)
        );
      }
      ));
  }
}