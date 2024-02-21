
import 'package:flutter/material.dart';
import 'package:toturial/pages/home_page.dart';


class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:30.0),
            child: Column (
              mainAxisAlignment: MainAxisAlignment.center, 
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
              //logo
              Padding(
                padding:  const EdgeInsets.all(5.0),
                child: Image.asset('lib/images/logo.png', height:280), 
                  
              ),
        
               //title 
                 const Text(
                  "ទិញពេជ្រដោយមានទំនុកចិត្ត",
                  style: TextStyle( 
                    fontWeight: FontWeight.bold,
                    fontSize:  23,
                  ),
                 ),
               //sub title
                 const  SizedBox(height:  0),
                 const Text(
                  "គ្រឿងអលង្កាពេជ្រសុទ្ធ ម៉ូតស្អាតៗទាន់សម័យ មានច្រើនជំរេីស",
                  style: TextStyle( 
                    fontWeight: FontWeight.bold, 
                    fontSize:  16, 
                    color: Colors.grey,
                  ),
                  textAlign:  TextAlign.center,
                 ),

               //start now buttom
              const  SizedBox(height:  20),

              GestureDetector (
                onTap: () => Navigator.push(
                  context, 
                  MaterialPageRoute( builder: (context) => const HomePage(),
                ),
              ),
              child: Container( 
                decoration:   BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(25)
                ),
                padding: const EdgeInsets.all(25),
                child: const Center(
                  child: Text("Shop Now",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                   ),
                  ),
                ),
               )
              ),
            ]),
          ),
        ),
    );
  }
}
