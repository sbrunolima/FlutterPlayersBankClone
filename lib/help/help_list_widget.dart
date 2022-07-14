import 'package:flutter/material.dart';

import '../help/help_question_container_widget.dart';
import 'help_frequent_questions_screen.dart';

class HelpListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(FrequentQuestionsScreen.routeName);
            },
            child: HelpQuestionsWidget(
                'Como consulto o limite do meu cartão de crédito?'),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(FrequentQuestionsScreen.routeName);
            },
            child:
                HelpQuestionsWidget('Onde consigo ver todos os meus cartões?'),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(FrequentQuestionsScreen.routeName);
            },
            child:
                HelpQuestionsWidget('Em quanto tempo eu recebo o meu cartão?'),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(FrequentQuestionsScreen.routeName);
            },
            child: HelpQuestionsWidget(
                'Como consulto o limite do meu cartão de crédito?'),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
        ],
      ),
    );
  }
}
