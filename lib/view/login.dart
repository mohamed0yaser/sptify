import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:spotify/style/colors.dart';
import 'package:spotify/view/homepage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2.3,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: ColorConstants.primaryColor,
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(60),
                        bottomLeft: Radius.circular(60))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 70,
                      child: Image.asset('images/logo.png'),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'MIllions of songs, free on spotify',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Roboto',
                          fontStyle: FontStyle.normal),
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 32,
                          vertical: 40
                        ),
                        height: MediaQuery.of(context).size.height/1.7,
                        margin: const EdgeInsets.all(18),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const Text('Login Account',
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight:FontWeight.w500
                            ),
                            textAlign: TextAlign.center,
                            ),
                            const SizedBox(
                              height: 22,
                            ),
                            SizedBox(
                              height: 40,
                              child: Input(
                                hint: 'Email or Username', 
                                icon: Icons.email_outlined ,
                              )
                              ),
                              const SizedBox(height: 10,),
                              SizedBox(
                              height: 40,
                              child: Input(
                                  hint: 'Password',
                                  icon: Icons.visibility_outlined),
                            ),
                            SwitchListTile.adaptive(
                              value: true, 
                              onChanged: (value){},
                              contentPadding: const EdgeInsets.all(0),
                              title: Text('Remember me',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: ColorConstants.starterWhite)),
                              ),
                              MaterialButton(onPressed:()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomePage())),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(31)),
                              height: 40,
                              color: ColorConstants.primaryColor,
                              child: const Text(
                                'LOG IN', 
                                style: TextStyle(
                                  color: Colors.white, 
                                  fontSize: 13, 
                                  fontWeight: FontWeight.w700
                                  )
                                ) ,
                          ),
                          const SizedBox(height: 8,),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Divider(
                                    thickness: 1,
                                    height: 1,
                                    color: ColorConstants.starterWhite,
                                  ),
                                ),
                                const SizedBox(
                                    width: 12,
                                  ),
                                  Text('or',
                                      style: TextStyle(
                                          color: ColorConstants.starterWhite,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w700)),
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  Expanded(
                                    child: Divider(
                                      thickness: 1,
                                      height: 1,
                                      color: ColorConstants.starterWhite,
                                    ),
                                  ),
                          ],
                          ),
                          const SizedBox(
                                height: 15,
                              ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                    height: 40,
                                    child: Image.asset(
                                        'images/google+.png',height: 39,)),
                                const SizedBox(
                                  width: 16,
                                ),
                                SizedBox(
                                    height: 40,
                                    child: Image.asset(
                                        'images/facebook.png',
                                      height: 39,
                                    )),
                              ],
                            ),    
                          const SizedBox(height: 16,),
                            Text('Forget password?',
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: ColorConstants.starterWhite),
                              textAlign: TextAlign.center,),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Don’t have an account?', style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),),
                          const SizedBox(width: 20,),
                          Text('Sign up now', style: TextStyle(color: ColorConstants.primaryColor, fontWeight: FontWeight.w700),)
                        ],
                      ),
                      const SizedBox(height: 24,),

                      
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
class Input extends StatelessWidget {
  Input({
    Key? key, required this.hint, required this.icon,
  }) : super(key: key);

  String hint;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: hint,
        labelStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400
        ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(26),
      borderSide: BorderSide(
        color: ColorConstants.starterWhite
      )
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(26)),
      borderSide: BorderSide(color: ColorConstants.primaryColor)
    ),
    suffixIcon: Icon(icon)
      ),

    );
  }
}