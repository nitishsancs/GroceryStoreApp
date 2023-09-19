// import 'package:flutter/material.dart';

// import '../components/my_button.dart';
// import '../components/my_textfield.dart';

// class RegisterPage extends StatelessWidget {
//   RegisterPage({super.key});

//   // text editing controllers
//   final usernameController = TextEditingController();
//   final passwordController = TextEditingController();

//   // sign user in method
//   void signUserUp() {}

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const SizedBox(height: 50),

//               // logo
//               const Icon(
//                 Icons.lock,
//                 size: 100,
//               ),

//               const SizedBox(height: 50),

//               // welcome back, you've been missed!
//               const Text(
//                 'Welcome back you\'ve been missed!',
//                 style: TextStyle(
//                   color: Color.fromARGB(255, 0, 0, 0),
//                   fontSize: 16,
//                 ),
//               ),

//               const SizedBox(height: 25),

//               // username textfield
//               MyTextField(
//                 controller: usernameController,
//                 hintText: 'Username',
//                 obscureText: false,
//               ),

//               const SizedBox(height: 10),

//               // password textfield
//               MyTextField(
//                 controller: passwordController,
//                 hintText: 'Password',
//                 obscureText: true,
//               ),

//               const SizedBox(height: 10),

//               // forgot password?
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     Text(
//                       'Forgot Password?',
//                       style: TextStyle(color: Colors.grey[600]),
//                     ),
//                   ],
//                 ),
//               ),

//               const SizedBox(height: 40),

//               // sign in button
//               MyButton(
//                 onTap: signUserUp,
//               ),

//               const SizedBox(height: 20),

//               // or continue with
//               // Padding(
//               //   padding: const EdgeInsets.symmetric(horizontal: 25.0),
//               //   child: Row(
//               //     children: [
//               //       Expanded(
//               //         child: Divider(
//               //           thickness: 0.5,
//               //           color: Colors.grey[400],
//               //         ),
//               //       ),
//               //       Padding(
//               //         padding: const EdgeInsets.symmetric(horizontal: 10.0),
//               //         child: Text(
//               //           'Or continue with',
//               //           style: TextStyle(color: Colors.grey[700]),
//               //         ),
//               //       ),
//               //       Expanded(
//               //         child: Divider(
//               //           thickness: 0.5,
//               //           color: Colors.grey[400],
//               //         ),
//               //       ),
//               //     ],
//               //   ),
//               // ),

//               // const SizedBox(height: 50),

//               // // google + apple sign in buttons
//               // const Row(
//               //   mainAxisAlignment: MainAxisAlignment.center,
//               //   children: [
//               //     // google button
//               //     SquareTile(imagePath: 'lib/images/google.png'),

//               //     SizedBox(width: 25),

//               //     // apple button
//               //     SquareTile(imagePath: 'lib/images/apple.png')
//               //   ],
//               // ),

//               // const SizedBox(height: 50),

//               // not a member? register now
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     'Not a member?',
//                     style: TextStyle(color: Colors.grey[700]),
//                   ),
//                   const SizedBox(width: 4),
//                   const Text(
//                     'Register now',
//                     style: TextStyle(
//                       color: Colors.blue,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:groceryapp/components/my_button%20copy.dart';
import '../components/my_textfield.dart';
// import 'package:nitchu/components/my_button.dart';
// import 'package:nitchu/components/my_textfield.dart';
// import 'package:nitchu/components/square_tile.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // text editing controllers
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  // sign user in method
  void signUserUp() async {
    // show loading cirlce
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    // try sign in
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email');
      } else if (e.code == 'wrong-password') {
        print('Wrong password!');
      }
    }

    //pop the loading circlee
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // const SizedBox(height: 10),

                //  big logo
                Padding(
                  padding: const EdgeInsets.only(
                    left: 100.0,
                    right: 100.0,
                    top: 0,
                    bottom: 10,
                  ),
                  child: Image.asset(
                    'lib/images/avocado.png',
                    height: 150,
                    width: 150,
                    fit: BoxFit.contain,
                  ),
                ),

                const SizedBox(height: 20),

                // welcome back, you've been missed!
                const Text(
                  'Create an Account with us!',
                  style: TextStyle(
                    color: Color.fromARGB(255, 94, 94, 94),
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                  ),
                ),

                const SizedBox(height: 25),

                // username textfield
                MyTextField(
                  controller: emailController,
                  hintText: 'Email',
                  obscureText: false,
                ),

                const SizedBox(height: 10),

                // password textfield
                MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),

                const SizedBox(height: 10),

                // // forgot password?
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 25.0),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.end,
                //     children: [
                //       Text(
                //         'Forgot Password?',
                //         style: TextStyle(color: Colors.grey[600]),
                //       ),
                //     ],
                //   ),
                // ),

                const SizedBox(height: 40),

                // sign in button
                MyButtoncopy(
                  onTap: signUserUp,
                ),

                const SizedBox(height: 5),

                // or continue with
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 26),

                // // google + apple sign in buttons
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     Image.asset(
                //       'assets/google.png',
                //       height: 50,
                //       width: 50,
                //       fit: BoxFit.contain,
                //     ),
                //     const SizedBox(
                //       width: 50,
                //     ),
                //     Image.asset(
                //       'assets/apple.png',
                //       height: 50,
                //       width: 50,
                //       fit: BoxFit.contain,
                //     ),
                //   ],
                // ),

                // const SizedBox(height: 30),

                // not a member? register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already a user?',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
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
