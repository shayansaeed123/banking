import 'package:country_picker/country_picker.dart';
import 'package:datepicker_dropdown/datepicker_dropdown.dart';
import 'package:flutter/material.dart';

import '../repo/colors.dart';
import '../repo/widgets/button.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../repo/widgets/text_field.dart';

class AddCardScreen extends StatefulWidget {
  const AddCardScreen({super.key});

  @override
  State<AddCardScreen> createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {
  String phoneCode = '+92';
  final name = TextEditingController();
  final cardNumber = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final phone = TextEditingController();
  final address = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 1;
    final height = MediaQuery.of(context).size.height * 1;
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.arrow_back_ios),
        actions: [
          InkWell(
            onTap: (){

            },
            child: Icon(Icons.settings),
          ),
          SizedBox(width:width*0.03,),
        ],
      ),
      drawer: Drawer(),
      body: Container(
        width: width,
        height: height*0.9,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: height*0.02,),
            SvgPicture.asset(
              '/images/card.svg',
              alignment: Alignment.center,
              height: height*0.2,
              width: width*0.8,
              fit: BoxFit.cover,
            ),
            // Icon(Icons.,color: AppColors.iconColor2,size: 150,),
            SizedBox(height: height*0.04,),
            Container(
              height: height*0.04,
              child: TextFiledWidget(
                controller: name,
                textHint: 'YOUR NAME',
                textAlign: TextAlign.start,
                textInputType: TextInputType.text,
                obscureChara: '*',
                obscure: false,
                border: 4,
              ),
            ),
            SizedBox(height: height*0.02,),
            Container(
              height: height*0.04,
              child: TextFiledWidget(
                controller: cardNumber,
                textHint: 'CARD NUMBER',
                textAlign: TextAlign.start,
                textInputType: TextInputType.text,
                obscureChara: '*',
                obscure: false,
                border: 4,
              ),
            ),
            SizedBox(height: height*0.02,),
            Container(
                width: width*0.8,
                // height: height*0.02,
                child: Text('EXPIRED DATE', style: Theme.of(context).textTheme.titleSmall!.copyWith(color: AppColors.borderColor,fontSize: 15),)),
            Container(
              height: height*0.05,
              padding: EdgeInsets.symmetric(horizontal: width*0.1,vertical: height*0.0),
              child: DropdownDatePicker(
                inputDecoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: height*0.0),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.mainColor)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4))), // optional
                isDropdownHideUnderline: true, // optional
                isFormValidator: true, // optional
                startYear: 1900, // optional
                endYear: 2040, // optional
                width: width*0.00, // optional
                // selectedDay: 1, // optional
                // selectedMonth: 10, // optional
                // selectedYear: 1993, // optional
                onChangedDay: (value) => print('onChangedDay: $value'),
                onChangedMonth: (value) => print('onChangedMonth: $value'),
                onChangedYear: (value) => print('onChangedYear: $value'),
              ),
            ),
            SizedBox(height: height*0.02,),
            Container(
              height: height*0.04,
              child: TextFiledWidget(
                controller: password,
                textHint: 'PASSWORD',
                textAlign: TextAlign.start,
                textInputType: TextInputType.text,
                obscureChara: '*',
                obscure: true,
                border: 4,
              ),
            ),
            SizedBox(height: height*0.02,),
            Container(
                width: width*0.8,
                // height: height*0.02,
                child: Text('PHONE NUMBER', style: Theme.of(context).textTheme.titleSmall!.copyWith(color: AppColors.borderColor,fontSize: 15),)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: height*0.04,
                  width: width*0.1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: Colors.grey,width: 2),
                  ),
                  child: InkWell(
                      onTap: (){
                        showCountryPicker(
                            context: context,
                          countryListTheme: CountryListThemeData(
                            flagSize: 25,
                            backgroundColor: Colors.white,
                            textStyle: TextStyle(fontSize: 16, color: Colors.blueGrey),
                            bottomSheetHeight: 500, // Optional. Country list modal height
                            //Optional. Sets the border radius for the bottomsheet.
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                            ),
                            //Optional. Styles the search field.
                            inputDecoration: InputDecoration(
                              labelText: 'Search',
                              hintText: 'Start typing to search',
                              prefixIcon: const Icon(Icons.search),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: const Color(0xFF8C98A8).withOpacity(0.2),
                                ),
                              ),
                            ),
                          ),
                          onSelect: (Country country) {
                            print('Select country: ${country.displayName}');
                            phoneCode = country.phoneCode.toString();
                            setState(() {

                            });

                          },
                        );
                      },
                      child: Text(phoneCode.toString(),textAlign: TextAlign.center, style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.black,fontSize: 15),))
                ),
                Container(
                  height: height*0.04,
                  child: TextFiledWidget(
                    fieldWidth: 0.7,
                    controller: password,
                    textHint: 'ENTER YOUR NUMBER',
                    textAlign: TextAlign.start,
                    textInputType: TextInputType.text,
                    obscureChara: '*',
                    obscure: false,
                    border: 4,
                  ),
                ),
              ],
            )
            // SizedBox(height: height*0.02,),
            // Container(
            //   height: height*0.04,
            //   child: TextFiledWidget(
            //     controller: phone,
            //     textHint: 'PHONE NUMBER',
            //     textAlign: TextAlign.start,
            //     textInputType: TextInputType.text,
            //     obscureChara: '*',
            //     obscure: false,
            //     border: 4,
            //   ),
            // ),
            // SizedBox(height: height*0.02,),
            // Container(
            //   width: width * 0.8,
            //   child: TextFormField(
            //     controller: address,
            //     textAlign: TextAlign.start,
            //     keyboardType: TextInputType.text,
            //     maxLines: 5,
            //     decoration: InputDecoration(
            //       border: OutlineInputBorder(borderRadius: BorderRadius.circular(4),borderSide: BorderSide(width: 2)),
            //       enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(4),borderSide: BorderSide(color: AppColors.borderColor,width: 2)),
            //       hintText: 'YOUR ADDRESS',
            //       contentPadding: EdgeInsets.only(left: width*0.02,top: height*0.02),
            //       focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(4),borderSide: BorderSide(color: AppColors.enableBorder,width: 2)),
            //     ),
            //   ),
            // ),
            // SizedBox(height: height*0.05,),
            // ButtonWidget(
            //   onTap: (){},
            //   text: 'SAVE CHANGES',
            //   buttonTextColor: AppColors.whiteButtonColor,
            //   btnWidth: width*0.4,
            // )
          ],
        ),
      ),
    );
  }
}
