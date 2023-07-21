import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app-localizations.dart';
import 'package:phone_form_field/phone_form_field.dart';


class FinalInformation extends StatefulWidget {
  final String country;
  final String state;
  final String city;
  final String firstName;
  final String lastName;
  final String storeName;
  final String storeAddress;
  final String areaIn;
  const FinalInformation({super.key,
    required this.country,
    required this.state,
    required this.city,
    required this.firstName,
    required this.lastName,
    required this.storeName,
    required this.storeAddress,
    required this.areaIn
  });

  @override
  State<FinalInformation> createState() => _FinalInformationState();
}

class _FinalInformationState extends State<FinalInformation> {
  late String _email;
  late String _password;
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  bool _obscureText = true;
  PhoneNumber? phone;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              child: SizedBox(
                height: MediaQuery.of(context).size.height*0.75,
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Text('Your Store Phone Number ',
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
                    PhoneFormField(
                      key: Key('phone-field'),
                      controller: null,
                      initialValue: null,
                      shouldFormat: true,
                      defaultCountry: IsoCode.NG,
                      decoration:  InputDecoration(
                          hintText: 'Enter your phone number',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14),
                              borderSide: const BorderSide(
                                  color: Color(0xff7F78D8)
                              )
                          ),
                      ),

                      validator: PhoneValidator.validMobile(),
                      isCountryChipPersistent: true,
                      isCountrySelectionEnabled: true,
                      countrySelectorNavigator: const CountrySelectorNavigator.bottomSheet(),
                      showFlagInInput: true,
                      flagSize: 16,
                      autofillHints: const [AutofillHints.telephoneNumber],
                      enabled: true,
                      autofocus: false,
                      onChanged: (PhoneNumber? p){
                        setState(() {
                          phone = p;
                        });
                      },
                      // ... + other textfield params
                    ),
                    const SizedBox(height: 10,),
                    const Row(
                      children: [
                        Text('Your Store Email ',
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
                    Expanded(child: Container()),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('1/2')
                      ],
                    ),
                    Container(
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
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
