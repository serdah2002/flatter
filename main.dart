import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:mid/home.dart';
import 'package:mid/profile.dart';
import 'firebase_options.dart';
import 'package:file_picker/file_picker.dart';
Future <void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(MyApp());
}


class Auth{
  final FirebaseAuth _auth= FirebaseAuth.instance;
  Future <void> sinInWithEmailAndPassword(
    {
      required String email, required String password,
    }
  ) async{
    await _auth.signInWithEmailAndPassword(
      email: email, 
      password: password
      );

  }
  Future <void> signUpWithEmailAndPassword(
    {
      required String email, required String password,
    }
  ) async{
    await _auth.createUserWithEmailAndPassword(
      email: email, 
      password: password
      );

  }

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/signup': (context) => SignupPage(),
        '/profile': (context) => ProfilePage(),
      },
      title: "My App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}



class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formKey = GlobalKey<FormState>();
  String? errorMessage = '';
  Widget _errorMessage() {
    return Text(
      errorMessage == '' ? '' : 'Umm! $errorMessage.',
      style: TextStyle(
        color: Colors.red[400],
      ),
    );
  }
FilePickerResult? _img;
Future<void> pickImage() async{
  FilePickerResult? result= await FilePicker.platform.pickFiles(
    type: FileType.image
  );
  if(result!= null){
    setState(() {
      _img= result;
    });
  }else{
    print("no file selected");
  }

}
  final TextEditingController emailController = TextEditingController();
  final TextEditingController fullnameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  
late var c;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
           body: Container(
          child: Form(
            key: _formKey,
          child: Row(
                children: [
                    _img == null ?
              IconButton(
                
                onPressed: (){
                pickImage();
                }, 
              
                icon: Icon(Icons.person ,color: Colors.purple,)
                )
                :
                IconButton(
                onPressed: (){
                pickImage();
                }, 
                
                icon: Image(image: MemoryImage(_img!.files.first.bytes!))
                ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(0, 200, 0, 0),
                       child:  Center(
                      child: Column(
                        
                        children: [
                          Text("Sign Up",style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold
                          ),),
                          
                          SizedBox(height: 40,),
                          
                          SizedBox(
                            width: 390,
                            child: TextFormField(      
                            controller: fullnameController,   
                             validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your Email';
                              }
                              return null;
                            },                
                            decoration: InputDecoration(
                              icon: Icon( Icons.person),
                          label: Text("Full Name",style: TextStyle(color: Colors.grey),

                          ),
                          
                            //fillColor: Colors.black,
                            enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2),
                            borderRadius: BorderRadius.all(Radius.circular(80)),   
                             ),
                            focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2, color:Colors.blue),
                            borderRadius: BorderRadius.all(Radius.circular(80)),   
                                                  ),
                                                  ),
                            ),
                          ),
                          SizedBox(height:20 ,),
                      
                        SizedBox(height:20 ,),
                                           SizedBox(
                            width: 390,
                            child: TextFormField(
                              controller: emailController,
                              validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your Email';
                              }
                              return null;
                            },             
                            decoration: InputDecoration(
                              icon: Icon( Icons.email_outlined),
                              
                          label: Text("Enter your email address",style: TextStyle(color: Colors.grey),
                          ),
                          
                            //fillColor: Colors.black,
                            enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2),
                            borderRadius: BorderRadius.all(Radius.circular(80)),   
                             ),
                            focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2, color:Colors.blue),
                            borderRadius: BorderRadius.all(Radius.circular(80)),   
                                                  ),
                                                  ),
                            ),
                          ),
        SizedBox(height:20 ,),
                          SizedBox(
                            width: 390,
                            child: TextFormField(
                               validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your Email';
                              }
                              return null;
                            },        
                            controller: passwordController,  
                              obscureText: true,                     
                            decoration: InputDecoration(
                              icon: Icon( Icons.password_rounded),
                              
                          label: Text("Enter Password",style: TextStyle(color: Colors.grey),
                          ),
                          
                            //fillColor: Colors.black,
                            enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2),
                            borderRadius: BorderRadius.all(Radius.circular(80)),   
                             ),
                            focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2, color:Colors.blue),
                            borderRadius: BorderRadius.all(Radius.circular(80)),   
                                                  ),
                                                  ),
                            ),
                          ),
 SizedBox(height:20 ,),
                         
                          

                      SizedBox(height: 50,),
                      Container(
                        padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                      width: 360,
                      height: 50,
                       child: ElevatedButton(
                       style: ElevatedButton.styleFrom(                     
                        primary: Colors.black, // Background color
                        ),
                        
                        onPressed: (){
                           if (_formKey.currentState?.validate() ?? false) {
                    // Create a RegistrationData instance with the entered values

                

                    // Now you can use the registrationData object as needed
                    _handleSignUp();
                  }
                        },
                        child: Text("Sign Up" ,style: TextStyle(color: Colors.white),)
                        ),
                     ),
                        ],
                      )
                       ),
                  
                  )),
                  Expanded(
                    flex: 1,
                    child: Container(
                      
                      child:  Center(
                          child: Column(
                           children: [
                            Container(
                             width: 1000,
                             height: 955,
                              decoration: const BoxDecoration(
                               image: DecorationImage(
                                  image: NetworkImage("https://images.unsplash.com/photo-1526374965328-7f61d4dc18c5?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTB8fGluZm9ybWF0aW9uJTIwdGVjaG5vbG9neXxlbnwwfHwwfHx8MA%3D%3D"),                                  
                                  
                                   fit: BoxFit.cover
                                  ),
                            ),
                            ),
                       
                           ],
                          ),
                          
                      ),
                    ),
                  ),
                  
                ],
              ),
            ),
)
    );
  }

  Future<void> _handleSignUp() async {
    try{
      await Auth().signUpWithEmailAndPassword(
        email: emailController.text, 
        password: passwordController.text
        ).whenComplete(() {
          Future.delayed(Duration(seconds: 3)).then((value) {
            UserDetails user= UserDetails(
            fullName: fullnameController.text, 
            email: emailController.text, 
            password: passwordController.text, 
            photourl: photourl);
          print("registered success");
          var userid= Auth()._auth.currentUser!.uid;
          userref.child("users").child(userid).set(user.toMap()).whenComplete(() {
            print("user added to database");
            Navigator.pushNamed(context, "/profile");
          });
          });
          
        });

    } on FirebaseAuthException catch (e){
      print(e.toString());
    }
  }

  final DatabaseReference userref= FirebaseDatabase.instance.reference();
}
var photourl="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYM-EGcVo86EANXlbWe33sG8GzYd9M6qj6wvNR9RGrQofR2Kmkx4gqgB7ivNShaXYIw60&usqp=CAU";

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String? errorMessage = '';
  Widget _errorMessage() {
    return Text(
      errorMessage == '' ? '' : 'Umm! $errorMessage.',
      style: TextStyle(
        color: Colors.red[400],
      ),
    );
  }
bool? value1 =true  ;

  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Container(
          key: _formKey,
          child:Form(
            key: _formKey,
          
          child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(0, 300, 0, 0),
                       child:  Center(
                      child: Column(
                        
                        children: [
                          Text("Welcome",style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold
                          ),),
                          
                          SizedBox(height: 40,),
                          
                          SizedBox(
                            width: 300,
                            child: TextFormField(                
                              controller: _controllerEmail,
                        validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your Email';
                  }
                  return null;
                },
                          
                            decoration: InputDecoration(
                          label: Text("Enter your email address",style: TextStyle(color: Colors.grey),
                          ),
                          
                            //fillColor: Colors.black,
                            enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2),
                            borderRadius: BorderRadius.all(Radius.circular(80)),   
                             ),
                            focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2, color:Colors.blue),
                            borderRadius: BorderRadius.all(Radius.circular(80)),   
                                                  ),
                                                  ),
                                                  
                            ),
                          ),
                          SizedBox(height:20 ,),
                          SizedBox(
                            width: 300,
                            child: TextFormField(
                              controller: _controllerPassword,
                            validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your Email';
                  }
                  return null;
                },
                          
                          obscureText: true,                     
                            decoration: InputDecoration(
                          label: Text("Enter Password",style: TextStyle(color: Colors.grey),
                          ),
                          
                            //fillColor: Colors.black,
                            enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2),
                            borderRadius: BorderRadius.all(Radius.circular(80)),   
                             ),
                            focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2, color:Colors.blue),
                            borderRadius: BorderRadius.all(Radius.circular(80)),   
                                                  ),
                                                  ),
                            ),
                          ),


                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Checkbox(
                              value: value1,
                               onChanged: ( val){
                              setState(() {
                                value1 = val ;
                              });
                            }),
                            Text("Remember me"), 
                            Text("                     Forget Password?"),
                            ],
                        ),
                        SizedBox(height:60 ,),
                        
                 ElevatedButton(
                  style: ElevatedButton.styleFrom(
                        side: const BorderSide
                        (
                        width: 2, 
                        color: Colors.purple 
                          ),                     
                        primary: Colors.purple, // Background color
                        ),
                
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _handleSignin();
                  }
                },
                
                child: const Text('Sign In', style: TextStyle(color: Colors.white),
              ),),
              
                    SizedBox(height: 50,)         ,          
                        
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("don't have account?  "),
                            GestureDetector(onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupPage() ));  
                            },
                            child: Text("Sign up",style: TextStyle(
                              color: Colors.blue
                              ),)
                              ),
                          ],
                        )
                        ],
                      )
                       ),
                  
                  )),
                  Expanded(
                    flex: 1,
                    child: Container(
                      child:  Center(
                          child: Column(
                           children: [
                            Container(
                             width: 1000,
                             height: 955,
                              decoration: const BoxDecoration(
                               image: DecorationImage(
                                  image: NetworkImage("https://images.unsplash.com/photo-1526374965328-7f61d4dc18c5?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTB8fGluZm9ybWF0aW9uJTIwdGVjaG5vbG9neXxlbnwwfHwwfHx8MA%3D%3D"),                                  
                                   fit: BoxFit.cover
                                  ),
                            ),
                            ),

                           ],
                          ),
                      ),
                    ),
                  ),
                  
                ],
              ),
            ),
),
        );
  }

  Future<void> _handleSignin() async {
    try{
      await Auth().sinInWithEmailAndPassword(
        email: _controllerEmail.text, 
        password: _controllerPassword.text
        );
        print("Logged in Successfully");
        Navigator.push(context, MaterialPageRoute(builder: (context)=>homePage()));
    } on FirebaseAuthException catch(e){
      print(e.message);
    }
    
  }
}

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  UserDetails? user;

Future<void> fetchUserData() async {
  String userid= Auth()._auth.currentUser!.uid;
UserDetails? usr= await FirebaseService().getUserDetails(userid);
if(usr != null){
setState(() {
  user= usr;
});
}else{
  print("user not available");
}
}

  @override
  Widget build(BuildContext context) {
    fetchUserData();
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text('Profile Page'),
        ),
        body: 
        user == null?
        Text("Data Not Found")
        : 
        ListView(
            children: [
              SizedBox(height: 40,),
              CircleAvatar(
                backgroundImage: NetworkImage(user!.photourl),
                radius: 50,
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                    Text("The email is : ${user!.email} ", textScaleFactor: 1.5,),
              Text("The password is: ${user!.password}", textScaleFactor: 1.5,),
              Text("Full Name is: ${user!.fullName}", textScaleFactor: 1.5,)
            
                ],
              ),
            ],
          ),
            
          
      
    );
  }
}

class FirebaseService{
  Future<UserDetails?> getUserDetails(String useruid) async{
        try{
          DatabaseReference refh= FirebaseDatabase.instance.ref().child("users");
          DatabaseEvent event= await refh.child(useruid).once();
          if(event.snapshot.value != null){
            Map<dynamic, dynamic> snapdata= event.snapshot.value as dynamic;
            return UserDetails.fromMap(snapdata as Map<dynamic, dynamic>);
          }else{
            return null;
          }
        } catch (e){
          print(e.toString());
        }
       return null; 
  }
}


class UserDetails{
  String email;
  String password;
  String fullName;
  String photourl;
  UserDetails({
    required this.fullName, 
    required this.email,
    required this.password,
    required this.photourl
    });

    Map<dynamic, dynamic> toMap(){
      return {
        "email":email,
        "password":password,
        "fullName": fullName,
        "photourl":photourl
      };
    }
    factory UserDetails.fromMap(Map<dynamic, dynamic> map){
      return UserDetails(
        email: map["email"],
        password: map["password"],
        fullName: map["fullName"],
        photourl: map["photourl"]
      );
    }
}

