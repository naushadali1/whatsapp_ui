import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Whatsapp'),
            actions: [
              const Icon(Icons.search),
              const SizedBox(
                width: 10,
              ),
              PopupMenuButton(
                icon: const Icon(
                  Icons.more_vert_outlined,
                ),
                itemBuilder: (
                  context,
                ) =>
                    const [
                  PopupMenuItem(value: '1', child: Text('Messages')),
                  PopupMenuItem(value: '2', child: Text('Group')),
                  PopupMenuItem(value: '3', child: Text('Broadcast')),
                ],
              ),
              const SizedBox(
                width: 20,
              ),
            ],
            backgroundColor: Colors.teal,
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.camera_alt)), // Corrected Tab definition
                Tab(text: 'Chat'),
                // Unique labels for each tab
                Tab(text: 'Status'), // Unique labels for each tab
                Tab(text: 'Call'), // Unique labels for each tab
              ],
            ),
          ),
          body: TabBarView(children: [
            const Text('Camera'),
            ListView.builder(
                itemCount: 30,
                itemBuilder: (context, index) {
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://scontent-mct1-1.xx.fbcdn.net/v/t39.30808-6/356112377_960304918357260_5712363054646979346_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=efb6e6&_nc_eui2=AeFW5FtBOo1VLd0UZzTOTBr_tehJJwU-oIe16EknBT6ghzoBKjXLZfPsG3oyVhhqj8GvfBIahzkRk6EFRtVOEiOx&_nc_ohc=nQFBvlztcBQAX_A-79_&_nc_ht=scontent-mct1-1.xx&oh=00_AfAaconZuZqkhONtQ5NZebVoa_f6hENbxg4U-G1X5mQgwg&oe=658908B7'),
                    ),
                    title: Text('Naushad Ali'),
                    subtitle: Text('How are you guys'),
                    trailing: Text('12:30 AM'),
                  );
                }),
            ListView.builder(
                itemCount: 30,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return const Padding(
                      padding: EdgeInsets.only(left: 10.0, top: 4.0),
                      child: Text('New Updates'),
                    );
                  } else {
                    return ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.green, width: 2),
                            shape: BoxShape.circle),
                        child: const CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://scontent-mct1-1.xx.fbcdn.net/v/t39.30808-6/356112377_960304918357260_5712363054646979346_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=efb6e6&_nc_eui2=AeFW5FtBOo1VLd0UZzTOTBr_tehJJwU-oIe16EknBT6ghzoBKjXLZfPsG3oyVhhqj8GvfBIahzkRk6EFRtVOEiOx&_nc_ohc=nQFBvlztcBQAX_A-79_&_nc_ht=scontent-mct1-1.xx&oh=00_AfAaconZuZqkhONtQ5NZebVoa_f6hENbxg4U-G1X5mQgwg&oe=658908B7'),
                        ),
                      ),
                      title: const Text('Naushad Ali'),
                      subtitle: const Text('Just Now'),
                    );
                  }
                }),
            ListView.builder(
                itemCount: 30,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://scontent-mct1-1.xx.fbcdn.net/v/t39.30808-6/356112377_960304918357260_5712363054646979346_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=efb6e6&_nc_eui2=AeFW5FtBOo1VLd0UZzTOTBr_tehJJwU-oIe16EknBT6ghzoBKjXLZfPsG3oyVhhqj8GvfBIahzkRk6EFRtVOEiOx&_nc_ohc=nQFBvlztcBQAX_A-79_&_nc_ht=scontent-mct1-1.xx&oh=00_AfAaconZuZqkhONtQ5NZebVoa_f6hENbxg4U-G1X5mQgwg&oe=658908B7'),
                    ),
                    title: const Text('Naushad Ali'),
                    subtitle: const Text('calls you at 12:30 Am'),
                    trailing:
                        Icon(index % 2 == 0 ? Icons.call : Icons.video_call),
                  );
                }),
          ]),
        ));
  }
}
