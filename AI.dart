import 'package:flutter/material.dart';

class ai_page extends StatefulWidget {
  const ai_page({super.key});

  @override
  State<ai_page> createState() => _ai_pageState();
}

class _ai_pageState extends State<ai_page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "AI Page",

      home: Scaffold(
        appBar: AppBar(title: Text("AI"),
        backgroundColor: Colors.grey,),
        body:Container(
                  color: Colors.black,

             child: Column(
              
              children: [

               Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Container( 
                    padding: EdgeInsets.fromLTRB(0, 0, 30, 0),
                    height: 899,
                    width: 900,
                    child:
                    Image(image: NetworkImage("https://images.unsplash.com/photo-1677442136019-21780ecad995?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8QUl8ZW58MHx8MHx8fDA%3D"),
                    fit: BoxFit.fill,
                    )
                   ),
                   SizedBox(
                   child: Container(
                    padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                       
                      
                       Text("What is AI  " ,style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),),
                        
                        SizedBox(
                          width: 900,
                          child: Text("Artificial intelligence (AI) is the intelligence of machines or software, as opposed to the intelligence of humans or animals. It may also refer to the corresponding field of study, which develops and studies intelligent machines, or to the intelligent machines themselves. AI technology is widely used throughout industry, government and science. Some high-profile applications are: advanced web search engines (e.g., Google Search), recommendation systems (used by YouTube, Amazon, and Netflix), understanding human speech (such as Google Assistant, Siri, and Alexa), self-driving cars (e.g., Waymo), generative and creative tools (ChatGPT and AI art), and superhuman play and analysis in strategy games (such as chess and Go).[1] Artificial intelligence was founded as an academic discipline in 1956.[2] The field went through multiple cycles of optimism[3][4] followed by disappointment and loss of funding,[5][6] but after 2012, when deep learning surpassed all previous AI techniques,[7] there was a vast increase in funding and interest. The various sub-fields of AI research are centered around particular goals and the use of particular tools. The traditional goals of AI research include reasoning, knowledge representation, planning, learning, natural language processing, perception, and support for robotics.[a] General intelligence (the ability to complete any task performable by a human) is among the field's long-term goals.[8] To solve these problems, AI researchers have adapted and integrated a wide range of problem-solving techniques, including search and mathematical optimization, formal logic, artificial neural networks, and methods based on statistics, operations research, and economics.[b] AI also draws upon psychology, linguistics, philosophy, neuroscience and many other fields.",
                          style:TextStyle(fontSize: 19,fontWeight: FontWeight.bold,
                          color: Colors.white

                          ) ,
                          ),
                        
                        ),
                        SizedBox(height: 30,),

                            GestureDetector(onTap: () {
                            Navigator.pop(context);
                            },
                            child: Text("Go Back",style: TextStyle(
                              color: Colors.blue
                              ),)
                              ),
                       
                      ],
                    ),
                   ),)
                 ],
               
               ),
              ],
             ),
          ),
          ),
    );
  }
}