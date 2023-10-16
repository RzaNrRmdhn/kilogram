import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kilogram/models/post_model.dart';

class ListPostScreen extends StatelessWidget {
  const ListPostScreen({super.key});

  @override
  Widget build(BuildContext context) {

    int count = getPostDummyData.length;

    return Scaffold(
      backgroundColor: const Color(0xffF6F8FB),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset('assets/images/logo.png'), 
                const SizedBox(height: 20.0),             
                SizedBox(
                  width: double.infinity,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: count,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index){
                      return InkWell(
                        onTap: (){},
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              color: Colors.white,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 20,
                                        backgroundImage: NetworkImage(getPostDummyData[index].profilePhotoUrl),
                                      ),
                                      const SizedBox(width: 10),
                                      Text(
                                        getPostDummyData[index].name,
                                        style: TextStyle(
                                          fontFamily: GoogleFonts.poppins().fontFamily,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w500
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(height: 10.0),
                                  Image.network(getPostDummyData[index].photoUrl),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          IconButton(
                                            onPressed: (){}, 
                                          icon: const Icon(Icons.favorite_border)
                                          ),
                                          IconButton(
                                            onPressed: (){}, 
                                          icon: const Icon(Icons.chat_bubble_outline)
                                          ),
                                          IconButton(
                                            onPressed: (){}, 
                                          icon: const Icon(Icons.send_outlined)
                                          ),
                                        ],
                                      ),
                                      IconButton(
                                          onPressed: (){}, 
                                        icon: const Icon(Icons.bookmark_border)
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(height: 10.0)
                          ],
                        ),
                      );
                    }
                  )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}