import 'package:cupertino_list_tile/cupertino_list_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        leading: Padding(
            padding: EdgeInsets.only(top: 13),
            child: Text(
              'Edit',
              style: TextStyle(color: Color(0xFF0091EA), fontSize: 18),
            )),
        middle: Text('Chats'),
        trailing: Icon(
          CupertinoIcons.square_pencil_fill,
          color: Color(0xFF0091EA),
        ),
      ),
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.person_crop_circle_fill,
                ),
                label: 'Contacts'),
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.phone_fill,
                ),
                label: 'Calls'),
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.chat_bubble_2_fill,
                ),
                label: 'Chats'),
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.settings,
                ),
                label: 'Settings'),
          ],
        ),
        tabBuilder: (context, index) {
          return Container(
              child: Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Column(
              children: [
                list(
                url: 'assets/01.jpg',
                name: 'Luffy',
                time: '12.00',
                desc: 'Are you Okay?',
                msg: '2'),
            const Divider(
              height: 0.2,
            ),
            list(
                url: 'assets/02.jpg',
                name: 'Ace',
                time: '01.00',
                desc: 'Are you Okay?',
                msg: ''),
            const Divider(
              height: 0.2,
            ),
            list(
                url: 'assets/03.jpg',
                name: 'Sanji',
                time: '02.00',
                desc: 'Are you Okay?',
                msg: '1'),
            const Divider(
              height: 0.2,
            ),
            list(
                url: 'assets/04.jpg',
                name: 'Usopp',
                time: '03.00',
                desc: 'Are you Okay?',
                msg: '5'),
            const Divider(
              height: 0.2,
            ),
              ],
            ),
          ));
        },
      ),
    );
  }

  CupertinoListTile list(
      {String? url,
      String? name,
      String? time,
      String? desc,
      String? msg,
      }) {
    return CupertinoListTile(
      leading: CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage(url!),
      ),
      title: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           Text(
              name!,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
            ),
            Text(
              time!,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ],
        ),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           Text(
              desc!,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 1),
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.green),
              child: Text(
                msg!,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),),
          ],
        ),
      ),
    );
  }
}