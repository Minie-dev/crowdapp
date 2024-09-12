import 'package:crowdapp/features/home_pages/footer.dart';
import 'package:crowdapp/features/home_pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:crowdapp/constants/image_strings.dart';
import 'package:crowdapp/constants/sizes.dart';
import 'package:crowdapp/constants/text_string.dart';
import 'package:crowdapp/features/authentification/views/login/login_screen.dart';

const _mainColor = Color(0xFF1c77c3);

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(imgLogin),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        backgroundColor: _mainColor,
        body: Stack(    
          children: [
            Positioned(top: 70,left: 25, child: _buildTop()),
            Positioned(bottom: -4, child: _buildBottom(context))
          ],
        ),
      ),
    );
  }


  Widget _buildTop() {
    return const SizedBox(
      child: Column(
        children: [
          Text(welcome,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.white,
              ))
        ],
      ),
    );
  }

  Widget _buildBottom(context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(formBorder),
            topRight: Radius.circular(formBorder),
          )
        ),
        child: Form(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                Text(signin, style: GoogleFonts.montserrat(fontSize: 42, letterSpacing: -3, color: _mainColor, fontWeight: FontWeight.bold),),
                const SizedBox(height: 15),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: TextUser,
                    labelText: username,
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder()
                  ),
                ),
                const SizedBox(height: 15),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: TextEmail,
                    labelText: mail,
                    prefixIcon: Icon(Icons.mail),
                    border: OutlineInputBorder()
                  ),
                ),
                const SizedBox(height: 15),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: TextPassword,
                    labelText: Password,
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder()
                  ),
                ),
                const SizedBox(height: 15),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: _mainColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 16)
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Footer()));
                    }, child: Text(signin.toUpperCase(), style: GoogleFonts.montserrat(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white),),),
                ),
                const SizedBox(height: 15),
                Text(Continue, style: GoogleFonts.roboto(fontSize: 18, color: Colors.black),),
                const SizedBox(height: 15),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: _mainColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 16)
                    ),
                    onPressed: (){}, child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                        Image(image: AssetImage(imgGoogle),height: 35, ),
                        const SizedBox(width: 10,),
                        Text(Google.toUpperCase(), style: GoogleFonts.montserrat(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white),),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 15,),
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(ExistCompte, 
                        style: TextStyle(fontSize: 11,)
                      ),
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const Signup()));
                      }, 
                        child: const Text(Login, 
                          style: TextStyle(color:_mainColor,),
                        )
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        )
      ),
    );
  }
}
