import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demo_app/Data/database.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';


class SearchPage extends StatefulWidget {

  static const String id = 'SearchPage';

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  Databasemethods databasemethods = Databasemethods();
  TextEditingController searchTextEditingController = TextEditingController();
  QuerySnapshot searchsnapshot;

  initiateSearch(){
    databasemethods.getusername(searchTextEditingController.text).then((val){
    setState(() {
      searchsnapshot = val;
    });
    }
    );
  }


  Widget searchlist(){
   return searchsnapshot!=null ? ListView.builder(
        itemCount: searchsnapshot.docs.length,
        shrinkWrap: true,
        itemBuilder: (context,index){
          return Searchtile(
            userName:  searchsnapshot.docs[index].data(),
            userEmail: searchsnapshot.docs[index].data()

          );
    }) : Container();
  }
@override
void initState(){

    super.initState();
}





  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          centerTitle: true,
          title: Text('Peigon'),
        ),
       body: Container(

         child: Column(
           children: <Widget>[
             SizedBox(height: 10,),
             Padding(
               padding: const EdgeInsets.all(10.0),
               child: Form(child: TextFormField(
                   controller: searchTextEditingController,
                   keyboardType: TextInputType.text,
                   style: TextStyle(color: Colors.black),
                   decoration: InputDecoration(
                       border: OutlineInputBorder(
                           borderSide: BorderSide(color: Colors.black)),
                       hintText: "  xxx  ",
                       labelText: "Search",
                       filled: true,
                       focusedBorder: OutlineInputBorder(
                           borderSide: BorderSide(
                             color: Colors.black54,
                           ),
                           ),
                       suffixIcon: IconButton(
                         onPressed: (){
                           initiateSearch();
                         },
                         icon: Icon(Icons.add),

                         color: Colors.blueAccent,
                       )),
                   validator: MultiValidator([
                     RequiredValidator(errorText: 'Required'),
                   ])),
               ),
             ),

             // Padding(
             //   padding: const EdgeInsets.all(10.0),
             //   child: SizedBox(
             //     width: 160,
             //     height: 50,
             //     child: ElevatedButton(onPressed: (){
             //        initiateSearch();
             //     },
             //     style:ElevatedButton.styleFrom(
             //       primary: Colors.black87,
             //     ),
             //     child: Row(
             //     children: <Widget>[
             //       Padding(
             //         padding: const EdgeInsets.fromLTRB(30,0,0,5),
             //         child: Text('Search '),
             //       ),
             //       Icon(Icons.search,
             //       size: 20,
             //       color: Colors.blue,)
             //     ],
             //   ),),),
             // )
           ],
         ),

       ) ,
      ),
    );
  }
}

class Searchtile extends StatelessWidget {
  final String userName;
  final String userEmail;
  Searchtile({this.userName,this.userEmail});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Column(
            children: [
                 Text(userName,style: TextStyle(color: Colors.black),),
                 Text(userEmail,style: TextStyle(color: Colors.black),)
            ],
          )
        ],
      )
    );
  }
}
