import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:first_project/Controller/Contstants/Container-Color/Color.dart';
import 'package:first_project/Controller/assets/Components/App-Button.dart';
import 'package:first_project/Controller/assets/Components/TxtFrmFldCnt.dart';
import 'package:flutter/material.dart';

class UpdateScreen extends StatefulWidget {
  String docid;

  UpdateScreen({super.key, required this.docid});

  @override
  State<UpdateScreen> createState() => _UpdateScreenState();
}

class _UpdateScreenState extends State<UpdateScreen> {
  TextEditingController _tilteController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();

  // Function for insertion of data in RealTime database
  UpdateData() async {
    try {
      isLoading = true;
      setState(() {});
      await FirebaseFirestore.instance
          .collection('Todo')
          .doc(widget.docid)
          .update({
        'title': _tilteController.text,
        'description': _descriptionController.text,
        'id': widget.docid,
      });
    } catch (error) {
      isLoading = false;
      setState(() {});
      print('Error:$error');
    } finally {
      Navigator.pop(context);
    }
  }

  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.circleColor,
        title: Text('Update Data'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "Update Data",
              style: TextStyle(
                  color: AppColors.circleColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            SizedBox(
              height: 10,
            ),
            FormContainer(
                hintColor: AppColors.blackColor,
                text: 'Title',
                controller: _descriptionController),
            SizedBox(
              height: 10,
            ),
            FormContainer(
                hintColor: AppColors.blackColor,
                text: "Description",
                controller: _tilteController),
            SizedBox(
              height: 10,
            ),
            isLoading
                ? CircularProgressIndicator()
                : AppButton(
                    text: 'Add',
                    fontWeight: FontWeight.bold,
                    size: 18,
                    onTap: () {
                      UpdateData();
                    })
          ],
        ),
      ),
    );
  }
}
