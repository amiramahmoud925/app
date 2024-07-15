import 'package:flutter/material.dart';

class itemBuilder extends StatefulWidget {


  const itemBuilder({super.key,});

  @override
  State<itemBuilder> createState() => _itemBuilderState();
}

class _itemBuilderState extends State<itemBuilder> {


  @override
  Widget build(BuildContext context) {
    return Container(
      height:200,
      width: 200,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[200],
      ),
      child:Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children:[
            Container(
              height:50,
              width: 50,
              child: Image.asset("assets/images/apple.png"),
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Text("apple" , style: TextStyle(
                    color: Colors.black,
                    fontSize: 20
                ),)
              ],
            ),
            SizedBox(height: 4,),
            Row(
              children: [
                Text("is fresh and good", style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15
                ),)
              ],
            ),
            SizedBox(height: 4,),
            Row(
              children: [
                Text("\$35" , style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                ),),
                SizedBox(width: 4,),
                Text("\$50" , style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                    decoration: TextDecoration.lineThrough
                ),),
                Spacer(),
                CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.green,
                  child: Icon(Icons.add , color: Colors.white,),
                )

              ],
            )
          ],
        ),
      ),
    );
  }
}


Widget _itemBuilder() {
  return Container(
    height:200,
    width: 200,

    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.grey[200],
    ),
    child:Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children:[
          Container(
            height:50,
            width: 50,
            child: Image.asset("assets/images/apple.png"),
          ),
          SizedBox(height: 30,),
          Row(
            children: [
              Text("apple" , style: TextStyle(
                  color: Colors.black,
                  fontSize: 20
              ),)
            ],
          ),
          SizedBox(height: 4,),
          Row(
            children: [
              Text("is fresh and good", style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15
              ),)
            ],
          ),
          SizedBox(height: 4,),
          Row(
            children: [
              Text("\$35" , style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15
              ),),
              SizedBox(width: 4,),
              Text("\$50" , style: TextStyle(
                  color: Colors.grey,
                  fontSize: 10,
                  decoration: TextDecoration.lineThrough
              ),),
              Spacer(),
              CircleAvatar(
                radius: 15,
                backgroundColor: Colors.green,
                child: Icon(Icons.add , color: Colors.white,),
              )

            ],
          )
        ],
      ),
    ),
  );
}


