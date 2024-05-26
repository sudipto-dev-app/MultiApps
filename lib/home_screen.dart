import 'package:flutter/material.dart';
import 'package:labpfinalproject/calculator/calclulator_screen.dart';
import 'package:labpfinalproject/porfolio/portfolio_app.dart';
import 'package:labpfinalproject/quiz_app/quiz_app.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My All apps',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Center(
        child: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          shrinkWrap: true,
          children: [
            InkWell(
              splashColor: Colors.black26,
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=>const CalculatorScreen()));
              },
              child: Column(
                children: [
                  Ink.image(
                    image: const NetworkImage(
                        'https://cdn2.iconfinder.com/data/icons/ios7-inspired-mac-icon-set/512/Calculator_512.png'),
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 20),
                  const Text(
                    'Calculator',
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
            InkWell(
              splashColor: Colors.black26,
              onTap: () {},
              child: Column(
                children: [
                  Ink.image(
                    image: const NetworkImage(
                        'https://uxwing.com/wp-content/themes/uxwing/download/weather/weather-icon.png'),
                    height: 100,
                    width: 100,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(width: 20),
                  const Text(
                    'Weather',
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
            InkWell(
              splashColor: Colors.black26,
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=>ProtfolioApp()));
              },
              child: Column(
                children: [
                  Ink.image(
                    image: const NetworkImage(
                        'https://static.thenounproject.com/png/1002261-200.png'),
                    height: 100,
                    width: 100,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(width: 20),
                  const Text(
                    'Portfolio',
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
            InkWell(
              splashColor: Colors.black26,
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=>const QuizApp()));
              },
              child: Column(
                children: [
                  Ink.image(
                    image: const NetworkImage(
                        'https://static.vecteezy.com/system/resources/previews/018/766/186/non_2x/quiz-guess-social-media-icon-in-flat-style-faq-illustration-on-isolated-background-help-button-sign-business-concept-vector.jpg'),
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 20),
                  const Text(
                    'QuiZ app',
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
