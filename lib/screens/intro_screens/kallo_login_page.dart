import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app-localizations.dart';
import 'package:kallo_merchant_app/screens/intro_screens/nationality.dart';


class KalloLoginPage extends StatefulWidget {
  const KalloLoginPage({super.key});

  @override
  State<KalloLoginPage> createState() => _KalloLoginPageState();
}

class _KalloLoginPageState extends State<KalloLoginPage> {
  late String _email;
  late String _password;
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  bool _obscureText = true;

  // _login()async{
  //   EasyLoading.show();
  //   if(_globalKey.currentState!.validate()){
  //    String res = await _kalloSignUp.loginUsers(
  //         _email,
  //         _password,
  //      context
  //     );
  //    if(res != AppLocalizations.of(context)!.successfullyLoggedIn){
  //      EasyLoading.dismiss();
  //      snack(context, res);
  //    }else{
  //      EasyLoading.dismiss();
  //      SharedPreferences prefs = await SharedPreferences.getInstance();
  //      prefs.setBool('isFirstLaunch', false);
  //      snack(context, res);
  //      Navigator.pushReplacement(context, MaterialPageRoute(
  //          builder: (context) => const MainHome()));
  //    }
  //   }else{
  //     EasyLoading.dismiss();
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.white, // Set your desired color here
      ),
    );
    return  Form(
      key: _globalKey,
      child: Scaffold(
        backgroundColor: Colors.grey.shade50,
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.grey.shade50,
          title:  Center(
            child: SizedBox(
              height: 40,
              width: 40,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7)
                ),
                elevation: 5,
                shadowColor: const Color(0xff7F78D8).withOpacity(0.6),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(7),
                  child: Image.asset('assets/Kallo logo dark background zoomed in png.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ),
        body: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width*0.9,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(AppLocalizations.of(context)!.logIn,
                          style: const TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w700
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  TextFormField(
                    onChanged: (v){
                      _email = v;
                    },
                    validator: (v){
                      if(v!.isEmpty){
                        return AppLocalizations.of(context)!.fieldMustNotBeEmpty;
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: AppLocalizations.of(context)!.enterYourEmail,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: const BorderSide(
                              color: Color(0xff7F78D8)
                          )
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: const BorderSide(
                              color: Color(0xff7F78D8)
                          )
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: const BorderSide(
                              color: Color(0xff7F78D8)
                          )
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                    obscureText: _obscureText,
                    onChanged: (v){
                      _password = v;
                    },
                    validator: (v){
                      if (v!.isEmpty) {
                        return AppLocalizations.of(context)!.fieldMustNotBeEmpty;
                      }
                      return null; // Return null if validation passes
                    },
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: (){
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                          icon: _obscureText?const Icon(Icons.visibility):const Icon(Icons.visibility_off)
                      ),
                      hintText: AppLocalizations.of(context)!.enterYourPassword,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: const BorderSide(
                              color: Color(0xff7F78D8)
                          )
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: const BorderSide(
                              color: Color(0xff7F78D8)
                          )
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: const BorderSide(
                              color: Color(0xff7F78D8)
                          )
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.1,
                  ),
                  InkWell(
                    onTap: (){

                    },
                    child: Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width*0.5,
                      decoration: BoxDecoration(
                        color: const Color(0xff7F78D8),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(AppLocalizations.of(context)!.logIn,
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 7,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(AppLocalizations.of(context)!.doNotHaveAnAccount,
                        style: const TextStyle(
                            color: Colors.grey
                        ),
                      ),
                      TextButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return const Nationality();
                            }));
                          },
                          child: Text(AppLocalizations.of(context)!.signUp,
                            style: const TextStyle(
                                color: Color(0xff7F78D8)
                            ),
                          )
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
