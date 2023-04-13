import 'package:flutter/material.dart';
import 'package:whatsapp_clone/chat_screen.dart';

class home_Screen extends StatefulWidget {
  home_Screen({Key? key}) : super(key: key);

  @override
  State<home_Screen> createState() => _home_ScreenState();
}

class _home_ScreenState extends State<home_Screen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            actions: [
              const Icon(Icons.camera_alt, color: Colors.white),
              const SizedBox(
                width: 20,
              ),
              const Icon(Icons.search, color: Colors.white),
              const SizedBox(
                width: 20,
              ),
              PopupMenuButton(
                  icon: const Icon(Icons.more_vert, color: Colors.white),
                  itemBuilder: (context) => [
                        const PopupMenuItem(
                          value: '1',
                          child: Text('New Group'),
                        ),
                        const PopupMenuItem(
                          value: '2',
                          child: Text('New Broadcast'),
                        ),
                        const PopupMenuItem(
                          value: '3',
                          child: Text('Linked devices'),
                        ),
                        const PopupMenuItem(
                          value: '4',
                          child: Text('Starred messages'),
                        ),
                        const PopupMenuItem(
                          value: '5',
                          child: Text('Settings'),
                        ),
                      ]),
              const SizedBox(
                width: 20,
              ),
            ],
            backgroundColor: Colors.teal,
            title: const Text(
              'WhatsApp',
              style: TextStyle(color: Colors.white),
            ),
            bottom: const TabBar(tabs: [
              Tab(
                  child: Icon(
                Icons.groups,
                color: Colors.white,
              )),
              Tab(child: Text(' Chats', style: TextStyle(color: Colors.white))),
              Tab(
                  child:
                      Text(' Status ', style: TextStyle(color: Colors.white))),
              Tab(
                  child:
                      Text(' Calls ', style: TextStyle(color: Colors.white))),
            ]),
          ),
          body: TabBarView(children: [
            //const Text('Groups'),
            ListView.builder(
                itemCount: 17,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: ListTile(
                            leading: Icon(Icons.groups),
                            title: Text('New Community'),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    );
                  } else if (index == 1) {
                    return const Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://res.cloudinary.com/practicaldev/image/fetch/s--KCRN0Wuf--/c_fill,f_auto,fl_progressive,h_320,q_auto,w_320/https://dev-to-uploads.s3.amazonaws.com/uploads/organization/profile_image/356/ceb8dc0f-a77b-4f89-84da-52216a4286e1.png'),
                          ),
                          title: Text('Dev Connect'),
                        ),
                        Divider(),
                      ],
                    );
                  } else {
                    return const ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://logowik.com/content/uploads/images/flutter5786.jpg'),
                      ),
                      title: Text('Flutter Community'),
                      subtitle: Text('You were added'),
                      trailing: Text('5/02/2023'),
                    );
                  }
                }),
            //Text('Chats'),
            ListView.builder(
                itemCount: 27,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => chat_screen(),
                        ),
                      );
                    },
                    leading: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/4906334/pexels-photo-4906334.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                    ),
                    title: Text('Emaan Yaqoob'),
                    subtitle: Text(' are u tired?'),
                    trailing: Text('6:26 pm'),
                  );
                }),

            //Text('Status'),
            ListView.builder(
                itemCount: 27,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 1, color: Colors.white),
                            ),
                            child: const CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://images.pexels.com/photos/1755385/pexels-photo-1755385.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                              child: Stack(children: [
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: CircleAvatar(
                                    radius: 12,
                                    backgroundColor: Colors.teal,
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          ),
                          title: const Text('My status'),
                          subtitle: const Text(' Tap to add status update'),
                        ),
                      ],
                    );
                  } else {
                    return ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 3, color: Colors.teal),
                        ),
                        child: const CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://images.pexels.com/photos/8778442/pexels-photo-8778442.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                        ),
                      ),
                      title: const Text('laraib Yaqoob'),
                      subtitle: const Text(' today 4:17 am'),
                    );
                  }
                }),

            // Text('Calls'),
            ListView.builder(
                itemCount: 27,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/4906334/pexels-photo-4906334.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                    ),
                    title: const Text('Emaan Yaqoob'),
                    subtitle: Text(index / 2 == 0
                        ? ' You missed a video call'
                        : '7 April, 6:26 pm'),
                    trailing:
                        Icon(index / 2 == 0 ? Icons.video_call : Icons.phone),
                  );
                }),
          ]),
        ));
  }
}
