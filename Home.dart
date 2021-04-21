import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'إذا كان عليك إتخاذ قرار في موضوع يهمك هل ؟',
      'answers': [
        {'text': 'تتخذ القرار بجديه وسرعه', 'score': 3},
        {'text': 'تؤجل القرار لفترة قصيرة لدراسته جيدا', 'score': 2},
        {'text': 'تهمل الأمر ولا تبالي به', 'score': 1},
      ],
    },
    {
      'questionText': 'حين ترتكب خطأ مع صديقك هل ؟',
      'answers': [
        {'text': 'تعاقب نفسك بشكل قاسي وتعتذر فورا', 'score': 3},
        {'text': 'تنتظر عندما تهدأ وتعتذر', 'score': 2},
        {'text': 'لست أول من يخطئ وكل الناس تخطئ', 'score': 1},
      ],
    },
    {
      'questionText': 'إذا غضبت منك والدتك هل ؟',
      'answers': [
        {'text': 'مزاجك ينقلب ولا تستطيع إنجاز أي شئ', 'score': 3},
        {'text': 'تحاول إرضائها ثم تذهب لترى ما ورائك', 'score': 2},
        {'text': 'لا تهتم فاليوم عندك مشغول بحاجات أخرى', 'score': 1},
      ],
    },
    {
      'questionText': 'إذا علمت بمغادرة صديقك لمكان آخر ؟',
      'answers': [
        {'text': 'مزاجك ينقلب ولا تستطيع إنجاز أي شئ', 'score': 3},
        {'text': 'تحاول الثناء عليه لما تكن له من موده واحترام', 'score': 2},
        {'text': 'لا تهتم ', 'score': 1},
      ],
    },
    {
      'questionText': 'إذا طلب صديقك شيئا على حساب وقتك ؟',
      'answers': [
        {'text': 'تفعلها له حتى وإن سببت لك ضررا', 'score': 3},
        {'text': 'تحاول مساعدته على حسب قدرتك', 'score': 2},
        {'text': 'لا تهتم وترفض طلبه ', 'score': 1},
      ],
    },
    {
      'questionText': 'إذا اتصل بك صديقك وانت على موعد هل؟',
      'answers': [
        {
          'text': 'تطيل الحديث معه ولا تهتم لموعدك حتى وان كان مهما',
          'score': 3
        },
        {'text': 'تحاول إنهاء المكالمة بلباقه دون أن تؤذي شعوره', 'score': 2},
        {'text': 'لا ترد  ', 'score': 1},
      ],
    },
    {
      'questionText': 'إذاأخبرك صديقك بمشكلته هل ؟',
      'answers': [
        {'text': 'تتأثر له وتنزعج بشكل ملفت', 'score': 3},
        {'text': 'تتأثر جدا ولكن لا تبدي أي انفعال', 'score': 2},
        {'text': 'تعتبره أمرا عاديا ولا يستحق الإنفعال ', 'score': 1},
      ],
    },
    {
      'questionText': 'إذا تعرضت لموقف محرج أمام أصدقائك هل؟',
      'answers': [
        {'text': 'تغلق غرفتك عليك وتشعر بضيق شديد', 'score': 3},
        {'text': 'تحاول تهويين الأمر على نفسك', 'score': 2},
        {'text': '  لا تهتم فهو أمر الجميع معرض له ', 'score': 1},
      ],
    },
    {
      'questionText': 'إذا شاهدت مشهدا مؤثرا في التلفاز هل ؟',
      'answers': [
        {'text': 'تدمع عيناك وتتأثر بشده', 'score': 3},
        {'text': 'تدمع عيناك للحظه', 'score': 2},
        {'text': 'لا تتأثر ', 'score': 1},
      ],
    },
    {
      'questionText': 'إذاأردت التعرف على صديق جديد لا تعرفه هل ؟',
      'answers': [
        {'text': 'تبالغ له في مشاعرك وتظهر له مدى إرتياحك له', 'score': 3},
        {'text': 'تتصرف بتلقائيه وتكون صادقا في مشاعرك', 'score': 2},
        {
          'text': 'تهمل الأمر وإذا أراد هو صداقتك فليبدأ هو بالخطوة الأولى ',
          'score': 1
        },
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Emotional Test',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
        elevation: 0,
      ),

      body: _questionIndex < _questions.length
          ? Quiz(
              answerQuestion: _answerQuestion,
              questionIndex: _questionIndex,
              questions: _questions,
            )
          : Result(_totalScore, _resetQuiz),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
