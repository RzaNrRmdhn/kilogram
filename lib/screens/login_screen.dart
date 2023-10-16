import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController getPhone = TextEditingController();
  @override
  Widget build(BuildContext context) {

  double height =  MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xffF6F8FB),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset('assets/images/logo.png'),
                const SizedBox(height: 50.0),
                Align(
                  alignment: Alignment.centerLeft,
                  child: RichText(
                    text: TextSpan(
                      text: 'Phone Number',
                      style: TextStyle(
                        fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
                        color: Colors.black,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400
                      ),
                      children: [
                        TextSpan(
                          text: '*',
                          style: TextStyle(
                            fontFamily: GoogleFonts.poppins().fontFamily,
                            color: Colors.red,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400
                          )
                        ),
                      ],
                    ),    
                  ),
                ),
                TextField(
                  controller: getPhone,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.phone),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0))),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0))),
                    isDense: true,
                  ),
                ),
                SizedBox(height: height * .6),
                SizedBox(
                  width: double.infinity,
                  height: 50.0,
                  child: ElevatedButton(
                    onPressed: () {
                      if(isValid(getPhone.text.trim())){
                        Navigator.pushNamed(context, '/ListPost');
                      }else{
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Phone Number doesn\'t valid'),
                          ),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF2196F3),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                    child: Text(
                      'Continue',
                      style: TextStyle(
                        fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
                        fontWeight: FontWeight.w400, 
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool isValid(String numberPhone){
    if(numberPhone.isEmpty) return false;
    if(numberPhone.length != 12) return false;

    return true;
  }
}