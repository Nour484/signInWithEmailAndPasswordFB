import 'package:flutter/material.dart';
import 'package:textfield/widget/flag_widget.dart';
import 'package:textfield/widget/important_widget.dart';
import 'package:textfield/widget/task_widget.dart';

void main() {
  runApp(const MyTrying());
}

class MyTrying extends StatefulWidget {
  const MyTrying({super.key});

  @override
  State<MyTrying> createState() => _MyTryingState();
}

class _MyTryingState extends State<MyTrying> {
  // Navigator.push(
  //             context,
  //             MaterialPageRoute(builder: (context) => const SecondRoute()),

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: const DrawerWidget(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        bottom: const TabBar(
          tabs: [
            Tab(
              icon: Icon(Icons.home),
              text: "Task",
            ),
            Tab(
              icon: Icon(Icons.star),
              text: "Important",
            ),
            Tab(
              icon: Icon(Icons.flag),
              text: "Flag",
            ),
          ],
        ),
        // leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        title: const Text(" My Day"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          //*  how to use  background image
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("assets/images/b.jpeg"),
          ),
        ),
        child: const TabBarView(children: [Tasks(), Important(), Flag()]),
      ),
    );
  }
}

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      decoration: const BoxDecoration(
        //*  how to use  gradient color
        gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            stops: [
              0.1,
              0.4,
              1
            ],
            colors: [
              Color.fromARGB(255, 129, 173, 255),
              Color.fromARGB(255, 214, 214, 235),
              Color.fromARGB(255, 204, 191, 113),
            ]),
      ),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/bg.jpeg"),
                ),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/profile.jpeg"),
              ),
              accountName: Text(
                "Nour Ahmed",
                style: TextStyle(
                    fontFamily: "Dancing Script",
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              accountEmail: Text(
                "Nour.Ahmed@hotmail.com ",
                style: TextStyle(
                    fontFamily: "Dancing Script",
                    fontWeight: FontWeight.bold,
                    fontSize: 28),
              )),
          ListTile(
            leading: const Icon(Icons.sunny),
            title: const Text("My Day"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Flag()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text("Assigned to me "),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Flag()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.flag),
            title: const Text("Flag"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.star),
            title: const Text("Important"),
            onTap: () {},
          ),
          const Divider(
            thickness: 1,
            indent: 15,
            endIndent: 15,
            color: Color.fromARGB(123, 35, 34, 34),
          ),
          ListTile(
            leading: const Icon(Icons.manage_accounts),
            title: const Text("Manage Account"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text("Logout"),
            onTap: () {},
          ),
        ],
      ),
    ));
  }
}
