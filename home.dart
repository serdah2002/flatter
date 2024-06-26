


import 'package:flutter/material.dart';
import 'package:mid/AI.dart';
import 'package:mid/CS.dart';
import 'package:mid/CSS.dart';
import 'package:mid/SE.dart';
import 'package:mid/main.dart';
import 'package:mid/profile.dart';

class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:homePage()  
         
         );
  }
}

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: sidebar(),
        appBar: AppBar(
          title: 
          Center(child: Text("IT Majors")),
          backgroundColor: Color.fromARGB(255, 169, 160, 160),
          ),
          
        body: Container(
           decoration: BoxDecoration(
          image: DecorationImage(
            //image: NetworkImage("https://images.unsplash.com/photo-1555949963-ff9fe0c870eb?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjh8fGluZm9ybWF0aW9uJTIwdGVjaG5vbG9neXxlbnwwfHwwfHx8MA%3D%3D"),
            image: NetworkImage("https://images.unsplash.com/photo-1451187580459-43490279c0fa?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8aW5mb3JtYXRpb24lMjB0ZWNobm9sb2d5fGVufDB8fDB8fHww"),
            fit: BoxFit.cover,
          ),),
          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Column(
                  children: [
                    Text("IT ",style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold
                    ),),
                    SizedBox(height: 20,),
                    Container(
                      width: 800,
                      height: 300,
                      child: Text("Information technology (IT) is the use of any computers, storage, networking and other physical devices, infrastructure and processes to create, process, store, secure and exchange all forms of electronic data. Typically, IT is used in the context of business operations, as opposed to technology used for personal or entertainment purposes. The commercial use of IT encompasses both computer technology and telecommunications.The Harvard Business Review coined the term information technology to make a distinction between purpose-built machines designed to perform a limited scope of functions, and general-purpose computing machines that could be programmed for various tasks. As the IT industry evolved from the mid-20th century, computing capability increased, while device cost and energy consumption decreased, a cycle that continues today when new technologies emerge.",
                      style:TextStyle(
                        fontSize: 20,
                        color: Colors.white
                      ) ,),
                    ),
                    Container(
                      width: 800,
                      height: 492,
                      child: Column(
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Container(
                        alignment: Alignment.center,
                        height: 200,
                        width: 250,
                        decoration: BoxDecoration(
                          //border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: GestureDetector(
                            onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => cs_page(),
                                      ));
                            },
                            child: Image(
                                  image: NetworkImage("https://plus.unsplash.com/premium_photo-1685086785054-d047cdc0e525?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjV8fGNvbXB1dGVyJTIwc2NpZW5jZXxlbnwwfHwwfHx8MA%3D%3D9k="),
                                  fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        
                        ),
                        Text("CS",style: TextStyle(color: Colors.white),)
                                ],
                              ),
                  Column(
                    children: [
                      Container(
                            alignment: Alignment.center,
                            height: 200,
                            width: 250,
                            decoration: BoxDecoration(
                              //border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => se_page(),
                                      ));
                                },
                                child: Image(
                                  image: NetworkImage("https://images.unsplash.com/photo-1594729095022-e2f6d2eece9c?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8ODB8fHNvZnR3YXJlJTIwZW5naW5lZXJ8ZW58MHx8MHx8fDA%3D"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            
                            ),
                    Text("SE",style: TextStyle(color: Colors.white))
                    ],
                  ),
                        
                              ],
                          ),
                        Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Container(
                        alignment: Alignment.center,
                        height: 200,
                        width: 250,
                        decoration: BoxDecoration(
                          //border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: GestureDetector(
                            onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => css_page(),
                                      ));
                            },
                            child: Image(
                                  image: NetworkImage("https://images.unsplash.com/photo-1614064548237-096f735f344f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8Y3liZXIlMjBzZWN1cml0eXxlbnwwfHwwfHx8MA%3D%3D="),
                                  fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        
                        ),
                        Text("CSS",style: TextStyle(color: Colors.white))
                                ],
                              ),
                  Column(
                    children: [
                      Container(
                            alignment: Alignment.center,
                            height: 200,
                            width: 250,
                            decoration: BoxDecoration(
                              //border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => ai_page(),
                                      ));
                                },
                                child: Image(
                                  image: NetworkImage("https://images.unsplash.com/photo-1677442136019-21780ecad995?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8QUl8ZW58MHx8MHx8fDA%3D"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            
                            ),
                    Text("AI",style: TextStyle(color: Colors.white))
                    ],
                  ),
                        
                              ],
                          ),
                          
                        ],
                      ),
                      
                    )
                  ],
                )

            ],
          ),
        ),
      );
  }
}


 
 class sidebar extends StatefulWidget {
  const sidebar({super.key});

  @override
  State<sidebar> createState() => _sidebarState();
}

class _sidebarState extends State<sidebar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container( 
        padding: EdgeInsets.all(20),
        decoration: const BoxDecoration(gradient: LinearGradient(colors: [Colors.black,Colors.white])),
        child: ListView(
          children: [
             ListTile(
              leading: Icon(Icons.person),
                title: GestureDetector(
                      onTap: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                     },
                      child : Text("Login", style: TextStyle(
                          color: Colors.yellow,
                          
                      ),) ,),
                  
                
                trailing: Icon(Icons.arrow_forward),
                ),
                ListTile(
              leading: Icon(Icons.person),
                title: GestureDetector(
                      onTap: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage()));
                     },
                      child : Text("Sign Up", style: TextStyle(
                          color: Colors.yellow,
                          
                      ),) ,),
                  
                
                trailing: Icon(Icons.arrow_forward),
                ),
               ListTile(
              leading: Icon(Icons.person),
                title: GestureDetector(
                      onTap: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileApp()));
                     },
                      child : Text("Profile", style: TextStyle(
                          color: Colors.yellow,
                          
                      ),) ,),
                  
                
                trailing: Icon(Icons.arrow_forward),
                ),
            
          ],
        )

          
        ),
      
    );
  }
  
  }