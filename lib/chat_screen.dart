import 'package:flutter/material.dart';

class chat_screen extends StatefulWidget {
  chat_screen({Key? key}) : super(key: key);

  @override
  State<chat_screen> createState() => _chat_screenState();
}

class _chat_screenState extends State<chat_screen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          //  title:CircleAvatar(
           //   backgroundImage: NetworkImage(
           //       'https://images.pexels.com/photos/4906334/pexels-photo-4906334.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
           // ),
            title: const Row(
            children: [
              CircleAvatar(
             backgroundImage: NetworkImage(
                 'https://images.pexels.com/photos/4906334/pexels-photo-4906334.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
           ),
              SizedBox(width: 8),
              Text('Emaan yaqoob'),
            ],
          ),
            backgroundColor: Colors.teal,
            actions: const [
              Icon(Icons.video_call),
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.call,
                color: Colors.white,
              ),
              SizedBox(
                width: 20,
              ),
              Icon(Icons.more_vert, color: Colors.white),
              SizedBox(
                width: 20,
              ),
            ]),
        body: Container(
          
          decoration:  const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://mcdn.wallpapersafari.com/medium/27/32/jt4AoG.jpg"),
              // fit: BoxFit.cover,
            ),
          ),
          
       
         child:  Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 90,left: 10,bottom: 15),
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: 'Enter your text here',
                      hintStyle: const TextStyle(color: Colors.black),
                      prefixIcon: const Icon(
                        Icons.emoji_emotions,
                        color:Colors.teal,
                      ),
                      suffixIcon: const Icon(Icons.attach_file , color: Colors.teal,),
                      
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xffE4E7EB)),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      focusedBorder: OutlineInputBorder(borderSide: const BorderSide(color: Color(0xffE4E7EB)),
                        borderRadius: BorderRadius.circular(50),),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.teal),
                        
                      ),
                    ),
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () => {
                  //do something
                },
            backgroundColor: Colors.teal,
            child: const Icon(
              Icons.call,
              color: Colors.white,
            )),
      ),
    );
  }
}
