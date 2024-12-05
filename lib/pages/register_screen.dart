import 'package:chat_app/pages/chat_screen.dart';
import 'package:chat_app/pages/login_screen.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool obscureText = true;
  TextEditingController nameUser = new TextEditingController();
  TextEditingController emailUser = new TextEditingController();
  TextEditingController passUser = new TextEditingController();
  GlobalKey<FormState> formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        "https://a0.anyrgb.com/pngimg/466/1622/courage-get-5-user-login-flashed-prints-user-profile-home-page-login-avatar-user.png"),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: nameUser,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      labelText: "Name",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: mainColor,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          color: mainColor,
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) return "Name Is Required";
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: emailUser,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        labelText: "Email",
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: mainColor,
                            )),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: mainColor,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        )),
                    validator: (value) {
                      if (value!.isEmpty) return "Email Is Required";
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: passUser,
                    obscureText: obscureText,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.password),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              obscureText = !obscureText;
                            });
                          },
                          icon: Icon(Icons.remove_red_eye_rounded),
                        ),
                        labelText: "Password",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: mainColor,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: mainColor,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        )),
                    validator: (value) {
                      if (value!.isEmpty) return "Password Is Required";
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: mainColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(
                              builder: (context) {
                                return ChatScreen();
                              },
                            ));
                          }
                        },
                        child: Text(
                          "Register",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account ?",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(
                          onPressed: (() {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(
                              builder: (context) {
                                return LoginScreen();
                              },
                            ));
                          }),
                          child: Text(
                            "Login",
                          ))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
