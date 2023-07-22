import 'package:country_picker_plus/country_picker_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app-localizations.dart';
import 'package:kallo_merchant_app/screens/intro_screens/info.dart';

import 'kallo_login_page.dart';

class Nationality extends StatefulWidget {

  const Nationality({Key? key,}) : super(key: key);

  @override
  State<Nationality> createState() => _NationalityState();
}

class _NationalityState extends State<Nationality> {
  final List<String> _allowedCountryCodes = [
    'US',
    'GB',
    'NG',
    'BR',
    'IN',
    'ZA',
    'TR',
    'RU',
    'PL',
    'JP',
    'AR',
    'DE',
    'EG',
    'FR',
    'VN',
    'IT',
    'ID',
    'MX',
    'KR',
    'ES',
    'CA'
  ]; // Add the country codes you want to allow
  String? countryValue;
  String? stateValue;
  String? cityValue;
  bool isRequired = true;
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.white, // Set your desired color here
      ),
    );
    return Form(
      key: _globalKey,
      child: Scaffold(
        backgroundColor: Colors.grey.shade50,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight:MediaQuery.of(context).size.height*0.28,
          elevation: 0,
          backgroundColor: Colors.grey.shade50,
          title: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/Kallo logo dark background zoomed in png.png')
                )
              ),
            )
          ),
        ),
        body:  Center(
          child: Column(
            children: [
               Text(AppLocalizations.of(context)!.selectCountry,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 21
              ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width*0.8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: const Border(
                    top: BorderSide(
                      color: Color(0xff161b22)
                    ),
                    left: BorderSide(
                        color: Color(0xff161b22)
                    ),
                    right: BorderSide(
                        color: Color(0xff161b22)
                    ),
                    bottom: BorderSide(
                        color: Color(0xff161b22)
                    ),
                  )
                ),
                child: CountryPickerPlus.country(
                  isRequired: isRequired,
                  searchHintText: "Search Country",
                  hintText: "Tap to Select Country",
                  bottomSheetDecoration: const CPPBSHDecoration(),
                  decoration: const CPPFDecoration(
                    padding: EdgeInsets.only(top: 14, left: 10),
                    showFlag: true,
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none
                  ),
                  searchDecoration: const CPPSFDecoration(),
                  onSelected: (value) {
                    setState(() {
                      countryValue = value;
                    });
                  },
                ),
              ),
              const SizedBox(height: 25,),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width*0.8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: const Border(
                      top: BorderSide(
                          color: Color(0xff161b22)
                      ),
                      left: BorderSide(
                          color: Color(0xff161b22)
                      ),
                      right: BorderSide(
                          color: Color(0xff161b22)
                      ),
                      bottom: BorderSide(
                          color: Color(0xff161b22)
                      ),
                    )
                ),
                child: CountryPickerPlus.state(
                  country: countryValue??'',
                  isRequired: isRequired,
                  searchHintText: "Search State",
                  hintText: "Tap to Select State",
                  bottomSheetDecoration: CPPBSHDecoration(),
                  decoration: const CPPFDecoration(
                      padding: EdgeInsets.only(top: 14, left: 10),
                      showFlag: true,
                      border: InputBorder.none,
                    focusedBorder: InputBorder.none
                  ),
                  searchDecoration: CPPSFDecoration(),
                  onSelected: (value) {
                    setState(() {
                      stateValue = value;
                    });
                  },
                ),
              ),
              const SizedBox(height: 25,),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width*0.8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: const Border(
                      top: BorderSide(
                          color: Color(0xff161b22)
                      ),
                      left: BorderSide(
                          color: Color(0xff161b22)
                      ),
                      right: BorderSide(
                          color: Color(0xff161b22)
                      ),
                      bottom: BorderSide(
                          color: Color(0xff161b22)
                      ),
                    )
                ),
                child: CountryPickerPlus.city(
                  country: countryValue??'',
                  state: stateValue??'',
                  isRequired: isRequired,
                  searchHintText: "Search City",
                  hintText: "Tap to Select City",
                  bottomSheetDecoration: CPPBSHDecoration(),
                  decoration: const CPPFDecoration(
                      padding: EdgeInsets.only(top: 14, left: 10),
                      showFlag: true,
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                  ),
                  searchDecoration: CPPSFDecoration(),
                  onSelected: (value) {
                    setState(() {
                      cityValue = value;
                    });
                  },
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.play_arrow_sharp, size: 24, color: Colors.grey.shade400,),
                  SizedBox(
                      width: 250,
                      child: Text(AppLocalizations.of(context)!.nationalityDesTwo,
                        style: TextStyle(
                            color: Colors.grey.shade500,
                            fontSize: 14,
                            //fontWeight: FontWeight.w500,
                          letterSpacing: 0.5
                        ),
                  ),
                  )
                ],
              )
            ],
          ),
        ),
        bottomSheet: Container(
          height: MediaQuery.of(context).size.height*0.24,
          color: Colors.grey.shade50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Column(
                children: [
                  GestureDetector(
                    onTap: (){
                      if(_globalKey.currentState!.validate()){
                        Navigator.pushReplacement(context, MaterialPageRoute(
                            builder: (context) => Information(country: countryValue!, state: stateValue!,city: cityValue!,)));
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
                        child: Text(AppLocalizations.of(context)!.letsGo,
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Color(0xff7F78D8),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 7,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(AppLocalizations.of(context)!.alreadyHaveAnAccount,
                      style: const TextStyle(
                        color: Colors.grey
                      ),
                      ),
                      TextButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return const KalloLoginPage();
                            }));
                          },
                          child: Text(AppLocalizations.of(context)!.logIn,
                            style: const TextStyle(
                                color: Color(0xff7F78D8)
                            ),
                          )
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
