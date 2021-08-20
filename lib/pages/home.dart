import 'package:flutter/material.dart';
import 'package:mobile_banking/widgets/category_card.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, right: 15, left: 15),
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
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                child: Container(
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
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(
                          colors: [Colors.blue, Color(0xff1565C0)])),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Total balance",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "2,687.00",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(25),
                            ),
                          ),
                          child: Icon(
                            Icons.add,
                            size: 20,
                            color: Colors.blue,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: .90,
                  crossAxisSpacing: 25,
                  mainAxisSpacing: 20,
                  children: [
                    CategoryCard(
                      title: "Send \nMoney",
                      subTitle: "To acc to acc",
                      icon: Icon(
                        Icons.send,
                        color: Colors.orange,
                      ),
                      press: () {},
                    ),
                    CategoryCard(
                      title: "Receive Money",
                      subTitle: "Manage Account",
                      icon: Icon(
                        Icons.inbox_sharp,
                        color: Colors.green,
                      ),
                      press: () {},
                    ),
                    CategoryCard(
                      title: "Mobile \nPrepaid",
                      subTitle: "Recharge Mobile",
                      icon: Icon(
                        Icons.send,
                        color: Colors.orange,
                      ),
                      press: () {},
                    ),
                    CategoryCard(
                      title: "Bank to Bank",
                      subTitle: "Send Money",
                      icon: Icon(
                        Icons.inbox_sharp,
                        color: Colors.green,
                      ),
                      press: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
