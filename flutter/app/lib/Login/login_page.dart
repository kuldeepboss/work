import 'package:app/Signup/consts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatelessWidget{
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return  Scaffold(
      body: Container(
        height: double.maxFinite,
        decoration: BoxDecoration(gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [G1,G2],),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.all(size.height*0.030),
            child: OverflowBar(
              overflowAlignment: OverflowBarAlignment.center,
              overflowSpacing: size.height *0.014,
              children: [
                Image.asset(image1),
                Text("Welcome Back!",
                style: TextStyle(
                    fontWeight:FontWeight.w600,
                    fontSize: 15,
                  color: kWhiteColor.withOpacity(0.8)
                  ),
                ),
                const Text("Please , Log in.",
                  style: TextStyle(
                      fontWeight:FontWeight.w600,
                      fontSize: 25,
                      color: kWhiteColor
                  ),
                ),
                SizedBox(
                  height: size.height *0.020),
                  TextField(
                    keyboardType: TextInputType.text,
                    style: const TextStyle(color: kInputColor),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 25.0),
                      filled: true,
                      hintText: "Email",
                      prefixIcon:IconButton(
                        onPressed: (){},
                        icon: SvgPicture.asset(userIcon),
                      ),
                      fillColor: kWhiteColor,
                      border: OutlineInputBorder(
                       borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(37),
                      )
                    ),
                  ),
                  TextField(
                    obscureText: true,
                  keyboardType: TextInputType.text,
                  style: const TextStyle(color: kInputColor),
                  decoration: InputDecoration(
                   contentPadding: const EdgeInsets.symmetric(vertical: 25.0),
                   filled: true,
                   hintText: "password",
                   prefixIcon:IconButton(
                    onPressed: (){},
                     icon: SvgPicture.asset(KeyIcon),
                   ),
                   fillColor: kWhiteColor,
                   border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(37),
                      )
                    ),
                  ),
                CupertinoButton(
                  padding: EdgeInsets.zero,
                  child:Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                  height: size.height *0.080,
                  decoration: BoxDecoration(
                    color: kButtonColor,
                    borderRadius: BorderRadius.circular(37),
                     ),
                    child: const Text(
                        "Continue",
                      style: TextStyle(
                        color: kWhiteColor,
                        fontWeight: FontWeight.w700,
                         ),
                       ),
                     ),
                    onPressed: (){}
                  ),
                SizedBox(height: size.height * 0.014,),
                SvgPicture.asset("assets/icons/deisgn.svg"),
                SizedBox(height: size.height * 0.014,),
                CupertinoButton(
                    padding: EdgeInsets.zero,
                    child:Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: size.height *0.080,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 45,
                            spreadRadius: 0,
                            color: Color.fromRGBO(120, 37, 139, 0.25),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(38),
                        color: Color.fromRGBO(225, 225, 225, 0.28),
                      ),
                      child: const Text(
                        "Continue",
                        style: TextStyle(
                          color: kWhiteColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    onPressed: (){}
                ),
              ],
              ),
            ),
          ),
        ),
     );
  }
}