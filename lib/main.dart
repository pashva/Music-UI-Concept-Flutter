import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, title: 'Flutter Demo', home: Home());
  }
}

class Home extends StatelessWidget {
  var blueColor = Color(0xFF090e42);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: blueColor,
        body: Column(
          children: [
            Container(
              height: 500,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/background.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [blueColor.withOpacity(0.2), blueColor])),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 45,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.1),
                                  shape: BoxShape.circle),
                              child: Icon(
                                Icons.arrow_drop_down,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            Column(
                              children: [
                                Text(
                                  "Playlist",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Best Vibes of the week",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.playlist_add,
                              color: Colors.white,
                            )
                          ],
                        ),
                        Spacer(),
                        Text("Bad Liar",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 32.0)),
                        SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          "Imagine Dragons",
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.6), fontSize: 18.0),
                        ),
                        SizedBox(height: 16.0),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 42.0),
          Slider(
            onChanged: (double value) {},
            value: 0.2,
            activeColor: Colors.pink,
          ),
          Padding(
            padding:  EdgeInsets.only(left: 15,right: 12,top: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("1:32",style: TextStyle(
                  fontSize: 12,
                  color: Colors.white.withOpacity(0.4),
                ),),
                Text("-3:54",style: TextStyle(
                  fontSize: 12,
                  color: Colors.white.withOpacity(0.4),
                ),)
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.fast_rewind,
                color: Colors.white54,
                size: 42.0,
              ),
              SizedBox(width: 32.0),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.play_arrow,size: 58,color: Colors.white,),
                ),
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(50),
                  
                ),
                
              ),
              SizedBox(width: 32.0),
              Icon(
                Icons.fast_forward,
                color: Colors.white54,
                size: 42.0,
              ),
            ],
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white.withOpacity(0.3)
                ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                  Icons.bookmark_border,
                  color: Colors.white,
                ),
                              ),
              ),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white.withOpacity(0.3)
                ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                  Icons.shuffle,
                  color: Colors.white,
                ),
                              ),
              ),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white.withOpacity(0.3)
                ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                  Icons.repeat,
                  color: Colors.white,
                ),
                              ),
              ),
             
            ],
          ),
          SizedBox(
            height: 20,
          )

          ],
        ),

        );
  }
}
