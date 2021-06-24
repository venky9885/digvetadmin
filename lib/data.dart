import 'package:digvetadmin/model.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HogeApp extends StatefulWidget {
  @override
  _HogeAppState createState() => _HogeAppState();
}

class _HogeAppState extends State<HogeApp> {
  @override
  Widget build(BuildContext context) {
    // <1> Use FutureBuilder
    return Scaffold(
      body: FutureBuilder(
          // <2> Pass `Future<QuerySnapshot>` to future
          future: FirebaseFirestore.instance
              .collection('postsfair')
              .orderBy('epochs', descending: true)
              .orderBy('date', descending: true)
              .where('show', isEqualTo: false)
              .get(),
          builder: (context, snapshot) {
            // <3> Retrieve `List<DocumentSnapshot>` from snapshot
            // final List<CattleFair> documents = snapshot.data.docs
            //     .map((e) => CattleFair.fromMap(e.data()))
            //     .toList();
            final List<DocumentSnapshot> documents = snapshot.data.docs;
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text('ItError');
            }
            return ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: documents.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 50,
                    child:
                        Text(CattleFair.fromMap(documents[index].data()).age),
                    // child: Center(child: Text('Entry ${entries[index]}')),
                  );
                });
          }),
    );
  }
}


/*
 ListView(
              children: documents
                  .map((doc) => Card(
                        child: ListTile(
                          title: Text(doc['name']),
                          subtitle: Text(doc['show'].toString()),
                        ),
                      ))
                  .toList());
*/