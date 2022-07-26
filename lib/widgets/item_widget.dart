import 'package:flutter/material.dart';
import 'package:flutter_application_rehan/model/catelog.dart';

class ItemWidget extends StatelessWidget
{
 final Item item;

  const ItemWidget({Key? key, required this.item})
      :assert(item != null ),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Card(
    elevation: 0.0,
     child: ListTile(
      onTap: (){

       print("${item.name}");
      },
      leading: Image.network(item.image),
      title: Text(item.name),
      subtitle: Text(item.desc),
      trailing: Text("\$${item.price}",
      style: TextStyle(
       color: Colors.deepPurple,
       fontWeight: FontWeight.bold,
      ),
      ),
     ),
   );
  }


}