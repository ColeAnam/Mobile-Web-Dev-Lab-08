import 'package:flutter/material.dart';

class Wisdom extends StatefulWidget {
  const Wisdom({super.key});

  @override
  State<Wisdom> createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {

  int _index = 0;

  List quotes = [
    "The greatest glory in living lies not in never falling, but in rising every time we fall.",
    "The way to get started is to quit talking and begin doing.",
    "Your time is limited, so don't waste it living someone else's life. Don't be trapped by dogma - which is living with the results of other people's thinking.",
    "The future belongs to those who believe in the beauty of their dreams.",
    "If you look at what you have in life, you'll always have more. If you look at what you don't have in life, you'll never have enough.",
    "If you set your goals ridiculously high and it's a failure, you will fail above everyone else's success.",
    "You may say I'm a dreamer, but I'm not the only one. I hope someday you'll join us. And the world will live as one."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Center(
                child: Container(
                  width: 350,
                  height: 200,
                  margin: EdgeInsets.all(30.0),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(14.5)
                  ),
                  child: Center(child: Text(quotes[_index % quotes.length], 
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontStyle: FontStyle.italic,
                      fontSize: 16.5
                    ),
                  ))),
              ),
            ),
            Divider(thickness: 1.3,),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: TextButton.icon(
                onPressed: _showQuote, 
                style: TextButton.styleFrom(
                  backgroundColor: Colors.greenAccent.shade700
                ),
                icon: Icon(Icons.wb_sunny), 
                label: Text("Inspire me!",
                  style: TextStyle(color: Colors.white, fontSize: 18.8),
                )
              ),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }

  void _showQuote() {
    setState(() {
      _index += 1;
    });
    
  }
}