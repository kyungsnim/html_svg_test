import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html_svg/flutter_html_svg.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:fwfh_svg/fwfh_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(24.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50),
            Text('flutter_widget_from_html_core, fwfh_svg 패키지 사용한 경우 ',
                style: TextStyle(color: Colors.red, fontSize: 30)),
            HtmlWidget(
              '''
                <p>가나다라마바사
                  <span>
                    <span style="display:inline-block">
                      <svg width="150" height="150">
                        <rect width="150" height="150" x="0" y="0" />
                      </svg>
                      <b>아자차카타파하</b>
                      <text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"83.5\" y=\"18\">A B C D E F G</text>
                    </span>
                  </span>
                </p>
                <p>오른쪽 그림과 같이 세 직선
                  <span style="display:inline-block; vertical-align:middle; color:green;">
                    <span>
                      <svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:wrs=\"http://www.wiris.com/xml/mathml-extension\" height=\"23\" width=\"118\" wrs:baseline=\"18\" style=\"vertical-align: -5px; height: 23px; width: 118px;\"><text font-family=\"KaTeX_Main_Italic\" font-size=\"18\" font-style=\"italic\" text-anchor=\"middle\" x=\"5.5\" y=\"18\">a</text><text font-family=\"KaTeX_Main_Italic\" font-size=\"18\" font-style=\"italic\" text-anchor=\"middle\" x=\"14.5\" y=\"18\">x</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"29.5\" y=\"18\">+</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"44.5\" y=\"18\">2</text><text font-family=\"KaTeX_Main_Italic\" font-size=\"18\" font-style=\"italic\" text-anchor=\"middle\" x=\"53.5\" y=\"18\">y</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"68.5\" y=\"18\">−</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"83.5\" y=\"18\">8</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"97.5\" y=\"18\">=</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"112.5\" y=\"18\">0</text>
                      </svg>
                    </span>
                  </span>
                </p>
                ''',
//             <p>오른쪽 그림과 같이 세 직선</p><svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:wrs=\"http://www.wiris.com/xml/mathml-extension\" height=\"23\" width=\"118\" wrs:baseline=\"18\" style=\"vertical-align: -5px; height: 23px; width: 118px;\"><text font-family=\"KaTeX_Main_Italic\" font-size=\"18\" font-style=\"italic\" text-anchor=\"middle\" x=\"5.5\" y=\"18\">a</text><text font-family=\"KaTeX_Main_Italic\" font-size=\"18\" font-style=\"italic\" text-anchor=\"middle\" x=\"14.5\" y=\"18\">x</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"29.5\" y=\"18\">+</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"44.5\" y=\"18\">2</text><text font-family=\"KaTeX_Main_Italic\" font-size=\"18\" font-style=\"italic\" text-anchor=\"middle\" x=\"53.5\" y=\"18\">y</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"68.5\" y=\"18\">−</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"83.5\" y=\"18\">8</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"97.5\" y=\"18\">=</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"112.5\" y=\"18\">0</text></svg>,<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:wrs=\"http://www.wiris.com/xml/mathml-extension\" height=\"23\" width=\"40\" wrs:baseline=\"18\" style=\"vertical-align: -5px; height: 23px; width: 40px;\"><text font-family=\"KaTeX_Main_Italic\" font-size=\"18\" font-style=\"italic\" text-anchor=\"middle\" x=\"4.5\" y=\"18\">x</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"19.5\" y=\"18\">=</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"34.5\" y=\"18\">2</text></svg>,<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:wrs=\"http://www.wiris.com/xml/mathml-extension\" height=\"23\" width=\"40\" wrs:baseline=\"18\" style=\"vertical-align: -5px; height: 23px; width: 40px;\"><text font-family=\"KaTeX_Main_Italic\" font-size=\"18\" font-style=\"italic\" text-anchor=\"middle\" x=\"4.5\" y=\"18\">x</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"19.5\" y=\"18\">=</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"34.5\" y=\"18\">6</text></svg>및<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:wrs=\"http://www.wiris.com/xml/mathml-extension\" height=\"22\" width=\"11\" wrs:baseline=\"17\" style=\"vertical-align: -5px; height: 22px; width: 11px;\"><text font-family=\"KaTeX_Main_Italic\" font-size=\"18\" font-style=\"italic\" text-anchor=\"middle\" x=\"4.5\" y=\"17\">x</text></svg>축으로 둘러싸인 도형의 넓이가&nbsp;<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:wrs=\"http://www.wiris.com/xml/mathml-extension\" height=\"22\" width=\"11\" wrs:baseline=\"17\" style=\"vertical-align: -5px; height: 22px; width: 11px;\"><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"5.5\" y=\"17\">8</text></svg>일 때, 상수&nbsp;<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:wrs=\"http://www.wiris.com/xml/mathml-extension\" height=\"21\" width=\"12\" wrs:baseline=\"16\" style=\"vertical-align: -5px; height: 21px; width: 12px;\"><text font-family=\"KaTeX_Main_Italic\" font-size=\"18\" font-style=\"italic\" text-anchor=\"middle\" x=\"5.5\" y=\"16\">a</text></svg>의 값을 구하시오. (단,&nbsp;<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:wrs=\"http://www.wiris.com/xml/mathml-extension\" height=\"47\" width=\"74\" wrs:baseline=\"30\" style=\"vertical-align: -17px; height: 47px; width: 74px;\"><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"5.5\" y=\"30\">0</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"18.5\" y=\"30\">&lt;</text><text font-family=\"KaTeX_Main_Italic\" font-size=\"18\" font-style=\"italic\" text-anchor=\"middle\" x=\"32.5\" y=\"30\">a</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"46.5\" y=\"30\">&lt;</text><line stroke=\"#000000\" stroke-linecap=\"square\" stroke-width=\"1\" x1=\"57.5\" x2=\"70.5\" y1=\"23.5\" y2=\"23.5\"></line><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"64.5\" y=\"17\">3</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"64.5\" y=\"42\">4</text></svg>)&nbsp;</p><figure class=\"image image_resized\" style=\"width:79.87%;\"><img src=\"https://sprout-question-dev.s3.ap-northeast-2.amazonaws.com/question/스크린샷 2023-09-01 131693554090\"></figure>
              textStyle: TextStyle(
                fontFamily: 'NanumMyeongjo',
                fontSize: 18,
              ),
              factoryBuilder: () => MyWidgetFactory(),
            ),
            SizedBox(height: 50),
            Text(
                'flutter_html, flutter_html_svg, flutter_html_math 패키지 사용한 경우 ',
                style: TextStyle(color: Colors.red, fontSize: 30)),
            Html(
              data: '''
            <svg
  viewBox="0 0 300 100"
  xmlns="http://www.w3.org/2000/svg"
  stroke="red"
  fill="grey">
  <circle cx="50" cy="50" r="40" />
  <circle cx="150" cy="50" r="4" />

  <svg viewBox="0 0 10 10" x="200" width="100">
    <circle cx="5" cy="5" r="4" />
  </svg>
</svg>
            <p>오른쪽 그림과 같이 세 직선
                  <span>
                    <span style="display:inline-block">
                      <svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:wrs=\"http://www.wiris.com/xml/mathml-extension\" height=\"23\" width=\"118\" wrs:baseline=\"18\" style=\"vertical-align: -5px; height: 23px; width: 118px;\"><text font-family=\"KaTeX_Main_Italic\" font-size=\"18\" font-style=\"italic\" text-anchor=\"middle\" x=\"5.5\" y=\"18\">a</text><text font-family=\"KaTeX_Main_Italic\" font-size=\"18\" font-style=\"italic\" text-anchor=\"middle\" x=\"14.5\" y=\"18\">x</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"29.5\" y=\"18\">+</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"44.5\" y=\"18\">2</text><text font-family=\"KaTeX_Main_Italic\" font-size=\"18\" font-style=\"italic\" text-anchor=\"middle\" x=\"53.5\" y=\"18\">y</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"68.5\" y=\"18\">−</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"83.5\" y=\"18\">8</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"97.5\" y=\"18\">=</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"112.5\" y=\"18\">0</text>
                      </svg>
                    </span>
                  </span>
                </p>
            ''',
              extensions: [
                SvgHtmlExtension(),
              ],
            ),
            SizedBox(height: 50),
            Text('flutter_tex 패키지 사용한 경우 ',
                style: TextStyle(color: Colors.red, fontSize: 30)),
            TeXView(
              fonts: [
                TeXViewFont(
                    fontFamily: 'NanumMyeongjo',
                    src: 'assets/fonts/NanumMyeongjo.ttf')
              ],
              renderingEngine: const TeXViewRenderingEngine.katex(),
              child: TeXViewColumn(
                children: [
                  TeXViewGroupItem(
                    id: '1',
                    child: TeXViewDocument(
                      '''<p>오른쪽 그림과 같이 세 직선&nbsp;<span><span><svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:wrs=\"http://www.wiris.com/xml/mathml-extension\" height=\"23\" width=\"118\" wrs:baseline=\"18\" style=\"vertical-align: -5px; height: 23px; width: 118px;\"><text font-family=\"KaTeX_Main_Italic\" font-size=\"18\" font-style=\"italic\" text-anchor=\"middle\" x=\"5.5\" y=\"18\">a</text><text font-family=\"KaTeX_Main_Italic\" font-size=\"18\" font-style=\"italic\" text-anchor=\"middle\" x=\"14.5\" y=\"18\">x</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"29.5\" y=\"18\">+</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"44.5\" y=\"18\">2</text><text font-family=\"KaTeX_Main_Italic\" font-size=\"18\" font-style=\"italic\" text-anchor=\"middle\" x=\"53.5\" y=\"18\">y</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"68.5\" y=\"18\">−</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"83.5\" y=\"18\">8</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"97.5\" y=\"18\">=</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"112.5\" y=\"18\">0</text></svg></span></span>,&nbsp;<span><span><svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:wrs=\"http://www.wiris.com/xml/mathml-extension\" height=\"23\" width=\"40\" wrs:baseline=\"18\" style=\"vertical-align: -5px; height: 23px; width: 40px;\"><text font-family=\"KaTeX_Main_Italic\" font-size=\"18\" font-style=\"italic\" text-anchor=\"middle\" x=\"4.5\" y=\"18\">x</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"19.5\" y=\"18\">=</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"34.5\" y=\"18\">2</text></svg></span></span>,&nbsp;<span><span><svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:wrs=\"http://www.wiris.com/xml/mathml-extension\" height=\"23\" width=\"40\" wrs:baseline=\"18\" style=\"vertical-align: -5px; height: 23px; width: 40px;\"><text font-family=\"KaTeX_Main_Italic\" font-size=\"18\" font-style=\"italic\" text-anchor=\"middle\" x=\"4.5\" y=\"18\">x</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"19.5\" y=\"18\">=</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"34.5\" y=\"18\">6</text></svg></span></span>&nbsp;및&nbsp;<span><span><svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:wrs=\"http://www.wiris.com/xml/mathml-extension\" height=\"22\" width=\"11\" wrs:baseline=\"17\" style=\"vertical-align: -5px; height: 22px; width: 11px;\"><text font-family=\"KaTeX_Main_Italic\" font-size=\"18\" font-style=\"italic\" text-anchor=\"middle\" x=\"4.5\" y=\"17\">x</text></svg></span></span>축으로 둘러싸인 도형의 넓이가&nbsp;<span><span><svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:wrs=\"http://www.wiris.com/xml/mathml-extension\" height=\"22\" width=\"11\" wrs:baseline=\"17\" style=\"vertical-align: -5px; height: 22px; width: 11px;\"><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"5.5\" y=\"17\">8</text></svg></span></span>일 때, 상수&nbsp;<span><span><svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:wrs=\"http://www.wiris.com/xml/mathml-extension\" height=\"21\" width=\"12\" wrs:baseline=\"16\" style=\"vertical-align: -5px; height: 21px; width: 12px;\"><text font-family=\"KaTeX_Main_Italic\" font-size=\"18\" font-style=\"italic\" text-anchor=\"middle\" x=\"5.5\" y=\"16\">a</text></svg></span></span>의 값을 구하시오. (단,&nbsp;<span><span><svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:wrs=\"http://www.wiris.com/xml/mathml-extension\" height=\"47\" width=\"74\" wrs:baseline=\"30\" style=\"vertical-align: -17px; height: 47px; width: 74px;\"><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"5.5\" y=\"30\">0</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"18.5\" y=\"30\">&lt;</text><text font-family=\"KaTeX_Main_Italic\" font-size=\"18\" font-style=\"italic\" text-anchor=\"middle\" x=\"32.5\" y=\"30\">a</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"46.5\" y=\"30\">&lt;</text><line stroke=\"#000000\" stroke-linecap=\"square\" stroke-width=\"1\" x1=\"57.5\" x2=\"70.5\" y1=\"23.5\" y2=\"23.5\"></line><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"64.5\" y=\"17\">3</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"64.5\" y=\"42\">4</text></svg></span></span>)&nbsp;</p>''',
                      style: TeXViewStyle(
                        fontStyle: TeXViewFontStyle(
                          fontSize: 18,
                          fontFamily: 'NanumMyeongjo',
                        ),
                      ),
                    ),
                  ),
                  TeXViewGroupItem(
                    id: '2',
                    child: TeXViewDocument(
                      '''<p>오른쪽 그림과 같이 세 직선&nbsp;<span><span><svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:wrs=\"http://www.wiris.com/xml/mathml-extension\" height=\"23\" width=\"118\" wrs:baseline=\"18\" style=\"vertical-align: -5px; height: 23px; width: 118px;\"><text font-family=\"KaTeX_Main_Italic\" font-size=\"18\" font-style=\"italic\" text-anchor=\"middle\" x=\"5.5\" y=\"18\">a</text><text font-family=\"KaTeX_Main_Italic\" font-size=\"18\" font-style=\"italic\" text-anchor=\"middle\" x=\"14.5\" y=\"18\">x</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"29.5\" y=\"18\">+</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"44.5\" y=\"18\">2</text><text font-family=\"KaTeX_Main_Italic\" font-size=\"18\" font-style=\"italic\" text-anchor=\"middle\" x=\"53.5\" y=\"18\">y</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"68.5\" y=\"18\">−</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"83.5\" y=\"18\">8</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"97.5\" y=\"18\">=</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"112.5\" y=\"18\">0</text></svg></span></span>,&nbsp;<span><span><svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:wrs=\"http://www.wiris.com/xml/mathml-extension\" height=\"23\" width=\"40\" wrs:baseline=\"18\" style=\"vertical-align: -5px; height: 23px; width: 40px;\"><text font-family=\"KaTeX_Main_Italic\" font-size=\"18\" font-style=\"italic\" text-anchor=\"middle\" x=\"4.5\" y=\"18\">x</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"19.5\" y=\"18\">=</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"34.5\" y=\"18\">2</text></svg></span></span>,&nbsp;<span><span><svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:wrs=\"http://www.wiris.com/xml/mathml-extension\" height=\"23\" width=\"40\" wrs:baseline=\"18\" style=\"vertical-align: -5px; height: 23px; width: 40px;\"><text font-family=\"KaTeX_Main_Italic\" font-size=\"18\" font-style=\"italic\" text-anchor=\"middle\" x=\"4.5\" y=\"18\">x</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"19.5\" y=\"18\">=</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"34.5\" y=\"18\">6</text></svg></span></span>&nbsp;및&nbsp;<span><span><svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:wrs=\"http://www.wiris.com/xml/mathml-extension\" height=\"22\" width=\"11\" wrs:baseline=\"17\" style=\"vertical-align: -5px; height: 22px; width: 11px;\"><text font-family=\"KaTeX_Main_Italic\" font-size=\"18\" font-style=\"italic\" text-anchor=\"middle\" x=\"4.5\" y=\"17\">x</text></svg></span></span>축으로 둘러싸인 도형의 넓이가&nbsp;<span><span><svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:wrs=\"http://www.wiris.com/xml/mathml-extension\" height=\"22\" width=\"11\" wrs:baseline=\"17\" style=\"vertical-align: -5px; height: 22px; width: 11px;\"><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"5.5\" y=\"17\">8</text></svg></span></span>일 때, 상수&nbsp;<span><span><svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:wrs=\"http://www.wiris.com/xml/mathml-extension\" height=\"21\" width=\"12\" wrs:baseline=\"16\" style=\"vertical-align: -5px; height: 21px; width: 12px;\"><text font-family=\"KaTeX_Main_Italic\" font-size=\"18\" font-style=\"italic\" text-anchor=\"middle\" x=\"5.5\" y=\"16\">a</text></svg></span></span>의 값을 구하시오. (단,&nbsp;<span><span><svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:wrs=\"http://www.wiris.com/xml/mathml-extension\" height=\"47\" width=\"74\" wrs:baseline=\"30\" style=\"vertical-align: -17px; height: 47px; width: 74px;\"><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"5.5\" y=\"30\">0</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"18.5\" y=\"30\">&lt;</text><text font-family=\"KaTeX_Main_Italic\" font-size=\"18\" font-style=\"italic\" text-anchor=\"middle\" x=\"32.5\" y=\"30\">a</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"46.5\" y=\"30\">&lt;</text><line stroke=\"#000000\" stroke-linecap=\"square\" stroke-width=\"1\" x1=\"57.5\" x2=\"70.5\" y1=\"23.5\" y2=\"23.5\"></line><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"64.5\" y=\"17\">3</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"64.5\" y=\"42\">4</text></svg></span></span>)&nbsp;</p>''',
                      style: TeXViewStyle(
                        fontStyle: TeXViewFontStyle(
                          fontSize: 18,
                          fontFamily: 'NanumMyeongjo',
                        ),
                      ),
                    ),
                  ),
                  TeXViewGroupItem(
                    id: '3',
                    child: TeXViewDocument(
                      '''<p>오른쪽 그림과 같이 세 직선&nbsp;<span><span><svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:wrs=\"http://www.wiris.com/xml/mathml-extension\" height=\"23\" width=\"118\" wrs:baseline=\"18\" style=\"vertical-align: -5px; height: 23px; width: 118px;\"><text font-family=\"KaTeX_Main_Italic\" font-size=\"18\" font-style=\"italic\" text-anchor=\"middle\" x=\"5.5\" y=\"18\">a</text><text font-family=\"KaTeX_Main_Italic\" font-size=\"18\" font-style=\"italic\" text-anchor=\"middle\" x=\"14.5\" y=\"18\">x</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"29.5\" y=\"18\">+</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"44.5\" y=\"18\">2</text><text font-family=\"KaTeX_Main_Italic\" font-size=\"18\" font-style=\"italic\" text-anchor=\"middle\" x=\"53.5\" y=\"18\">y</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"68.5\" y=\"18\">−</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"83.5\" y=\"18\">8</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"97.5\" y=\"18\">=</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"112.5\" y=\"18\">0</text></svg></span></span>,&nbsp;<span><span><svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:wrs=\"http://www.wiris.com/xml/mathml-extension\" height=\"23\" width=\"40\" wrs:baseline=\"18\" style=\"vertical-align: -5px; height: 23px; width: 40px;\"><text font-family=\"KaTeX_Main_Italic\" font-size=\"18\" font-style=\"italic\" text-anchor=\"middle\" x=\"4.5\" y=\"18\">x</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"19.5\" y=\"18\">=</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"34.5\" y=\"18\">2</text></svg></span></span>,&nbsp;<span><span><svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:wrs=\"http://www.wiris.com/xml/mathml-extension\" height=\"23\" width=\"40\" wrs:baseline=\"18\" style=\"vertical-align: -5px; height: 23px; width: 40px;\"><text font-family=\"KaTeX_Main_Italic\" font-size=\"18\" font-style=\"italic\" text-anchor=\"middle\" x=\"4.5\" y=\"18\">x</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"19.5\" y=\"18\">=</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"34.5\" y=\"18\">6</text></svg></span></span>&nbsp;및&nbsp;<span><span><svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:wrs=\"http://www.wiris.com/xml/mathml-extension\" height=\"22\" width=\"11\" wrs:baseline=\"17\" style=\"vertical-align: -5px; height: 22px; width: 11px;\"><text font-family=\"KaTeX_Main_Italic\" font-size=\"18\" font-style=\"italic\" text-anchor=\"middle\" x=\"4.5\" y=\"17\">x</text></svg></span></span>축으로 둘러싸인 도형의 넓이가&nbsp;<span><span><svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:wrs=\"http://www.wiris.com/xml/mathml-extension\" height=\"22\" width=\"11\" wrs:baseline=\"17\" style=\"vertical-align: -5px; height: 22px; width: 11px;\"><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"5.5\" y=\"17\">8</text></svg></span></span>일 때, 상수&nbsp;<span><span><svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:wrs=\"http://www.wiris.com/xml/mathml-extension\" height=\"21\" width=\"12\" wrs:baseline=\"16\" style=\"vertical-align: -5px; height: 21px; width: 12px;\"><text font-family=\"KaTeX_Main_Italic\" font-size=\"18\" font-style=\"italic\" text-anchor=\"middle\" x=\"5.5\" y=\"16\">a</text></svg></span></span>의 값을 구하시오. (단,&nbsp;<span><span><svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:wrs=\"http://www.wiris.com/xml/mathml-extension\" height=\"47\" width=\"74\" wrs:baseline=\"30\" style=\"vertical-align: -17px; height: 47px; width: 74px;\"><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"5.5\" y=\"30\">0</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"18.5\" y=\"30\">&lt;</text><text font-family=\"KaTeX_Main_Italic\" font-size=\"18\" font-style=\"italic\" text-anchor=\"middle\" x=\"32.5\" y=\"30\">a</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"46.5\" y=\"30\">&lt;</text><line stroke=\"#000000\" stroke-linecap=\"square\" stroke-width=\"1\" x1=\"57.5\" x2=\"70.5\" y1=\"23.5\" y2=\"23.5\"></line><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"64.5\" y=\"17\">3</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"64.5\" y=\"42\">4</text></svg></span></span>)&nbsp;</p>''',
                      style: TeXViewStyle(
                        fontStyle: TeXViewFontStyle(
                          fontSize: 18,
                          fontFamily: 'NanumMyeongjo',
                        ),
                      ),
                    ),
                  ),
                  TeXViewGroupItem(
                    id: '4',
                    child: TeXViewDocument(
                      '''<p>오른쪽 그림과 같이 세 직선&nbsp;<span><span><svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:wrs=\"http://www.wiris.com/xml/mathml-extension\" height=\"23\" width=\"118\" wrs:baseline=\"18\" style=\"vertical-align: -5px; height: 23px; width: 118px;\"><text font-family=\"KaTeX_Main_Italic\" font-size=\"18\" font-style=\"italic\" text-anchor=\"middle\" x=\"5.5\" y=\"18\">a</text><text font-family=\"KaTeX_Main_Italic\" font-size=\"18\" font-style=\"italic\" text-anchor=\"middle\" x=\"14.5\" y=\"18\">x</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"29.5\" y=\"18\">+</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"44.5\" y=\"18\">2</text><text font-family=\"KaTeX_Main_Italic\" font-size=\"18\" font-style=\"italic\" text-anchor=\"middle\" x=\"53.5\" y=\"18\">y</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"68.5\" y=\"18\">−</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"83.5\" y=\"18\">8</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"97.5\" y=\"18\">=</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"112.5\" y=\"18\">0</text></svg></span></span>,&nbsp;<span><span><svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:wrs=\"http://www.wiris.com/xml/mathml-extension\" height=\"23\" width=\"40\" wrs:baseline=\"18\" style=\"vertical-align: -5px; height: 23px; width: 40px;\"><text font-family=\"KaTeX_Main_Italic\" font-size=\"18\" font-style=\"italic\" text-anchor=\"middle\" x=\"4.5\" y=\"18\">x</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"19.5\" y=\"18\">=</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"34.5\" y=\"18\">2</text></svg></span></span>,&nbsp;<span><span><svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:wrs=\"http://www.wiris.com/xml/mathml-extension\" height=\"23\" width=\"40\" wrs:baseline=\"18\" style=\"vertical-align: -5px; height: 23px; width: 40px;\"><text font-family=\"KaTeX_Main_Italic\" font-size=\"18\" font-style=\"italic\" text-anchor=\"middle\" x=\"4.5\" y=\"18\">x</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"19.5\" y=\"18\">=</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"34.5\" y=\"18\">6</text></svg></span></span>&nbsp;및&nbsp;<span><span><svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:wrs=\"http://www.wiris.com/xml/mathml-extension\" height=\"22\" width=\"11\" wrs:baseline=\"17\" style=\"vertical-align: -5px; height: 22px; width: 11px;\"><text font-family=\"KaTeX_Main_Italic\" font-size=\"18\" font-style=\"italic\" text-anchor=\"middle\" x=\"4.5\" y=\"17\">x</text></svg></span></span>축으로 둘러싸인 도형의 넓이가&nbsp;<span><span><svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:wrs=\"http://www.wiris.com/xml/mathml-extension\" height=\"22\" width=\"11\" wrs:baseline=\"17\" style=\"vertical-align: -5px; height: 22px; width: 11px;\"><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"5.5\" y=\"17\">8</text></svg></span></span>일 때, 상수&nbsp;<span><span><svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:wrs=\"http://www.wiris.com/xml/mathml-extension\" height=\"21\" width=\"12\" wrs:baseline=\"16\" style=\"vertical-align: -5px; height: 21px; width: 12px;\"><text font-family=\"KaTeX_Main_Italic\" font-size=\"18\" font-style=\"italic\" text-anchor=\"middle\" x=\"5.5\" y=\"16\">a</text></svg></span></span>의 값을 구하시오. (단,&nbsp;<span><span><svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:wrs=\"http://www.wiris.com/xml/mathml-extension\" height=\"47\" width=\"74\" wrs:baseline=\"30\" style=\"vertical-align: -17px; height: 47px; width: 74px;\"><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"5.5\" y=\"30\">0</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"18.5\" y=\"30\">&lt;</text><text font-family=\"KaTeX_Main_Italic\" font-size=\"18\" font-style=\"italic\" text-anchor=\"middle\" x=\"32.5\" y=\"30\">a</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"46.5\" y=\"30\">&lt;</text><line stroke=\"#000000\" stroke-linecap=\"square\" stroke-width=\"1\" x1=\"57.5\" x2=\"70.5\" y1=\"23.5\" y2=\"23.5\"></line><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"64.5\" y=\"17\">3</text><text font-family=\"KaTeX_Main\" font-size=\"18\" text-anchor=\"middle\" x=\"64.5\" y=\"42\">4</text></svg></span></span>)&nbsp;</p>''',
                      style: TeXViewStyle(
                        fontStyle: TeXViewFontStyle(
                          fontSize: 18,
                          fontFamily: 'NanumMyeongjo',
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
    ));
  }
}

class MyWidgetFactory extends WidgetFactory with SvgFactory {
  @override
  bool get svgAllowDrawingOutsideViewBox => true;
}
