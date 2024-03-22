import 'package:flutter/material.dart';
import 'contact_page.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  final TextEditingController _nomcontroller = TextEditingController();
  final TextEditingController _prenomcontroller = TextEditingController();
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _numerocontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add"),
      ),
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                TextFormField(
                  controller: _nomcontroller ,
                  decoration: InputDecoration(labelText:("Nom"),
                  border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10,),
                TextFormField(
                  controller: _prenomcontroller ,
                  decoration: InputDecoration(labelText:("Prenom"), border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10,),
                 TextFormField(
                  controller: _emailcontroller ,
                  decoration: InputDecoration(labelText:("Email"),  border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10,),
                TextFormField(
                  controller: _numerocontroller ,
                  decoration: InputDecoration(labelText:("Numero"), border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15,),
                SizedBox(

                  
                  child: ElevatedButton(
                      onPressed: (){
                        {
                          String nom = _nomcontroller.text;
                          String prenom = _prenomcontroller.text;
                          String email = _emailcontroller.text;
                          String numero = _numerocontroller.text;

                          if (nom.isNotEmpty && prenom.isNotEmpty) {
                            Person newContact = Person(nom, prenom, email, numero);
                            Navigator.pop(context, newContact);
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text('Svp Entrez le nom et le prenom'),
                            ));
                          }
                        }
                      },

                      child: Text("Sauvegarder", style: TextStyle(color:Colors.black),),),
                )
              ],

            ),


        ),
      ) ,

    );
  }
}