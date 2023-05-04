import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

final player = AudioPlayer();
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
      title: 'Japaness Learning App',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Japaness Learning App Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return (const HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.brown[200],
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: const Text('Language Learning Application'),
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: const Text(
                'Your way to learn japanese',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const MyNumbers();
                }));
              },
              child: Container(
                color: Colors.orange,
                width: double.infinity,
                height: 50,
                child: const Text(
                  'Numbers',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const FamilyMembers();
                }));
              },
              child: Container(
                color: Colors.green,
                width: double.infinity,
                height: 50,
                child: const Text(
                  ' Family Members',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const MyColors();
                }));
              },
              child: Container(
                color: Colors.purple,
                width: double.infinity,
                height: 50,
                child: const Text(
                  ' Colors',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
          ],
        ));
  }
}

class MyNumbers extends StatelessWidget {
  const MyNumbers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.brown[200],
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: const Text('Learning Numbers With Japanese'),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              color: Colors.green,
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                      color: const Color.fromRGBO(255, 255, 255, 0.765),
                      child: Image.asset('numbers/number_one.png')),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Number One 1',
                          style: TextStyle(fontSize: 21),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: GestureDetector(
                      onTap: () {
                        player.play(DeviceFileSource(
                            'numbers_audios/number_one_sound.mp3'));
                      },
                      child: const Icon(Icons.play_arrow),
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.green,
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                      color: const Color.fromRGBO(255, 255, 255, 0.765),
                      child: Image.asset('numbers/number_two.png')),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Number Two 2',
                          style: TextStyle(fontSize: 21),
                        )
                      ],
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: GestureDetector(
                      onTap: () {
                        player.play(DeviceFileSource(
                            'numbers_audios/number_two_sound.mp3'));
                      },
                      child: const Icon(Icons.play_arrow),
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.green,
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                      color: const Color.fromRGBO(255, 255, 255, 0.765),
                      child: Image.asset('numbers/number_three.png')),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Number Three 3',
                          style: TextStyle(fontSize: 21),
                        )
                      ],
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: GestureDetector(
                      onTap: () {
                        player.play(DeviceFileSource(
                            'numbers_audios/number_three_sound.mp3'));
                      },
                      child: const Icon(Icons.play_arrow),
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.green,
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                      color: const Color.fromRGBO(255, 255, 255, 0.765),
                      child: Image.asset('numbers/number_four.png')),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Number Four 4',
                          style: TextStyle(fontSize: 21),
                        )
                      ],
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: GestureDetector(
                      onTap: () {
                        player.play(DeviceFileSource(
                            'numbers_audios/number_four_sound.mp3'));
                      },
                      child: const Icon(Icons.play_arrow),
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.green,
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                      color: const Color.fromRGBO(255, 255, 255, 0.765),
                      child: Image.asset('numbers/number_five.png')),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Number Five 5',
                          style: TextStyle(fontSize: 21),
                        )
                      ],
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: GestureDetector(
                      onTap: () {
                        player.play(DeviceFileSource(
                            'numbers_audios/number_five_sound.mp3'));
                      },
                      child: const Icon(Icons.play_arrow),
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.green,
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                      color: const Color.fromRGBO(255, 255, 255, 0.765),
                      child: Image.asset('numbers/number_six.png')),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Number Six 6',
                          style: TextStyle(fontSize: 21),
                        )
                      ],
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: GestureDetector(
                      onTap: () {
                        player.play(DeviceFileSource(
                            'numbers_audios/number_six_sound.mp3'));
                      },
                      child: const Icon(Icons.play_arrow),
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.green,
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                      color: const Color.fromRGBO(255, 255, 255, 0.765),
                      child: Image.asset('numbers/number_seven.png')),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Number Seven 7',
                          style: TextStyle(fontSize: 21),
                        )
                      ],
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: GestureDetector(
                      onTap: () {
                        player.play(DeviceFileSource(
                            'numbers_audios/number_seven_sound.mp3'));
                      },
                      child: const Icon(Icons.play_arrow),
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.green,
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                      color: const Color.fromRGBO(255, 255, 255, 0.765),
                      child: Image.asset('numbers/number_eight.png')),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Number Eight 8',
                          style: TextStyle(fontSize: 21),
                        )
                      ],
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: GestureDetector(
                      onTap: () {
                        player.play(DeviceFileSource(
                            'numbers_audios/number_eight_sound.mp3'));
                      },
                      child: const Icon(Icons.play_arrow),
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.green,
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                      color: const Color.fromRGBO(255, 255, 255, 0.765),
                      child: Image.asset('numbers/number_nine.png')),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Number Nine 9',
                          style: TextStyle(fontSize: 21),
                        )
                      ],
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: GestureDetector(
                      onTap: () {
                        player.play(DeviceFileSource(
                            'numbers_audios/number_nine_sound.mp3'));
                      },
                      child: const Icon(Icons.play_arrow),
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.green,
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                      color: const Color.fromRGBO(255, 255, 255, 0.765),
                      child: Image.asset('numbers/number_ten.png')),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Number Ten 10',
                          style: TextStyle(fontSize: 21),
                        )
                      ],
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: GestureDetector(
                      onTap: () {
                        player.play(DeviceFileSource(
                            'numbers_audios/number_ten_sound.mp3'));
                      },
                      child: const Icon(Icons.play_arrow),
                    ),
                  )
                ],
              ),
            ),
          ]),
        ));
  }
}

class FamilyMembers extends StatelessWidget {
  const FamilyMembers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.brown[200],
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: const Text('Learning Family Members With Japanese'),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              color: Colors.green,
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                      color: const Color.fromRGBO(255, 255, 255, 0.765),
                      child:
                          Image.asset('family_members/family_grandfather.png')),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Ojisan',
                          style: TextStyle(fontSize: 21),
                        ),
                        Text(
                          'Grandfather',
                          style: TextStyle(fontSize: 21),
                        )
                      ],
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: GestureDetector(
                      onTap: () {
                        player.play(DeviceFileSource(
                            'family_members_audios/grandfather.wav'));
                      },
                      child: const Icon(Icons.play_arrow),
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.green,
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                      color: const Color.fromRGBO(255, 255, 255, 0.765),
                      child:
                          Image.asset('family_members/family_grandmother.png')),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'O bachan',
                          style: TextStyle(fontSize: 21),
                        ),
                        Text(
                          'Grandmother',
                          style: TextStyle(fontSize: 21),
                        )
                      ],
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: GestureDetector(
                      onTap: () {
                        player.play(DeviceFileSource(
                            'family_members_audios/grandmother.wav'));
                      },
                      child: const Icon(Icons.play_arrow),
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.green,
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                      color: const Color.fromRGBO(255, 255, 255, 0.765),
                      child: Image.asset('family_members/family_father.png')),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Chichioya',
                          style: TextStyle(fontSize: 21),
                        ),
                        Text(
                          'Father',
                          style: TextStyle(fontSize: 21),
                        )
                      ],
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: GestureDetector(
                      onTap: () {
                        player.play(DeviceFileSource(
                            'family_members_audios/father.wav'));
                      },
                      child: const Icon(Icons.play_arrow),
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.green,
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                      color: const Color.fromRGBO(255, 255, 255, 0.765),
                      child: Image.asset('family_members/family_mother.png')),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Hahaoya',
                          style: TextStyle(fontSize: 21),
                        ),
                        Text(
                          'Mother',
                          style: TextStyle(fontSize: 21),
                        )
                      ],
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: GestureDetector(
                      onTap: () {
                        player.play(DeviceFileSource(
                            'family_members_audios/mother.wav'));
                      },
                      child: const Icon(Icons.play_arrow),
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.green,
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                      color: const Color.fromRGBO(255, 255, 255, 0.765),
                      child: Image.asset('family_members/family_son.png')),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Musuko',
                          style: TextStyle(fontSize: 21),
                        ),
                        Text(
                          'Son',
                          style: TextStyle(fontSize: 21),
                        )
                      ],
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: GestureDetector(
                      onTap: () {
                        player.play(
                            DeviceFileSource('family_members_audios/son.wav'));
                      },
                      child: const Icon(Icons.play_arrow),
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.green,
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                      color: const Color.fromRGBO(255, 255, 255, 0.765),
                      child: Image.asset('family_members/family_daughter.png')),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Musume',
                          style: TextStyle(fontSize: 21),
                        ),
                        Text(
                          'Daughter',
                          style: TextStyle(fontSize: 21),
                        )
                      ],
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: GestureDetector(
                      onTap: () {
                        player.play(DeviceFileSource(
                            'family_members_audios/daughter.wav'));
                      },
                      child: const Icon(Icons.play_arrow),
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.green,
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                      color: const Color.fromRGBO(255, 255, 255, 0.765),
                      child: Image.asset(
                          'family_members/family_older_brother.png')),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Ani',
                          style: TextStyle(fontSize: 21),
                        ),
                        Text(
                          'older brother',
                          style: TextStyle(fontSize: 21),
                        )
                      ],
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: GestureDetector(
                      onTap: () {
                        player.play(DeviceFileSource(
                            'family_members_audios/olderbrother.wav'));
                      },
                      child: const Icon(Icons.play_arrow),
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.green,
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                      color: const Color.fromRGBO(255, 255, 255, 0.765),
                      child: Image.asset(
                          'family_members/family_older_sister.png')),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Ane',
                          style: TextStyle(fontSize: 21),
                        ),
                        Text(
                          'Older Sister',
                          style: TextStyle(fontSize: 21),
                        )
                      ],
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: GestureDetector(
                      onTap: () {
                        player.play(DeviceFileSource(
                            'family_members_audios/oldersister.wav'));
                      },
                      child: const Icon(Icons.play_arrow),
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.green,
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                      color: const Color.fromRGBO(255, 255, 255, 0.765),
                      child: Image.asset(
                          'family_members/family_younger_brother.png')),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Otōto',
                          style: TextStyle(fontSize: 21),
                        ),
                        Text(
                          'younger brother',
                          style: TextStyle(fontSize: 21),
                        )
                      ],
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: GestureDetector(
                      onTap: () {
                        player.play(DeviceFileSource(
                            'family_members_audios/youngerbrother.wav'));
                      },
                      child: const Icon(Icons.play_arrow),
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.green,
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                      color: const Color.fromRGBO(255, 255, 255, 0.765),
                      child: Image.asset(
                          'family_members/family_younger_sister.png')),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Imōto',
                          style: TextStyle(fontSize: 21),
                        ),
                        Text(
                          'younger sister',
                          style: TextStyle(fontSize: 21),
                        )
                      ],
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: GestureDetector(
                      onTap: () {
                        player.play(DeviceFileSource(
                            'family_members_audios/youngersister.wav'));
                      },
                      child: const Icon(Icons.play_arrow),
                    ),
                  )
                ],
              ),
            ),
          ]),
        ));
  }
}

class MyColors extends StatelessWidget {
  const MyColors({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.brown[200],
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: const Text('Learning Colors With Japanese'),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              color: Colors.green,
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                      color: const Color.fromRGBO(255, 255, 255, 0.765),
                      child: Image.asset('colors/color_black.png')),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Black Color',
                          style: TextStyle(fontSize: 21),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: GestureDetector(
                      onTap: () {
                        player
                            .play(DeviceFileSource('colors_audios/black.wav'));
                      },
                      child: const Icon(Icons.play_arrow),
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.green,
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                      color: const Color.fromRGBO(255, 255, 255, 0.765),
                      child: Image.asset('colors/color_brown.png')),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Brown Color',
                          style: TextStyle(fontSize: 21),
                        )
                      ],
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: GestureDetector(
                      onTap: () {
                        player
                            .play(DeviceFileSource('colors_audios/brown.wav'));
                      },
                      child: const Icon(Icons.play_arrow),
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.green,
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                      color: const Color.fromRGBO(255, 255, 255, 0.765),
                      child: Image.asset('colors/color_dusty_yellow.png')),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Dusty_yellow Color',
                          style: TextStyle(fontSize: 21),
                        )
                      ],
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: GestureDetector(
                      onTap: () {
                        player.play(
                            DeviceFileSource('colors_audios/dusty yellow.wav'));
                      },
                      child: const Icon(Icons.play_arrow),
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.green,
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                      color: const Color.fromRGBO(255, 255, 255, 0.765),
                      child: Image.asset('colors/color_gray.png')),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Gray Color',
                          style: TextStyle(fontSize: 21),
                        )
                      ],
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: GestureDetector(
                      onTap: () {
                        player.play(DeviceFileSource('colors_audios/gray.wav'));
                      },
                      child: const Icon(Icons.play_arrow),
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.green,
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                      color: const Color.fromRGBO(255, 255, 255, 0.765),
                      child: Image.asset('colors/color_green.png')),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Green Color',
                          style: TextStyle(fontSize: 21),
                        )
                      ],
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: GestureDetector(
                      onTap: () {
                        player
                            .play(DeviceFileSource('colors_audios/green.wav'));
                      },
                      child: const Icon(Icons.play_arrow),
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.green,
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                      color: const Color.fromRGBO(255, 255, 255, 0.765),
                      child: Image.asset('colors/color_red.png')),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Red Color',
                          style: TextStyle(fontSize: 21),
                        )
                      ],
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: GestureDetector(
                      onTap: () {
                        player.play(DeviceFileSource('colors_audios/red.wav'));
                      },
                      child: const Icon(Icons.play_arrow),
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.green,
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                      color: const Color.fromRGBO(255, 255, 255, 0.765),
                      child: Image.asset('colors/color_white.png')),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'White Color',
                          style: TextStyle(fontSize: 21),
                        )
                      ],
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: GestureDetector(
                      onTap: () {
                        player
                            .play(DeviceFileSource('colors_audios/white.wav'));
                      },
                      child: const Icon(Icons.play_arrow),
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.green,
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                      color: const Color.fromRGBO(255, 255, 255, 0.765),
                      child: Image.asset('colors/yellow.png')),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Musuko',
                          style: TextStyle(fontSize: 21),
                        ),
                        Text(
                          'son',
                          style: TextStyle(fontSize: 21),
                        )
                      ],
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: GestureDetector(
                      onTap: () {
                        player
                            .play(DeviceFileSource('colors_audios/yellow.wav'));
                      },
                      child: const Icon(Icons.play_arrow),
                    ),
                  )
                ],
              ),
            ),
          ]),
        ));
  }
}
