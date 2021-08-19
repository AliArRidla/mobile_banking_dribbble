import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
        child: Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('assets/profile.jpg'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 100),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Hello Jixan,",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            )),
                        Text(
                          "Welcome Back!",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                    ),
                    child: Icon(
                      Icons.notifications,
                      size: 20,
                      color: Colors.black54,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 45,
                padding: EdgeInsets.only(top: 15, left: 20, bottom: 17),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.grey[100],
                ),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Search",
                      hintStyle: TextStyle(fontSize: 14),
                      icon: Icon(
                        Icons.search,
                        size: 20,
                      ),
                      border: InputBorder.none),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
