import 'package:bmi_calculator/component/reusable_card.dart';
import 'package:bmi_calculator/screen/input_page.dart';
import 'package:flutter/material.dart';

import '../component/bottom_button.dart';
import '../constants.dart';

class ResultsPage extends StatelessWidget {
   ResultsPage({required this.bmiResult,required this.interpretation,required this.resultText});
   final String bmiResult;
   final String resultText;
   final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("YOUR RESULT"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
                alignment: Alignment.bottomLeft,
                child: Text("Your Result",style: kTitleTextStyle),
          )),
          Expanded(
            flex: 5,
              child: ReusableCard(
                  colour: kActiveCardColor,
                  onPress: (){},
                 cardChild: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Text(resultText,style: KresultTextStyle,),
                     Text(bmiResult,style: kBMITextStyle),
                     Text(interpretation,
                       style: kBodyTextStyle,
                       textAlign: TextAlign.center,
                     ),
                   ],
                 ),),


          ),
          BottomButton(ontap:  (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context)=>const InputPage())
            );
          },
            bottomTitle: "RE-CALCULATE",
          ),
        ],
      ),
    );
  }
}

