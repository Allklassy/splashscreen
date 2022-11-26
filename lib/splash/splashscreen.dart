import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {

  PageController _controller =PageController();
  bool onlastpage = false;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Stack(
        children: [PageView(
          controller: _controller,
          onPageChanged: (index){
            setState(() {
              onlastpage = (index ==2);
            });
          },
          children: [

            Container(alignment: Alignment.center,
            
            // ignore: sort_child_properties_last
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(40),
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    onTap: (() {}),
                    child: const Text("Skip", style: TextStyle(color: Colors.blue,
                      fontFamily: "Lato",
                      fontSize: 20
                    ),),
                  )
               ), 
               
               Container(
                 margin: const EdgeInsets.only( top: 50),
                height: 350,
               decoration: const BoxDecoration(
                  image: DecorationImage(
                  image: AssetImage('assets/images/girl.png'),
                   fit: BoxFit.contain )),
                   ),
                   Container(
                    padding:const EdgeInsets.only(left: 20, right: 20),
                    alignment: Alignment.center,
                    child: RichText(
                      maxLines: 2,
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.center,
                      text: const TextSpan(children: <TextSpan>[
                        TextSpan( text: 'Get the latest news from', 
                        style:TextStyle(
                          color: Colors.black, fontFamily: 'Lato',
                          fontSize: 30)),
                          TextSpan(text: ' reliable sources', style: 
                          TextStyle(color: Colors.blue,
                          fontFamily: 'Lato',
                          fontSize: 30) )]),
                    ),
                   )
                   ] 
                   ),
              
            ),
             Column(
              mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Container(padding: const EdgeInsets.all(40),
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    onTap: (){
                      
                    },
                     child: const Text("Skip", style: TextStyle(color: Colors.blue,
                      fontFamily: "Lato",
                      fontSize: 20),),),),
                      
                      Container(
                 margin: const EdgeInsets.only( top: 20),
                height: 350,
               decoration: const BoxDecoration(
                  image: DecorationImage(
                  image: AssetImage('assets/images/na.gif'),
                   fit: BoxFit.contain )),
                   ),
                   Container(
                    padding:const EdgeInsets.only(left: 20, right: 20),
                    alignment: Alignment.center,
                    child: RichText(
                      maxLines: 2,
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.center,
                      text: const TextSpan(children: <TextSpan>[
                        TextSpan( text: 'Get actual news from', 
                        style:TextStyle(
                          color: Colors.black, fontFamily: 'Lato',
                          fontSize: 30)),
                          TextSpan(text: ' around the world', style: 
                          TextStyle(color: Colors.blue,
                          fontFamily: 'Lato',
                          fontSize: 30) )]),
                    ),
                   )    
               ],
             ),
           Column(
              mainAxisAlignment: MainAxisAlignment.start,
               children: [Container(
                 margin: const EdgeInsets.only( top: 100),
                height: 400,
               decoration: const BoxDecoration(
                  image: DecorationImage(
                  image: AssetImage('assets/images/picone.png'),
                   fit: BoxFit.contain )),
                   ),
                   Container(
                    padding:const EdgeInsets.only(left: 20, right: 20),
                    alignment: Alignment.center,
                    child: RichText(
                      maxLines: 2,
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.center,
                      text: const TextSpan(children: <TextSpan>[
                        TextSpan( text: 'Sports, Politics, health', 
                        style:TextStyle(
                          color: Colors.black, fontFamily: 'Lato',
                          fontSize: 30)),
                          TextSpan(text: ' and more...', style: 
                          TextStyle(color: Colors.blue,
                          fontFamily: 'Lato',
                          fontSize: 30) )]),
                    ),
                   )    
               ],
             ),
          ],
        ),
        
            Container( margin: const EdgeInsets.only(top: 650),
              alignment:const Alignment(0, 0.8),
            child:Column(
              children: [
               
                SmoothPageIndicator(controller: _controller, count: 3,
                effect: SwapEffect(
                  activeDotColor: Colors.blueAccent,
                  dotColor: Colors.blueAccent.withOpacity(0.5),
                  dotHeight: 15,
                  dotWidth: 15
                ),),

                const SizedBox(
                  height: 25,
                ),
                 Container(alignment: Alignment.center ,
                 width: 300,
                 height: 38,
                 decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                 
                color: Colors.blue,),
                child:  Center(
                child: onlastpage ?
                 GestureDetector(
                  // onTap: () {
                  //  Navigator.pushReplacement(context,MaterialPageRoute(builder: ((context) {
                  //   return ();
                  //     })
                  //     )
                  //     );
                  // },
                
                   child: const Text('Get Started', style: 
                TextStyle(color: Colors.white,
                  fontSize: 18, )
                ),
                 ):
                 GestureDetector(
                  onTap: () {
                    _controller.nextPage(duration: 
                   const Duration(microseconds:500 ), curve: Curves.easeIn,);
                  },
                
                   child: const Text('Next', style: 
                TextStyle(color: Colors.white,
                  fontSize: 18, )
                ),
                 )))
              ],
              
            )
             
            ),
       
        ]
        )
          
     
        
    ) ; 
  }
  }
