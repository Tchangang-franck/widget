import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.transparent),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          // title: const Text('Design flutter '),
          ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            titleSection,
            searchSection,
            boxSection,
            iconSection,
            const SizedBox(height: 5),
            lineSection,
            const SizedBox(height: 5),
            boxlineSection,
            bottomSection,
            bottomOrangeSection,
            bottomPinkSection
          ],
        ),
      ),
    );
  }
}

//titleSEction
@override
Widget titleSection = Container(
  padding: const EdgeInsets.all(20),
  margin: const EdgeInsets.all(10),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      const Text(
        "Home Page",
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
      Expanded(
        flex: 2,
        child: Container(),
      ),
      // Image.network('https://picsum.photos/250?image=9', width: 80),
      Container(
        width: 50,
        height: 50,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOuxrvcNMfGLh73uKP1QqYpKoCB0JLXiBMvA&s',
                width: 80)
            // const Icon(
            //   Icons.person,
            //   color: Colors.grey,
            //   size: 50,
            // ),
            ),
      )
    ],
  ),
);

//searchSection
@override
Widget searchSection = Container(
  padding: const EdgeInsets.all(20),
  margin: const EdgeInsets.all(20),
  width: 500,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    color: Colors.grey,
  ),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      const Icon(Icons.search, color: Colors.white),
      const Text(
        "Search",
        style: TextStyle(color: Colors.white),
      ),
      Expanded(
          child: Container(
        width: double.infinity,
      )),
      const Icon(Icons.macro_off, color: Colors.white)
    ],
  ),
);

//boxSection
@override
Widget boxSection = Container(
  padding: const EdgeInsets.all(10),
  margin: const EdgeInsets.all(10),
  width: double.infinity,
  height: 200,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    color: Colors.blueAccent,
    gradient: const LinearGradient(
        colors: [Colors.blue, Colors.blueAccent],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter),
  ),
  child: const Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Jin A Studio',
        style: TextStyle(fontSize: 25, color: Colors.white),
      ),
      Text(
        'Tell me you dream',
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
      Text(
        'Invited friends to sell 1000 red pockets',
        style: TextStyle(fontSize: 15, color: Colors.white),
      ),
      SizedBox(
        height: 15,
      ),
      ElevatedButton(
        onPressed: null,
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.orange)),
        child: Text(
          'Details',
          style: TextStyle(color: Colors.white),
        ),
      )
    ],
  ),
);

//iconSection
@override
Widget iconSection = Container(
  padding: const EdgeInsets.all(5),
  margin: const EdgeInsets.all(5),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            color: Colors.orange,
            child: const Icon(
              Icons.newspaper_outlined,
              size: 40,
              color: Colors.white,
            ),
          ),
          const Text(
            'News',
            style: TextStyle(color: Colors.black),
          )
        ],
      ),
      Column(
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            color: Colors.blue,
            child: const Icon(
              Icons.accessible_forward_sharp,
              size: 40,
              color: Colors.white,
            ),
          ),
          const Text(
            'Skills',
            style: TextStyle(color: Colors.black),
          )
        ],
      ),
      Column(
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            color: Colors.pink,
            child: const Icon(
              Icons.add_a_photo_rounded,
              size: 40,
              color: Colors.white,
            ),
          ),
          const Text(
            'Essai',
            style: TextStyle(color: Colors.black),
          )
        ],
      ),
      Column(
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            color: Colors.blue,
            child: const Icon(
              Icons.add_card,
              size: 40,
              color: Colors.white,
            ),
          ),
          const Text(
            'Roms',
            style: TextStyle(color: Colors.black),
          )
        ],
      ),
      Column(
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            color: Colors.purple,
            child: const Icon(
              Icons.add_ic_call_sharp,
              size: 40,
              color: Colors.white,
            ),
          ),
          const Text(
            'Projet',
            style: TextStyle(color: Colors.black),
          )
        ],
      ),
    ],
  ),
);

//lineSection
@override
Widget lineSection = Container(
  color: Colors.grey,
  width: 500,
  height: 6,
);

//lineBoxSection
@override
Widget lineBoxSection = Container(
  alignment: Alignment.topLeft,
  height: 30,
  width: 6,
  color: Colors.amber,
);

//curriculumnSection
@override
Widget curriculumnSection = const Text(
  'Curriculumn',
  style: TextStyle(color: Colors.black, fontSize: 16),
);

// lineSection and lineBoxSection
@override
Widget boxlineSection = Container(
  padding: const EdgeInsets.all(10),
  child: Row(
    // mainAxisAlignment: MainAxisAlignment.start,
    // crossAxisAlignment: CrossAxisAlignment.start,
    children: [lineBoxSection, const SizedBox(width: 10), curriculumnSection],
  ),
);

//bottomSection purple
@override
Widget bottomSection = Container(
  width: double.infinity,
  // height: 200,
  padding: const EdgeInsets.all(5),
  margin: const EdgeInsets.all(5),
  // color: const Color.fromARGB(255, 148, 123, 121),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        children: [
          Container(
            width: 60,
            height: 80,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(5),
            color: Colors.purple,
            child: const Icon(
              Icons.star,
              color: Colors.white,
              size: 30,
            ),
          ),
          const Text(
            'Effet class',
            style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
          ),
        ],
      ),
      const Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FittedBox(
            child: Text(
              "Central Quing Elite Class",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
          ),
          FittedBox(
            child: Text(
              "Little first choice regard  improvement paid ability",
              style: TextStyle(color: Colors.black, fontSize: 10),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\u{20AC}350.000  ",
                style: TextStyle(
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              SizedBox(width: 50),
              ElevatedButton(
                onPressed: null,
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.purple)),
                child: Text(
                  'purchase',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              )
            ],
          )
        ],
      )
    ],
  ),
);

//Bottosection orange
@override
Widget bottomOrangeSection = Container(
  width: double.infinity,
  // height: 200,
  padding: const EdgeInsets.all(5),
  margin: const EdgeInsets.all(5),
  // color: const Color.fromARGB(255, 148, 123, 121),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        children: [
          Container(
            width: 60,
            height: 80,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(5),
            color: Colors.orange,
            child: const Icon(
              Icons.star,
              color: Colors.white,
              size: 30,
            ),
          ),
          const Text(
            'Effet Design',
            style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
          ),
        ],
      ),
      const Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FittedBox(
            child: Text(
              "Central Quing Elite Class",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
          ),
          FittedBox(
            child: Text(
              "Little first choice regard  improvement paid ability",
              style: TextStyle(color: Colors.black, fontSize: 10),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\u{20AC}450.000  ",
                style: TextStyle(
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              SizedBox(width: 50),
              ElevatedButton(
                onPressed: null,
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.orange)),
                child: Text(
                  'purchase',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              )
            ],
          )
        ],
      )
    ],
  ),
);

//Bottosection red
@override
Widget bottomPinkSection = Container(
  width: double.infinity,
  // height: 200,
  padding: const EdgeInsets.all(5),
  margin: const EdgeInsets.all(5),
  // color: const Color.fromARGB(255, 148, 123, 121),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        children: [
          Container(
            width: 60,
            height: 80,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(5),
            color: Colors.red,
            child: const Icon(
              Icons.star,
              color: Colors.white,
              size: 30,
            ),
          ),
          const Text(
            'Effet class',
            style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold),
          ),
        ],
      ),
      const Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FittedBox(
            child: Text(
              "Central Quing Elite Class",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
          ),
          FittedBox(
            child: Text(
              "Little first choice regard  improvement paid ability",
              style: TextStyle(color: Colors.black, fontSize: 10),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\u{20AC}650.000  ",
                style: TextStyle(
                    color: Colors.pink,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              SizedBox(width: 50),
              ElevatedButton(
                onPressed: null,
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.pink)),
                child: Text(
                  'purchase',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              )
            ],
          )
        ],
      )
    ],
  ),
);
