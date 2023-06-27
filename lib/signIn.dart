import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'utils/routes.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  Color bgcolor = const Color(0xFF08db5c);
  bool valuefirst = false;
  bool _passwordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 130),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
          ),
          padding: const EdgeInsets.only(top: 21),
          child: Column(
            children: [
              const SizedBox(
                height: 120,
                //width: 390,
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Sign in",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "      \n Sign in with your email and password \n                          to continue",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                padding: const EdgeInsets.only(left: 23),
                alignment: Alignment.topLeft,
                child: const Text(
                  "Email/Phone number",
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
              ),
              Form(
                child: Container(
                    margin: const EdgeInsets.only(right: 20, left: 22),
                    padding: const EdgeInsets.only(top: 10),
                    child: TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      cursorColor: Colors.black,
                      decoration: const InputDecoration(
                        hintText: "Enter email or phone number",
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                      validator: (value) {
                        return value!.isEmpty
                            ? "User Name Can't be Empty"
                            : null;
                      },
                      style: const TextStyle(fontSize: 20),
                    )),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                padding: const EdgeInsets.only(left: 21),
                alignment: Alignment.topLeft,
                child: const Text(
                  "Password",
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
              ),
              Form(
                child: Container(
                    margin: const EdgeInsets.only(right: 20, left: 22),
                    padding: const EdgeInsets.only(top: 10),
                    child: TextFormField(
                      obscureText: !_passwordVisible,
                      textAlignVertical: TextAlignVertical.center,
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        hintText: "Enter password",
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        suffixIcon: GestureDetector(
                          child: IconButton(
                            icon: Icon(
                              _passwordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              setState(() {
                                _passwordVisible = !_passwordVisible;
                              });
                            },
                          ),
                        ),
                      ),
                      validator: (value) {
                        return value!.isEmpty ? "Set A Password" : null;
                      },
                      style: const TextStyle(fontSize: 20),
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.only(left: 20),
                alignment: Alignment.topLeft,
                child: Row(
                  children: [
                    Checkbox(
                      value: valuefirst,
                      onChanged: (bool? value) {
                        setState(() {
                          valuefirst = value!;
                        });
                      },
                    ),
                    // Padding(padding: EdgeInsets.only(left: 5)),
                    const Text(
                      "Remember me",
                      style: TextStyle(fontSize: 18),
                    ),
                    const Padding(padding: EdgeInsets.only(left: 40)),
                    const Text(
                      "Forgot password?",
                      style: TextStyle(color: Colors.redAccent, fontSize: 18),
                    )
                  ],
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 50)),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.landingscreen);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: bgcolor,
                  fixedSize: const Size(350, 40),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
                child: const Text("Sign In"),
              ),
              const Padding(padding: EdgeInsets.only(top: 20)),
              Container(
                margin: const EdgeInsets.only(left: 50, right: 50),
                child: Center(
                  child: Row(
                    children: [
                      const Text("Don't have any account?",
                          style: TextStyle(fontSize: 18)),
                      const Padding(padding: EdgeInsets.only(left: 10)),
                      GestureDetector(
                          child: Text(
                            "  Sign up",
                            style: TextStyle(color: bgcolor, fontSize: 19.0),
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, MyRoutes.signup);
                          })
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 95,
                  ),
                  Card(
                    elevation: 5,
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: const [
                          // BoxShadow(
                          //   color: Colors.black54,
                          //   offset: const Offset(3.0, 3.0),
                          //   blurRadius: 5.0,
                          // )
                        ],
                      ),
                      child: Image.network(
                          'https://i.ibb.co/MMpBmPK/Whats-App-Image-2021-11-23-at-9-09-15-PM.jpg'),
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Card(
                    elevation: 5.0,
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        // boxShadow: [
                        //   BoxShadow(
                        //     color: Colors.black54,
                        //     offset: const Offset(3.0, 3.0),
                        //     blurRadius: 4.0,
                        //   )
                        // ],
                      ),
                      child: Image.network(
                          'https://i.ibb.co/y6j9GJR/Whats-App-Image-2021-11-23-at-9-09-14-PM-1.jpg'),
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Card(
                    elevation: 5,
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        // boxShadow: [
                        //   BoxShadow(
                        //     color: Colors.black54,
                        //     offset: const Offset(3.0, 3.0),
                        //     blurRadius: 5.0,
                        //   )
                        // ],
                      ),
                      child: Image.network(
                          'https://i.ibb.co/z2051pT/Whats-App-Image-2021-11-23-at-9-09-40-PM.jpg'),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 80,
              )
            ],
          ),
        ),
      ),
    );
  }
}
