import 'package:flutter/material.dart';
import 'package:crowdapp/constants/image_strings.dart';
import 'package:crowdapp/constants/text_string.dart';

const _mainColor = Color(0xFF1c77c3);

class PageAccueil extends StatelessWidget {
  const PageAccueil({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      //appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Research(),
          ],
        ),
      )
    );
  }
}

class Research extends StatelessWidget{
  const Research({super.key});

  @override
  Widget build(BuildContext context){
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 400,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage(imgLogin),
                    ),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 4,
                        offset: Offset(0, 3),
                      )
                    ]
                  ),
                  child: const Stack(
                    children:  [
                      Positioned(
                        left: 20,
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search_rounded),
                            hintText: Search,
                            contentPadding: EdgeInsets.all(10),                    
                          ),
                        ),
                      )
                    ],
                  )
                )
              ),
            ],
          )
        ],
      ),
    );
  }
}