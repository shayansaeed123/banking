import 'package:banking/repo/widgets/button.dart';
import 'package:flutter/material.dart';

import '../repo/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List listValue1 = [
    'a subtree in which media ',
    'a subtree in which media ',
    'a queries resolve to the given data',
    'queries resolve to the given data',
    'queries resolve to the given data',
  ];
  final List listValue2 = [
    'Received payment',
    'transfer payment',
    'electricity bill',
    'gas bill payment',
    'transfer payment',
  ];
  final List listValue3 = [
    'Rs: 2,000',
    'Rs: 10,000',
    'Rs: 8,000',
    'Rs: 6,000',
    'Rs: 5,000',
  ];
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 1;
    final height = MediaQuery.of(context).size.height * 1;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          elevation: 0.0,
          actions: [
            InkWell(
              onTap: (){

              },
              child: Icon(Icons.settings),
            ),
            SizedBox(width:width*0.03,),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            scrollDirection: Axis.vertical,
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Drawer Header'),
              ),
              ListTile(
                title: const Text('Item 1'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: const Text('Item 2'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
            ],
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: height * 0.55,
              width: width,
              decoration: BoxDecoration(
                  color: AppColors.mainColor
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: height * 0.08,),
                  Icon(Icons.person_pin,color: AppColors.iconColor,size: 100,),
                  SizedBox(height: height * 0.02,),
                  Text("YOUR NAME", style: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColors.heading1,fontSize: 20),),
                  Text("Your-email@email.com", style: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColors.heading1,fontSize: 17),),
                  SizedBox(height: height * 0.02,),
                  Container(
                    width: width*0.65,
                    height: height*0.17,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: height * 0.015,),
                        Text("BALANCE", style: Theme.of(context).textTheme.bodySmall!.copyWith(color: AppColors.textColor2,fontSize: 18,fontWeight: FontWeight.w600),),
                        SizedBox(height: height * 0.01,),
                        Text("RS: 4,108.00", style: Theme.of(context).textTheme.titleLarge!.copyWith(color: AppColors.textColor3,fontSize: 25,fontWeight: FontWeight.bold),),
                        SizedBox(height: height * 0.007,),
                        ButtonWidget(
                            onTap: (){},
                            text: ('TRANSFER'),
                            btnWidth: width*0.45,
                          buttonTextColor: AppColors.whiteButtonColor,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: width,
              height: height*0.45,
              child: Column(
                children: [
                  SizedBox(height: height * 0.015,),
                  Text("LATEST TRANSACTIONS", style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: AppColors.textColor2,fontSize: 18,fontWeight: FontWeight.w400),),
                  Expanded(
                    child: ListView.builder(
                      itemCount: listValue1.length,
                        itemBuilder: (context, index) {
                        return ListTile(
                          leading: CircleAvatar(
                            backgroundColor: AppColors.mainColor,
                          ),
                          title: Text(listValue1![index].toString(),style: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColors.borderColor,fontSize: 16),),
                          subtitle: Text(listValue2![index].toString(),style: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColors.borderColor,fontSize: 16),),
                          trailing: Text(listValue3![index].toString(),style: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColors.borderColor,fontSize: 16),),
                        );
                        },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: height*0.02,horizontal: width*0.03),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('More >>',textAlign: TextAlign.right,
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: AppColors.textColor2,fontSize: 16,fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
