import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          leading: const Icon(
            Icons.arrow_back,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          actions: [
            Icon(Icons.star,  color: Color.fromARGB(255, 255, 255, 255),),
            Padding(padding: EdgeInsets.only(right: 8))
          ],
        ),
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        body: ListView(
          children: [
            SizedBox(
              width: double.infinity,
              child: Image.network(
                  "https://i.pinimg.com/originals/1e/3f/96/1e3f96d57997575ed64074f85e5be8a8.jpg",
                  height: 250,
                  fit: BoxFit.cover),
            ),
            const SizedBox(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      "Francielly sz",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
            ),
            Container(
              margin: const EdgeInsets.only(top: 8, bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildCallButton(),
                  buildTextButton(),
                  buildVideoCallButton(),
                  buildEmailButton(),
                  buildDirectionsButton(),
                  buildPayButton(),
                ],
              ),
            ),
            const Divider(
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            Container(
                margin: const EdgeInsets.all(24),
                child: mobilePhoneListTitle()),
            Container(
                margin: const EdgeInsets.all(24), child: otherPhoneListTitle()),
          ],
        ),
      ),
    );
  }
}

Widget buildCallButton() {
  return Column(
    children: [
      IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.call,
            color: const Color.fromARGB(255, 255, 255, 255),
          )),
      Text("Call", style: TextStyle(color: Colors.white) )
    ],
  );
}

Widget buildTextButton() {
  return Column(
    children: [
      IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.message,
            color: const Color.fromARGB(255, 255, 255, 255),
          )),
      Text("Text", style: TextStyle(color: Colors.white))
    ],
  );
}

Widget buildVideoCallButton() {
  return Column(
    children: [
      IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.video_call,
            color: const Color.fromARGB(255, 255, 255, 255),
          )),
      Text("Video", style: TextStyle(color: Colors.white))
    ],
  );
}

Widget buildDirectionsButton() {
  return Column(
    children: [
      IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.directions,
            color: const Color.fromARGB(255, 255, 255, 255),
          )),
      Text("Directions", style: TextStyle(color: Colors.white))
    ],
  );
}

Widget buildPayButton() {
  return Column(
    children: [
      IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.payment,
            color: const Color.fromARGB(255, 255, 255, 255),
          )),
      Text("Pay", style: TextStyle(color: Colors.white))
    ],
  );
}

Widget buildEmailButton() {
  return Column(
    children: [
      IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.mail,
            color: const Color.fromARGB(255, 255, 255, 255),
          )),
      Text("Email", style: TextStyle(color: Colors.white))
    ],
  );
}

Widget mobilePhoneListTitle() {
  return const Row(
    children: [
      Icon(Icons.call, color: const Color.fromARGB(255, 255, 255, 255),),
      
      Padding(padding: EdgeInsets.all(8)),
      Column(
        children: [
          Text("(11) 4147-1443", style: TextStyle(color: Colors.white),),
          Text("fixo", style: TextStyle(color: Colors.white),),
        ],
      ),
      Padding(padding: EdgeInsets.only(right: 200)),
      Icon(Icons.message)
    ],
  );
}

Widget otherPhoneListTitle() {
  return const Row(
    children: [
      Icon(Icons.call, color: const Color.fromARGB(255, 255, 255, 255),),
      Padding(padding: EdgeInsets.all(8)),
      Column(
        children: [
          Text("(11) 911470886 " , style: TextStyle(color: Colors.white),),
          Text("mobile", style: TextStyle(color: Colors.white),),
        ],
      ),
      Padding(padding: EdgeInsets.only(right: 200)),
      Icon(Icons.message)
    ],
  );
}
