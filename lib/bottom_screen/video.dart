import 'package:flutter/material.dart';

class Video extends StatefulWidget {
  const Video({Key? key}) : super(key: key);
  @override
  State<Video> createState() => _VideoState();
}

class _VideoState extends State<Video> {
  @override
   Widget build(BuildContext context) {
      return Scaffold(
        body: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            verticalDirection: VerticalDirection.down,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Row(
                children: [
                  Column(
                    children: [
                      Card(
                        child: Image.asset('assets/imgvideo1.jpeg'),
                      ),
                      const Text("Sonko lance le #Burok qui  démarre par l'assainissement"),
                    ],
                  ),
                  Column(
                    children: [
                      Card(
                        child: Image.asset('assets/imgvideo2.jpeg'),
                      ),
                      const Text("Sonko lance le #Burok qui  démarre par l'assainissement"),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Card(
                        child: Image.asset('assets/imagevideo3.jpeg', ),
                        margin: const EdgeInsets.all(10.0),
                      ),
                      const Text("Sonko lance le #Burok qui  démarre par l'assainissement"),
                    ],
                  ),
                  Column(
                    children: [
                      Card(
                        child: Image.asset('assets/imagevideo4.jpeg'),
                      ),
                      const Text("Sonko lance le #Burok qui  démarre par l'assainissement"),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Card(
                        child: Image.asset('assets/image5.png', ),
                        margin: const EdgeInsets.all(10.0),
                      ),
                      const Text("Sonko lance le #Burok qui  démarre par l'assainissement"),
                    ],
                  ),
                  Column(
                    children: [
                      Card(
                        child: Image.asset('assets/image6.png'),
                      ),
                      const Text("Sonko lance le #Burok qui  démarre par l'assainissement"),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Card(
                        child: Image.asset('assets/image7.png', ),
                        margin: const EdgeInsets.all(10.0),
                      ),
                     // const Text("Sonko lance le #Burok qui  démarre par l'assainissement"),
                    ],
                  ),
                  Column(
                    children: [
                      Card(
                        child: Image.asset('assets/image8.png'),
                      ),
                      // const Text("Sonko lance le #Burok qui  démarre par l'assainissement"),
                    ],
                  ),
                ],
              ),
            ],
          ),
        )
    );
   }
}
