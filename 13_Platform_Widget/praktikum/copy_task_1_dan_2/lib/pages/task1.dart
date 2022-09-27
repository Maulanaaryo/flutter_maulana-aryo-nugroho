import 'package:flutter/material.dart';

class Telegram extends StatefulWidget {
  const Telegram({super.key});

  @override
  State<Telegram> createState() => _TelegramState();
}

class _TelegramState extends State<Telegram> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blueAccent,
        title: const Text(
          'Telegram',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.search,
              size: 30,
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 210,
              color: Colors.blue,
              child: SizedBox(
                width: double.infinity,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/01.jpg'),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Luffy',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: const [
                          Text(
                            '+0123456',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            tile(msg: 'New Group', img: Icons.people),
            tile(msg: 'New Secret Chat', img: Icons.lock),
            tile(msg: 'New Channel', img: Icons.campaign),
            const Divider(
              height: 10,
            ),
            tile(msg: 'Contact', img: Icons.person_pin_outlined),
            tile(msg: 'Invite Friends', img: Icons.person_add_alt),
            tile(msg: 'Settings', img: Icons.settings),
            tile(msg: 'Telegram FAQ', img: Icons.question_mark),
          ],
        ),
      ),
      body: SingleChildScrollView(
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
      ),
    );
  }

  ListTile tile({String? msg, IconData? img}) {
    return ListTile(
      leading: Icon(
        img,
        color: Colors.grey,
        size: 40,
      ),
      title: Text(
        msg!,
        style: const TextStyle(
            color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w700),
      ),
    );
  }

  ListTile list({String? url, name, time, desc, msg}) {
    return ListTile(
      contentPadding: const EdgeInsets.only(top: 5, left: 10),
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
              name,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
            ),
            Text(
              time,
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
              desc,
              style: const TextStyle(fontWeight: FontWeight.normal),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 1),
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.green),
              child: Text(
                msg,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            )
          ],
        ),
      ),
    );
  }
}
