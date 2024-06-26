import 'package:flutter/material.dart';

class css_page extends StatefulWidget {
  const css_page({super.key});

  @override
  State<css_page> createState() => _css_pageState();
}

class _css_pageState extends State<css_page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CSS Page",

      home: Scaffold(
        appBar: AppBar(title: Text("CSS"),
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
                    Image(image: NetworkImage("https://images.unsplash.com/photo-1614064548237-096f735f344f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8Y3liZXIlMjBzZWN1cml0eXxlbnwwfHwwfHx8MA%3D%3D="),
                    fit: BoxFit.fill,
                    )
                   ),
                   SizedBox(
                   child: Container(
                    padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                       
                      
                       Text("What is CSS ?" ,style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),),
                        
                        SizedBox(
                          width: 900,
                          child: Text("Computer security, cyber security, digital security or information technology security (IT security) is the protection of computer systems and networks from attacks by malicious actors that may result in unauthorized information disclosure, theft of, or damage to hardware, software, or data, as well as from the disruption or misdirection of the services they provide. The field is significant due to the expanded reliance on computer systems, the Internet, and wireless network standards such as Bluetooth and Wi-Fi. Also, due to the growth of smart devices, including smartphones, televisions, and the various devices that constitute the Internet of things (IoT). Cybersecurity is one of the most significant challenges of the contemporary world, due to both the complexity of information systems and the societies they support. Security is of especially high importance for systems that govern large-scale systems with far-reaching physical effects, such as power distribution, elections, and finance.\nA vulnerability is a weakness in design, implementation, operation, or internal control. Most of the vulnerabilities that have been discovered are documented in the Common Vulnerabilities and Exposures (CVE) database. An exploitable vulnerability is one for which at least one working attack or exploit exists. Vulnerabilities can be researched, reverse-engineered, hunted, or exploited using automated tools or customized scripts.Various types of parties are vulnerable to cyber attacks, however different groups are likely to experience different types of attacks than others.In April 2023 the United Kingdom Department for Science, Innovation & Technology realised a report on cyber attacks over the last 12 months.[11] They surveyed 2,263 UK businesses, 1,174 UK registered charities and 554 education institutions. The research found that 32% of businesses and 24% of charities overall recall any breaches or attacks from the last 12 months. This figures were much higher for medium businesses (59%), large businesses (69%) and high-income charities with £500,000 or more in annual income (56%). Yet, although medium or large businesses are more often the victims, since larger companies have generally improved their security over the last decade, small and midsize businesses (SMBs) have also become increasing vulnerable as they often do not have advanced tools to defend the business. SMBs are most likely to be affected by malware, ransomware, phishing, man-in-the-middle attacks, and Denial-of Service (DoS) Attacks.",
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