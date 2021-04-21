import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore >= 24) {
      resultText =
          'أنت شخصيه عاطفيه جداذيادة عن اللزوم , لذا لا تأخذ كل الأمور على محمل الجديه المفرطه حتى لاتكون كتلة نار تنفجر في كل من يقترب منها ';
    } else if (resultScore >= 17 || resultScore <= 23) {
      resultText = 'أنت شخصيه عاطفية مثالية فأنت تمتلك إتزان عاطفي ونفسي كبير ';
    } else if (resultScore < 17) {
      resultText =
          'أنت شخصية متحجرة المشاعر وأنصحك بالإبتعاد عن التفكير السلبي وأخذ العبرة من الأخرين فحياتك مزيج بين الضحك والبكاء ';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Try again!'),
            onPressed: resetHandler,
            textColor: Colors.green[900],
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            color: Colors.grey[500],
          ),
        ],
      ),
    );
  }
}
