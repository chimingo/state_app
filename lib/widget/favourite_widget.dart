
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:state_app/providers/counter.dart';


class FavouriteWidget extends StatefulWidget {
  const FavouriteWidget({super.key});

  @override
  State<FavouriteWidget> createState() => _FavouriteWidgetState();
}

class _FavouriteWidgetState extends State<FavouriteWidget> {
  int num = 0;
  @override
  Widget build(BuildContext context) {
     return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(context.watch<Couter>().number.toString(),style: const TextStyle(fontSize: 40.0),),
            const Gap(50),
            ElevatedButton.icon(
              onPressed: (){
                context.read<Couter>().increment();
                // setState((() => num = num+2));
                // setState(() {
                //   num = num+2;
                // });
              }, icon:const Icon(Icons.add), 
              label:const Text("increase"))
          ],
          ),
     ));
        
  }
}