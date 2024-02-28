import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topLeft,
          colors: [
            Colors.blue.shade900,
            Colors.blue.shade300,
            Colors.blue.shade900,
            Colors.blue.shade200,
          ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(child: SizedBox(
              height: MediaQuery.of(context).size.height / 2.6,
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: const EdgeInsets.only(left: 25),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(100))
                      ),
                      child: IconButton(onPressed: () {},
                      icon: const Icon(Icons.menu, color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ),
            Expanded(child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(25),
              decoration: const BoxDecoration(color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(65),
                topRight: Radius.circular(65),
              ),
              ),
              child: Column(
                children: <Widget>[
                  Center(
                    child: Text('top 10 instruments'.toUpperCase(), style: Theme.of(context).textTheme.bodySmall?.copyWith(
                     color: Colors.black,
                     fontWeight: FontWeight.bold,
                     fontSize: 14,
                    ),
                    ),
                  ),
                ],
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}