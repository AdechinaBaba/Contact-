import 'package:flutter/material.dart';
import 'Add_Page.dart';
class Person{
  final String nom;
  final String prenom;
  final String email;
  final String numero;

  Person(this.nom, this.prenom, this.email, this.numero);
}

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final List<Person> persons = [
    Person('Avoce', 'Gloire', 'gloireavoce@gmail.com', '+22987654534'),
    Person('Dansou', 'Joie', 'joiedansou@gmail.com', '+22997865456'),
    Person('Igoue', 'Mark', 'igouemark@gmail.com', '+22869858901'),
    Person('Kossou', 'Jane', 'janekossou@gmail.com', '+22998270177'),
    Person('Mahou', 'Jonathan', 'janathanmahou@gmail.com', '+22966770987'),
    Person('Wanvor', 'Smith', 'smithwanvor@gmail.com', '+22886542312'),
    Person('Zannou', 'David', 'davidzannou@gmail.com', '+22956008901'),
    Person('Zinsou', 'Sylvain', 'sylvainzinsou@gmail.com', '+22944179456'),
    // Ajoutez d'autres contacts ici...
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact"),

      ),
      body: ListView.builder(
        itemCount: persons.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(),
            title: Text('${persons[index].prenom} ${persons[index].nom}'),
            subtitle: Text(persons[index].email),
            trailing: Text(persons[index].numero),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => AddPage())
          ).then((newContact) {
            if (newContact != null) {
              setState(() {
                persons.add(newContact);
              });
            }
          });;
        },
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
      ),
    );
  }
}
