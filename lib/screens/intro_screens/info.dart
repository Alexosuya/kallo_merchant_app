import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app-localizations.dart';
import 'package:kallo_merchant_app/screens/intro_screens/final_info.dart';


class Information extends StatefulWidget {
  final String country;
  final String state;
  final String city;
  const Information({super.key, required this.country, required this.state, required this.city});

  @override
  State<Information> createState() => _InformationState();
}

class _InformationState extends State<Information> {
  late String _firstName;
  late String _lastName;
  late String _storeName;
  late String _storeAddress;
  late String _areaIn;
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _globalKey,
      child: Scaffold(
        backgroundColor: Colors.grey.shade50,
        appBar: AppBar(
          backgroundColor: Colors.grey.shade50,
          title: const Text('Sign up your store today!!',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 23,
            color: Colors.black
          ),
            textAlign: TextAlign.center,
          ),
        ),
        body:  SingleChildScrollView(
          child: Column(
            children: [
              const Center(
                child: Column(
                  children: [
                    Text('Please submit your details to get started.',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                        fontSize: 15
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text('Register and list your products for free.',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 18,),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Text('Your First Name ',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700
                        ),
                        ),
                        Text('*',
                        style: TextStyle(
                          color: Colors.red
                        ),
                        )
                      ],
                    ),
                    const SizedBox(height: 10,),

                    TextFormField(
                      onChanged: (v){
                        _firstName = v;
                      },
                      validator: (v){
                        if(v!.isEmpty){
                          return AppLocalizations.of(context)!.fieldMustNotBeEmpty;
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: 'Enter your first name (eg. John)',
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
                    const SizedBox(height: 10,),
                    const Row(
                      children: [
                        Text('Your Last Name ',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700
                          ),
                        ),
                        Text('*',
                          style: TextStyle(
                              color: Colors.red
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 10,),

                    TextFormField(
                      onChanged: (v){
                        _lastName = v;
                      },
                      validator: (v){
                        if(v!.isEmpty){
                          return AppLocalizations.of(context)!.fieldMustNotBeEmpty;
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: 'Enter your Last name (eg. Doe)',
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
                    const SizedBox(height: 10,),
                    const Row(
                      children: [
                        Text('Your Store Name ',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700
                          ),
                        ),
                        Text('*',
                          style: TextStyle(
                              color: Colors.red
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 10,),

                    TextFormField(
                      onChanged: (v){
                        _storeName = v;
                      },
                      validator: (v){
                        if(v!.isEmpty){
                          return AppLocalizations.of(context)!.fieldMustNotBeEmpty;
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: 'Enter the name of your store (eg. Kallo shopping mall)',
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
                    const SizedBox(height: 10,),
                    const Row(
                      children: [
                        Text('Your Store Address ',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700
                          ),
                        ),
                        Text('*',
                          style: TextStyle(
                              color: Colors.red
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 10,),

                    TextFormField(
                      onChanged: (v){
                        _storeAddress = v;
                      },
                      validator: (v){
                        if(v!.isEmpty){
                          return AppLocalizations.of(context)!.fieldMustNotBeEmpty;
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: 'Enter your store address',
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
                    const SizedBox(height: 10,),
                    const Row(
                      children: [
                        Text('Store Area ',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700
                          ),
                        ),
                        Text('*',
                          style: TextStyle(
                              color: Colors.red
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 10,),

                    TextFormField(
                      onChanged: (v){
                        _areaIn = v;
                      },
                      validator: (v){
                        if(v!.isEmpty){
                          return AppLocalizations.of(context)!.fieldMustNotBeEmpty;
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: 'Where is your store located?',
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
                   SizedBox(height: MediaQuery.of(context).size.height*0.1,),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('1/2')
                      ],
                    ),
                    GestureDetector(
                      onTap: (){
                        if(_globalKey.currentState!.validate()){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return FinalInformation(
                                country: widget.country,
                                state: widget.state,
                                city: widget.city,
                                firstName: _firstName,
                                lastName: _lastName,
                                storeName: _storeName,
                                storeAddress: _storeAddress,
                                areaIn: _areaIn
                            );
                          }));
                        }
                      },
                      child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width*0.4,
                        decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: const Border(
                              top: BorderSide(
                                color: Color(0xff7F78D8),
                              ),
                              bottom: BorderSide(
                                color: Color(0xff7F78D8),
                              ),
                              left: BorderSide(
                                color: Color(0xff7F78D8),
                              ),
                              right: BorderSide(
                                color: Color(0xff7F78D8),
                              ),
                            )
                        ),
                        child:  Center(
                          child: Text(AppLocalizations.of(context)!.carryOn,
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              color: Color(0xff7F78D8),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
