import 'package:flutter/material.dart';
import 'package:app/Home/parts.dart';

class HorizontalListView extends StatelessWidget {
  final Items items;

  const HorizontalListView({super.key, required this.items});

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
              child: Image.asset(items.image),
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Text(items.text , style: TextStyle(
                    color: Colors.black,
                    fontSize: 20
                ),)
              ],
            ),
            SizedBox(height: 4,),
            Row(
              children: [
                Text(items.subtext , style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15
                ),)
              ],
            ),
            SizedBox(height: 4,),
            Row(
              children: [
                Text(items.price , style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                ),),
                SizedBox(width: 4,),
                Text(items.pastprice, style: TextStyle(
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

