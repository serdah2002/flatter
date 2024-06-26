import 'package:flutter/material.dart';

class cs_page extends StatefulWidget {
  const cs_page({super.key});

  @override
  State<cs_page> createState() => _cs_pageState();
}

class _cs_pageState extends State<cs_page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CS Page",

      home: Scaffold(

        appBar: AppBar(title: Text("CS"),
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
                    Image(image: NetworkImage("https://plus.unsplash.com/premium_photo-1685086785054-d047cdc0e525?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjV8fGNvbXB1dGVyJTIwc2NpZW5jZXxlbnwwfHwwfHx8MA%3D%3D9k="),
                    fit: BoxFit.fill,
                    )
                   ),
                   SizedBox(
                   child: Container(
                    padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                       
                      
                       Text("What is CS  " ,style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),),
                        
                        SizedBox(
                          width: 900,
                          child: Text("Computer science is the study of computation, information, and automation. Computer science spans theoretical disciplines (such as algorithms, theory of computation, and information theory) to applied disciplines (including the design and implementation of hardware and software).Though more often considered an academic discipline, computer science is closely related to computer programming.Algorithms and data structures are central to computer science. The theory of computation concerns abstract models of computation and general classes of problems that can be solved using them. The fields of cryptography and computer security involve studying the means for secure communication and for preventing security vulnerabilities. Computer graphics and computational geometry address the generation of images. Programming language theory considers different ways to describe computational processes, and database theory concerns the management of repositories of data. Human–computer interaction investigates the interfaces through which humans and computers interact, and software engineering focuses on the design and principles behind developing software. Areas such as operating systems, networks and embedded systems investigate the principles and design behind complex systems. Computer architecture describes the construction of computer components and computer-operated equipment. Artificial intelligence and machine learning aim to synthesize goal-orientated processes such as problem-solving, decision-making, environmental adaptation, planning and learning found in humans and animals. Within artificial intelligence, computer vision aims to understand and process image and video data, while natural language processing aims to understand and process textual and linguistic data. The fundamental concern of computer science is determining what can and cannot be automated. The Turing Award is generally recognized as the highest distinction in computer science.",
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