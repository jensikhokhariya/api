import 'package:api/screen/apiclass.dart';
import 'package:flutter/material.dart';

class ApiScreen extends StatefulWidget {
  const ApiScreen({Key? key}) : super(key: key);

  @override
  State<ApiScreen> createState() => _ApiScreenState();
}

class _ApiScreenState extends State<ApiScreen> {
  List l2=[];
  @override
  void initState() {
    super.initState();
    apicall();
  }
  void apicall()async{
    List l1 = await Apicall().getData();

    setState(() {
      l2=l1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
          itemCount: l2.length,
            itemBuilder: (context,index){
          return Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            child: Card(
              shadowColor: Colors.pink.shade500,
              elevation: 6,
              child: Column(
                children: [
                  Text("${l2[index]['albumId']}"),
                  Text("${l2[index]['title']}"),
                  Image.network("${l2[index]['url']}"),
                  Image.network("${l2[index]['thumbnailUrl']}"),
                  Text("${l2[index]['id']}"),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
