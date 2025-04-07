import 'package:flutter/material.dart';

class Lecture8 extends StatefulWidget {
  const Lecture8({super.key});

  @override
  State<Lecture8> createState() => _Lecture8State();
}

class _Lecture8State extends State<Lecture8> {
  int myIndex =0;
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  final List<String> mylist = [""]; 

  void Additem(){
    setState(() {
      myIndex++;
      mylist.add("item $myIndex");
       _listKey.currentState?.insertItem(myIndex);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Animate List",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: AnimatedList(
        key: _listKey,
        initialItemCount: mylist.length,
        itemBuilder: (context, index, animation) {
          
          return FadeTransition(
            opacity: animation,
            child: ListTile(
              title: Text(mylist[index]),
              subtitle: const Text("Subtitle"),
              leading: const Icon(Icons.list),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
          );
        },
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){
          setState(() {
            Additem();
          });
        }, child: const Icon(Icons.add),),
    );
  }
  
}