import 'package:flutter/material.dart';

class se_page extends StatefulWidget {
  const se_page({super.key});

  @override
  State<se_page> createState() => _se_pageState();
}

class _se_pageState extends State<se_page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SE Page",
      home: Scaffold(
        appBar: AppBar(title: Text("SE"),
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
                    Image(image: NetworkImage("https://images.unsplash.com/photo-1594729095022-e2f6d2eece9c?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8ODB8fHNvZnR3YXJlJTIwZW5naW5lZXJ8ZW58MHx8MHx8fDA%3D"),
                    fit: BoxFit.fill,
                    )
                   ),
                   SizedBox(
                   child: Container(
                    padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                       
                      
                       Text("What is SE ?  " ,style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),),
                        
                        SizedBox(
                          width: 900,
                          child: Text("Software engineering is the branch of computer science that deals with the design, development, testing, and maintenance of software applications. Software engineers apply engineering principles and knowledge of programming languages to build software solutions for end users.Software engineers design and develop computer games, business applications, operating systems, network control systems, and middleware—to name just a few of the many career paths available. A career as a software engineer can be both fun and challenging with opportunities to work in almost any industry, including large and small businesses, government agencies, nonprofit organizations, healthcare facilities, and more. And as technology continues to evolve, the need for software developers continues to grow. Many companies are also shifting towards hiring software engineers who work from home, allowing for increased flexibility and more opportunities to enter the field.\nCareer opportunities in software engineering are driven by new technologies in automobiles, aviation, data management, telecommunications, factory control, robotics, defense, and security. Software engineers may develop computer games, business applications, operating systems, network control systems, and more. A bachelor's degree or higher is often required to work as a software engineer.\nMichigan Technological University's College of Computing is the first college in Michigan fully dedicated to computing, and one of only a few nationwide. Secure your future in software engineering with a degree from Michigan's flagship technological university",
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