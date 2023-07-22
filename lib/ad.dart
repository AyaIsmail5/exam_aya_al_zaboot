import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AdScreen extends StatefulWidget {

 
  @override
  State<AdScreen> createState() => _AdScreenState();
}

class _AdScreenState extends State<AdScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance
                    .collection("ad")
                    .snapshots(),
                builder: (context, snapshot) {
                  return !snapshot.hasData
                      ? Center(child: CircularProgressIndicator())
                      : ListView.builder(
                        scrollDirection: Axis.horizontal,
                          itemCount: snapshot.data!.docs.length,
                          itemBuilder: (context, index) {
                            DocumentSnapshot data =
                                snapshot.data!.docs[index] ;
                            return AdWidget(
                              imageUrl: data['imageUrl'],
                              name: data['name'],
                              id: data['id'],
                            );
                          },
                        );
                }),
          ),
        ],
      ),
    );
  }
   
   
  }


class AdWidget extends StatelessWidget {
   late String name;
  late String imageUrl;
  late String id;

  AdWidget({
    Key? key,
    required this.name,
    required this.imageUrl,
    required this.id,
  }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Stack(
            children: [
              Container(
                height: 200,
                width: 270,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(25),
                  image: DecorationImage(
                    
                    image: NetworkImage(imageUrl),
                    fit: BoxFit.fill
                  )
                    
                    ),
        
                ),
                
              
        
              Positioned(
                bottom: 10,
                left: 20,
                child: Text(name, style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                  ),),),
            ],
          ),
        ),
      ],
    );
  }
}