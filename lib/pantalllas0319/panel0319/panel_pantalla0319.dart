import 'package:flutter/material.dart';
import 'package:beltran0319/pantalllas0319/panel0319/widgets0319/item_mantenimiento0319.dart';

class PanelPantalla0319 extends StatelessWidget {
  const PanelPantalla0319({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Piscinas Beltrán0319',
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            )),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://raw.githubusercontent.com/BeltranJ128/img_iOS/main/manny.jpg"),
            ),
          )
        ],
        backgroundColor: Color(0xff5422ab),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(15),
            padding: const EdgeInsets.symmetric(horizontal: 35),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 5),
                    color:
                        Theme.of(context).colorScheme.secondary.withOpacity(.3),
                    spreadRadius: 5,
                    blurRadius: 5,
                  )
                ]),
            child: const TextField(
              decoration: InputDecoration(
                  hintText: "Buscar...",
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.w300, color: Colors.deepPurple),
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.deepPurple,
                  )),
            ),
          ),
          Container(
            height: 180,
            margin: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://raw.githubusercontent.com/BeltranJ128/img_iOS/main/pool.webp"))),
          ),
          ListTile(
            title: Text("Mantenimientos"),
            titleTextStyle: Theme.of(context).textTheme.titleLarge,
            trailing: Icon(Icons.filter_list_outlined),
          ),
          Expanded(
              child: GridView.count(
            padding: EdgeInsets.all(15),
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 15,
            children: [for (int i = 1; i <= 10; i++) const ItemMantenimiento()],
          ))
        ],
      ),
    );
  }
}
