import 'package:exam_aya_al_zaboot/FireResponseClass.dart';
import 'package:exam_aya_al_zaboot/firebase_controller.dart';
import 'package:exam_aya_al_zaboot/home_screen.dart';
import 'package:exam_aya_al_zaboot/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _emailTextController;
  late TextEditingController _passwordTextController;

  @override
  void initState() {
    super.initState();
    _emailTextController = TextEditingController();
    _passwordTextController = TextEditingController();
  }

  @override
  void dispose() {
    _emailTextController.dispose();
    _passwordTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              height: 30,
              width: double.infinity,
            ),
            Container(
              child: Image.asset(
                "assets/Logos.png",
                height: 70,
                width: 215,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Please login to use the app",
                    textAlign: TextAlign.start,
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                height: 58,
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
                    hintText: "Email or user name",
                    hintTextDirection: TextDirection.ltr,
                    hintStyle: TextStyle(
                      fontSize: 15,
                      color: Color(0xffC5CEE0),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                height: 58,
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
                    hintText: "Type password",
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
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: SizedBox(
                
                  width: double.infinity,
                  child: Text(
                    "Forgot password?",
                    textAlign: TextAlign.end,
                  )),
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
                  onPressed: () async => _performLogin(),
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


              SizedBox(height: 35,),

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


                        SizedBox(height: 20,),


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
              SizedBox(
              height: 10,
            ),

               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account? ",
                    style: TextStyle(
                        fontFamily: "poppins",
                        fontSize: 15,
                        color: Color(0xff8992A3)),),

                        CupertinoButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {
                           Get.to(() => SignUpScreen()) ;
                          },
                          child: Text("Sign Up",
                                              style: TextStyle(
                          fontFamily: "poppins",
                          fontSize: 15,
                          color: Color(0xffFF5A00),
                                              )),
                        )
                ],
              ),


              
          ],
        ),
      ),
    );
  }


   Future<void> _performLogin() async {
    if (_checkData()) {
      await _login();
    }
  }

  bool _checkData() {
    if (_emailTextController.text.isNotEmpty &&
        _passwordTextController.text.isNotEmpty &&
        _passwordTextController.text.length >= 6 &&
        _passwordTextController.text.length <= 30) {
      return true;
    }
    return false;
  }

  Future<void> _login() async {
    FireResponseClass b = await FireBaseConteroller().login(
        email: _emailTextController.text,
        password: _passwordTextController.text);
    if (b.status) {
      Get.offAll(() => HomeScreen());
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(b.message)));
    }
  }
}
