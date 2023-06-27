import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/utils/routes.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

Color bg = const Color(0xFF08db5c);
bool _passwordVisible = false;

class _SignUpState extends State<SignUp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final dbRefUsers = FirebaseDatabase.instance.reference().child('Users');
  final dbRefCatagories =
      FirebaseDatabase.instance.reference().child('Catagories');
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        backgroundColor: bg,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          child: Container(
            height: h,
            width: w,
            margin: const EdgeInsets.only(top: 25.0),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
              color: Colors.white,
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 25.0,
                ),
                const Center(
                  child: Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Center(
                  child: Text(
                    "Sign up with your email and passworde",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                ),
                const Center(
                  child: Text(
                    "to continue",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                SizedBox(
                  width: w * 0.8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Name",
                        style: TextStyle(fontSize: 20.0, color: Colors.grey),
                      ),
                      TextFormField(
                          controller: nameController,
                          cursorColor: Colors.black,
                          style: const TextStyle(fontSize: 20.0),
                          decoration: const InputDecoration(
                            hintText: "Enter your name",
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.black)),
                          ),
                          validator: (value) {
                            return value!.isEmpty ? "name can't empty" : null;
                          }),
                      const SizedBox(
                        height: 25.0,
                      ),
                      const Text(
                        "Email/Phone number",
                        style: TextStyle(fontSize: 20.0, color: Colors.grey),
                      ),
                      TextFormField(
                          controller: phoneController,
                          cursorColor: Colors.black,
                          style: const TextStyle(fontSize: 20.0),
                          decoration: const InputDecoration(
                              hintText: "Enter email or phone number",
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.black))),
                          validator: (value) {
                            return value!.isEmpty
                                ? "email or phone can't empty"
                                : null;
                          }),
                      const SizedBox(
                        height: 25.0,
                      ),
                      const Text(
                        "Password",
                        style: TextStyle(fontSize: 20.0, color: Colors.grey),
                      ),
                      TextFormField(
                          controller: passwordController,
                          cursorColor: Colors.black,
                          obscureText: !_passwordVisible,
                          style: const TextStyle(fontSize: 20.0),
                          decoration: InputDecoration(
                            hintText: "Enter password",
                            focusedBorder: const UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.black)),
                            suffixIcon: IconButton(
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
                          validator: (value) {
                            return value!.isEmpty
                                ? "password can't empty"
                                : null;
                          }),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25.0,
                ),
                ElevatedButton(
                    onPressed: () {
                      dbRefCatagories.push().set({
                        "catagories": "Vegitables",
                        "details": "banana,brocoly",
                        "images":
                            "https://i.ibb.co/fpqqNS7/400-good-day-britannia-original-imafwh3rxpqqzzfy.jpg",
                        "status": "Active",
                        "veg": true,
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: bg,
                        fixedSize: Size(w * 0.8, 35),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )),
                const SizedBox(
                  height: 7.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account?",
                        style: TextStyle(fontSize: 18.0)),
                    GestureDetector(
                        child: Text(
                          "  Sign in",
                          style: TextStyle(color: bg, fontSize: 19.0),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, MyRoutes.signin);
                        })
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
