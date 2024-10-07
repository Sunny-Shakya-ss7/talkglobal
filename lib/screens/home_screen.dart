import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:talkglobal/screens/country_rectangle.dart';

class HomeScreen extends StatefulWidget {
  final VoidCallback showPromptScreen;
  const HomeScreen({super.key, required this.showPromptScreen});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/worldmap.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 80, left: 16.0, right: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Expanded(
                child: Center(
                  child: Center(child: CountryRectangle()),
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: GoogleFonts.poppins(
                          height: 1.6,
                        ),
                        children: const <InlineSpan>[
                          TextSpan(
                            text: 'Translate',
                            style: TextStyle(
                              fontSize: 32.0,
                              color: Color(0xFF000000),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: ' Every \n',
                            style: TextStyle(
                              fontSize: 32.0,
                              color: Color(0xFF6D1B7B),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: ' Type Word \n',
                            style: TextStyle(
                              fontSize: 32.0,
                              color: Color(0xFF000000),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          WidgetSpan(
                            child: SizedBox(
                              height: 35,
                            ),
                          ),
                          TextSpan(
                            text: ' Help you communicate in \n',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Color(0xFF6D1B7B),
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          TextSpan(
                            text: ' Different Languages \n',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Color(0xFF6D1B7B),
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: GestureDetector(
                        onTap: widget.showPromptScreen,
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          decoration: const BoxDecoration(
                            color: Color(0xFF6D1B7B),
                            shape: BoxShape.circle,
                          ),
                          child: Container(
                            height: 50,
                            width: 50,
                            padding: const EdgeInsets.all(2.0),
                            decoration: const BoxDecoration(
                              color: Color(0xFFFFFFFF),
                              shape: BoxShape.circle,
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.arrow_forward,
                                color: Color(0xFF6D1B7B),
                              ),
                            ),
                          ),
                        ),
                      ),
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
