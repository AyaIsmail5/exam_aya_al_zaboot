import 'package:exam_aya_al_zaboot/FireResponseClass.dart';
import 'package:exam_aya_al_zaboot/firebase_controller.dart';
import 'package:exam_aya_al_zaboot/firestore_controller.dart';
import 'package:exam_aya_al_zaboot/login.dart';
import 'package:exam_aya_al_zaboot/my_user.dart';
import 'package:exam_aya_al_zaboot/sph.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  late TextEditingController _emailTextController;
  late TextEditingController _passwordTextController;
   late TextEditingController _nameTextController;
  late TextEditingController _dateTextController;

  MyUser get user {
    MyUser myUser = MyUser();
    myUser.name = _nameTextController.text;
    myUser.id = SharedPrefHelper().getData();
    myUser.email = _emailTextController.text;
    myUser.password = _passwordTextController.text;
    return myUser;
  }


  @override
  void initState() {
    super.initState();
    _emailTextController = TextEditingController();
    _nameTextController = TextEditingController();
    _dateTextController = TextEditingController();
    _passwordTextController = TextEditingController();
  }

  @override
  void dispose() {
    _emailTextController.dispose();
    _passwordTextController.dispose();
     _nameTextController.dispose();
    _dateTextController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        
      ),

     body: ListView(
      children: [
        Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    '''Create new
Accout''',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                       ),
                  
                  )),
            ),

            SizedBox(height: 5,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, ),
              child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    '''Please type full information
below and we can create your
account
''',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Color(0xff8992A3),
                        fontSize: 16,
                       
                       ),
                  
                  )),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20,  vertical: 2),
              child: SizedBox(
                height: 50,
                child: TextField(
                  obscureText: false,
                  keyboardType: TextInputType.multiline,
                  controller: _nameTextController,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(20)),
                    hintText: "Full Name",
                    hintTextDirection: TextDirection.ltr,
                    hintStyle: TextStyle(
                      fontSize: 15,
                      color: Color(0xffC5CEE0),
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 2),
              child: SizedBox(
                height: 50,
                child: TextField(
                  obscureText: false,
                  keyboardType: TextInputType.multiline,
                  controller: _emailTextController,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(20)),
                    hintText: "Your Email",
                    hintTextDirection: TextDirection.ltr,
                    hintStyle: TextStyle(
                      fontSize: 15,
                      color: Color(0xffC5CEE0),
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 2),
              child: SizedBox(
                height: 50,
                child: TextField(
                  obscureText: true,
                  keyboardType: TextInputType.multiline,
                  controller: _passwordTextController,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    suffixIcon: Image(
                      image: AssetImage("assets/noeye.png"),
                      height: 26,
                      width: 26,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(20)),
                    hintText: "Password",
                    hintTextDirection: TextDirection.ltr,
                    hintStyle: TextStyle(
                      fontSize: 15,
                      color: Color(0xffC5CEE0),
                    ),
                  ),
                ),
              ),
            ),


            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 2),
              child: SizedBox(
                height: 50,
                child: TextField(
                  obscureText: false,
                  keyboardType: TextInputType.multiline,
                  controller: _dateTextController,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    suffixIcon: Image(
                      image: AssetImage("assets/Calendar.png"),
                      height: 26,
                      width: 26,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(20)),
                    hintText: "Date of Birth",
                    hintTextDirection: TextDirection.ltr,
                    hintStyle: TextStyle(
                      fontSize: 15,
                      color: Color(0xffC5CEE0),
                    ),
                  ),
                ),
              ),
            ),


            Padding(
                padding: const EdgeInsets.only(right: 20, left: 20, top: 30),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(343, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    shadowColor: Color(0xff000000),
                    backgroundColor: Color(0xffF3651F),
                  ),
                  onPressed: () async => await _performRegister(),
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: "manrope"),
                  ),
                ),
              ),


              SizedBox(height: 30,),

              Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                children: <Widget>[
                    Expanded(
                          child: Divider( color: Color(0xffF4F4F4),)
                    ),       

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Text("Or connect with", style: TextStyle(fontSize: 15, color: Color(0xff8992A3)),),
                    ),        

                    Expanded(
                          child: Divider(color: Color(0xffF4F4F4),)
                    ),
                ]
            ),
                        ),




                        Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CupertinoButton(
                      onPressed: () {},
                      padding: EdgeInsets.all(5),
                      child: Image.asset(
                       "assets/Apple.png",
                        width: 50,
                        height: 50,
                      )),
                  CupertinoButton(
                    onPressed: () {},
                    padding: EdgeInsets.only(left: 15),
                    child: Image.asset(
                      "assets/Facebook.png",
                      width: 50,
                      height: 50,
                    ),
                  ),

                  CupertinoButton(
                      onPressed: () {},
                      padding: EdgeInsets.all(5),
                      child: Image.asset(
                        "assets/Google.png",
                        width: 80,
                        height: 80,
                      )),
                ],
              ),


              
           


      ],
     ),
    );
  }

   Future<void> _performRegister() async {
    if (_checkData()) {
      await _register();
    }
  }

  bool _checkData() {
    if (_nameTextController.text.isNotEmpty &&
        _emailTextController.text.isNotEmpty &&
        _passwordTextController.text.isNotEmpty) {
      return true;
    }

    // showSnackBar(context:context, message: 'Enter required data!', error: true);
    return false;
  }

  Future<void> _register() async {
    FireResponseClass b = await FireBaseConteroller().rigester(email: _emailTextController.text,password: _passwordTextController.text);
    if(b.status){
      FireStoreController().newUser(user: user);
      Get.off(()=>LoginScreen());
    }
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(b.message)));
  }

}