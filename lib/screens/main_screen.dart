import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Container(
          decoration: BoxDecoration(
              color: const Color.fromRGBO(21, 35, 55, 1),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  spreadRadius: 3,
                  blurRadius: 3,
                  color: Colors.black.withOpacity(0.25),
                  offset: const Offset(0, 0),
                )
              ]),
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset("assets/images/Equilibrium.jpg"),
                ),
                const SizedBox(height: 30),
                const Text(
                  "Equilibrium #3429",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    letterSpacing: -1,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Out Equilibrium collection promotes balance and calm.",
                  style: TextStyle(
                    color: Color.fromRGBO(125, 147, 181, 1),
                    fontSize: 16,
                    height: 1.6,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    SvgPicture.asset("assets/images/Ethereum.svg"),
                    const SizedBox(width: 10),
                    const Text(
                      "0.041 ETH",
                      style: TextStyle(
                        color: Color.fromRGBO(0, 246, 242, 1),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    SvgPicture.asset("assets/images/Clock.svg"),
                    const SizedBox(width: 10),
                    const Text(
                      "3 days left",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromRGBO(134, 168, 218, 1),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Divider(
                  color: Color.fromRGBO(40, 56, 78, 1),
                  thickness: 1,
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Stack(children: [
                      Image.asset(
                        "assets/images/Avatar.png",
                        width: 40,
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white,
                              width: 1,
                            )),
                      ),
                    ]),
                    const SizedBox(width: 15),
                    RichText(
                      text: TextSpan(
                        style: GoogleFonts.outfit(
                          fontSize: 18,
                        ),
                        children: const [
                          TextSpan(
                              text: "Creation of ",
                              style: TextStyle(
                                color: Color.fromRGBO(128, 160, 211, 1),
                              )),
                          TextSpan(text: "Jules Wyvern"),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
