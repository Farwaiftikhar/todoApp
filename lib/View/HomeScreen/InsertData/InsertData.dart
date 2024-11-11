import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:first_project/Controller/Contstants/Container-Color/Color.dart';
import 'package:first_project/Controller/assets/Components/App-Button.dart';
import 'package:first_project/Controller/assets/Components/TxtFrmFldCnt.dart';
import 'package:flutter/material.dart';
class InsertData extends StatefulWidget {


    const InsertData({super.key});

  @override
  State<InsertData> createState() => _InsertDataState();
}

class _InsertDataState extends State<InsertData> {
  TextEditingController _tilteController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();

  // Function for insertion of data in RealTime database
  insertData() async{
   try{

     isLoading = true;
     setState(() {

     });

     String id = DateTime.now().second.toString();
     await FirebaseFirestore.instance.collection('Todo')
         .doc(id).set({

       'title': _tilteController.text,
       'description':_descriptionController.text,
       'id':id,
     });

   }
   catch(error){
      isLoading = false;
     setState(() {

     });
     print('Error:$error');
   }finally{
     Navigator.pop(context);
   }
  }
   bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.circleColor,
        title: Text('Insert Data'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(

          children: [
            SizedBox(height: 20,),
            Text("Insert Data", style: TextStyle(color: AppColors.circleColor,fontWeight: FontWeight.bold,fontSize: 18),),
            SizedBox(height: 10,),
            FormContainer(hintColor: AppColors.blackColor, text: 'Title', controller: _descriptionController),
            SizedBox(height: 10,),
            FormContainer(hintColor: AppColors.blackColor, text: "Description", controller:_tilteController),
            SizedBox(height: 10,),
            isLoading?CircularProgressIndicator():AppButton
              (text: 'Add',
                fontWeight: FontWeight.bold,
                size: 18,
                onTap: ()
            {
                 insertData();
            })

          ],
        ),
      ),
    );
  }
}
