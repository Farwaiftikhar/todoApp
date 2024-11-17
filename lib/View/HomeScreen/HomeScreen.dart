import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:first_project/Controller/Contstants/Container-Color/Color.dart';
import 'package:first_project/View/HomeScreen/DrawerScreen/DrawerScreen.dart';
import 'package:first_project/View/HomeScreen/UpdateScreen/UpdateScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: (AppColors.circleColor),
      ),
      body: StreamBuilder(
          stream: FirebaseFirestore.instance.collection('Todo').snapshots(),
          builder: (context,AsyncSnapshot<QuerySnapshot> snapshot){
            final data = snapshot.requireData;
            return ListView.builder(
    itemCount: data.size,
    itemBuilder: (context,index){
      String docid = data.docs[index]['id'];
      return Card(
      color: AppColors.circleColor,
      child: ListTile(
        onLongPress: (){
          Navigator.push(context, CupertinoDialogRoute(builder: (context)=> UpdateScreen(docid: docid,), context: context));
        },
        onTap: ()async{
          await FirebaseFirestore.instance.collection('Todo').doc(docid).delete();
        },
        leading: CircleAvatar(
          backgroundColor: (AppColors.whiteColor),
          child: Text(docid,style: TextStyle(color: (AppColors.circleColor)),),
        ),
    title: Text(data.docs[index]['title']),
    subtitle: Text(data.docs[index]['description']),
    
    ),
      );
    });
    },

    ),
    );
  }
}

