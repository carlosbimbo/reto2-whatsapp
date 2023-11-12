import 'package:flutter/material.dart';
import '../data/data_status_perso.dart';
import '../widgets/item_status_widget.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(
          color: Colors.white24,
        ),
        Text(
          "  Estados",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        ListTile(
          leading: Stack(
            clipBehavior: Clip.none,
            children: [
              const CircleAvatar(
                radius: 22,
                backgroundColor: Colors.black12,
                backgroundImage: NetworkImage(
                  "https://images.pexels.com/photos/12931722/pexels-photo-12931722.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                ),
              ),
              Positioned(
                bottom: -6,
                right: -6,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xff01C851),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          title: Text(
            "Mi estado",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text("Añade una actualización"),
        ),
        Text(
          "  Recientes",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),

        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemCount: chats.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ItemStatusWidget(
                      chatModel: chats[index],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
        // Container(
        //   height: 300,
        //   width: 300,
        //   padding: EdgeInsets.all(20.0),
        //   margin: EdgeInsets.all(30.0),
        //   decoration: BoxDecoration(
        //     color: Colors.red,
        //     borderRadius: BorderRadius.circular(10.0),
        //     image: DecorationImage(
        //       fit: BoxFit.cover,
        //       image: NetworkImage("https://images.pexels.com/photos/12270237/pexels-photo-12270237.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
        //     ),
        //   ),
        //   child: Image.network(
        //     fit: BoxFit.cover,
        //     "https://images.pexels.com/photos/12616283/pexels-photo-12616283.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        //   ),
        // ),
      ],
    );
  }
}
