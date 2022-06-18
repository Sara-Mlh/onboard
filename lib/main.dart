import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/sign_in_screen.dart';

const backgroundcolor = Color(0xFFFFD54F);
const titleStyle = TextStyle(
    fontSize: 30, color: Color(0xFF01002f), fontWeight: FontWeight.bold);
const subtitleStyle = TextStyle(fontSize: 22/*, color: Color(0xFF88869f)*/);



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated onboarding essay',
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final pageController = new PageController(initialPage: 0);

  void nextPage(){
   pageController.nextPage(duration: const Duration(milliseconds: 200), curve: Curves.ease);
 } 


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      body: SafeArea(
        child: Container(
          child: PageView(
            controller: pageController,
            physics: NeverScrollableScrollPhysics(),
            children: [
              /******** FIRST SLIDE*******/
              Slide(
                slideImage : Image.asset('./images/People school bag.gif'),
                title:"Sécurité et controle ",
                subtitle : "Assuer la sécurité de ton enfant apartir de notre app lors de son deplacelmnt vers l'école",
                onNext : nextPage,
              ),
              /******** SECOND SLIDE*******/
              Slide(
                slideImage : Image.asset('./images/Location tracking.gif'),
                title:"Sécurité et controle ",
                subtitle : "Assuer la sécurité de ton enfant apartir de notre app lors de son deplacelmnt vers l'école",
                onNext : nextPage,
              ),
              /******** THURTH SLIDE*******/
              Slide(
                slideImage : Image.asset('./images/Mobile login.gif'),
                title:"Sécurité et controle ",
                subtitle : "Assuer la sécurité de ton enfant apartir de notre app lors de son deplacelmnt vers l'école",
                onNext : nextPage,
              ),
              Container(
                child: Center(child: FlatButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignInScreen()));
                  },
                  child: Container(color: Colors.white70,
                  child: Text("Next",style: titleStyle,),),
                )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Slide extends StatelessWidget {
  final Widget slideImage;
  final String title,subtitle;
  final VoidCallback onNext;

  const Slide({
    Key? key, required this.slideImage, required this.title, required this.subtitle, required this.onNext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            child: slideImage,
          ),
          Padding(padding: EdgeInsets.all(36),
           child: Column(children: [
               Text(
                 title,
                 style: titleStyle,
                 textAlign: TextAlign.center,),
               SizedBox(height: 25,),
               Text(subtitle,style: subtitleStyle,),
               SizedBox(height: 35,),
               ProgressButton(onNext: onNext,)
              ],
           ),
          ),
            GestureDetector(
              onTap: onNext,
              child: Text("skip",style: subtitleStyle,),),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
class ProgressButton extends StatelessWidget {
  final VoidCallback onNext;
  const ProgressButton({Key? key, required this.onNext}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      width: 75,

      child: Stack(

        children: [ Center(child: GestureDetector(
          onTap: onNext,
          child: Container(
            height: 60,
            width: 60,
            child: Center(
              child: SvgPicture.asset('./images/arrow.svg',width: 10,),
            ),
            decoration: BoxDecoration(
                color: Colors.grey ,borderRadius: BorderRadius.circular(99)),
          ),
         ),
         )],
      ),
    );
  }
}

