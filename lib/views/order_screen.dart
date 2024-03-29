import 'package:flutter/material.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  bool isVisible = true;
  String name = 'ACCEPT';
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(height*0.01),
            decoration: BoxDecoration(
              gradient: name == 'ACCEPT' ? LinearGradient(
                colors: [
                  Colors.red.shade700,
                  Colors.red.shade200
                ],
                begin: Alignment.centerLeft,
                end: Alignment.bottomRight,
                stops: [0.1,0.2]
              ) : LinearGradient(
                  colors: [
                    Colors.white,
                    Colors.white
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.bottomRight,
                  stops: [0.1,0.2]
              )
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('User Name: M Shakir', style: TextStyle(color: Colors.black45,fontSize: 20,fontWeight: FontWeight.bold),),
                    Text('New Order', style: TextStyle(color: Colors.black45,fontSize: 20,fontWeight: FontWeight.bold),),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Order Id: 14444', style: TextStyle(color: Colors.grey.shade700,fontSize: 16),),
                    Text('Total Amount: 300', style: TextStyle(color: Colors.grey.shade700,fontSize: 16),),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Order Type: Delivery', style: TextStyle(color: Colors.grey.shade700,fontSize: 16),),
                  ],
                ),
                SizedBox(height: height*0.04,),
                button(),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(height*0.01),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black26)
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('User Name: M Shakir', style: TextStyle(color: Colors.black45,fontSize: 20,fontWeight: FontWeight.bold),),
                    Text('New Order', style: TextStyle(color: Colors.black45,fontSize: 20,fontWeight: FontWeight.bold),),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Order Id: 14444', style: TextStyle(color: Colors.grey.shade700,fontSize: 16),),
                    Text('Total Amount: 300', style: TextStyle(color: Colors.grey.shade700,fontSize: 16),),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Order Type: Delivery', style: TextStyle(color: Colors.grey.shade700,fontSize: 16),),
                  ],
                ),
                SizedBox(height: height*0.04,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                        onPressed: (){}, child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4.0,vertical: 10.0),
                          child: Text('PREPARE',style: TextStyle(color: Colors.white)),
                        ),
                        style: ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) => Colors.green.shade900),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)))
                        )
                    ),
                    ElevatedButton(onPressed: (){}, child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0,vertical: 10.0),
                      child: Text('CHAT',style: TextStyle(color: Colors.white)),
                    ),
                        style: ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) => Colors.blue.shade900),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)))
                        )
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(height*0.01),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black26)
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('User Name: M Shakir', style: TextStyle(color: Colors.black45,fontSize: 20,fontWeight: FontWeight.bold),),
                    Text('New Order', style: TextStyle(color: Colors.black45,fontSize: 20,fontWeight: FontWeight.bold),),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Order Id: 14444', style: TextStyle(color: Colors.grey.shade700,fontSize: 16),),
                    Text('Total Amount: 300', style: TextStyle(color: Colors.grey.shade700,fontSize: 16),),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Order Type: Delivery', style: TextStyle(color: Colors.grey.shade700,fontSize: 16),),
                  ],
                ),
                // SizedBox(height: height*0.04,),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     ElevatedButton(
                //         onPressed: (){}, child: Padding(
                //           padding: const EdgeInsets.symmetric(horizontal: 4.0,vertical: 10.0),
                //           child: Text('PREPARE',style: TextStyle(color: Colors.white)),
                //         ),
                //         style: ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) => Colors.green.shade900),
                //             shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)))
                //         )
                //     ),
                //     ElevatedButton(onPressed: (){}, child: Padding(
                //       padding: const EdgeInsets.symmetric(horizontal: 4.0,vertical: 10.0),
                //       child: Text('CHAT',style: TextStyle(color: Colors.white)),
                //     ),
                //         style: ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) => Colors.blue.shade900),
                //             shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)))
                //         )
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(height*0.01),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black26)
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('User Name: M Shakir', style: TextStyle(color: Colors.black45,fontSize: 20,fontWeight: FontWeight.bold),),
                    Text('New Order', style: TextStyle(color: Colors.black45,fontSize: 20,fontWeight: FontWeight.bold),),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Order Id: 14444', style: TextStyle(color: Colors.grey.shade700,fontSize: 16),),
                    Text('Total Amount: 300', style: TextStyle(color: Colors.grey.shade700,fontSize: 16),),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Order Type: Delivery', style: TextStyle(color: Colors.grey.shade700,fontSize: 16),),
                  ],
                ),
                // SizedBox(height: height*0.04,),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     ElevatedButton(
                //         onPressed: (){}, child: Padding(
                //           padding: const EdgeInsets.symmetric(horizontal: 4.0,vertical: 10.0),
                //           child: Text('PREPARE',style: TextStyle(color: Colors.white)),
                //         ),
                //         style: ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) => Colors.green.shade900),
                //             shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)))
                //         )
                //     ),
                //     ElevatedButton(onPressed: (){}, child: Padding(
                //       padding: const EdgeInsets.symmetric(horizontal: 4.0,vertical: 10.0),
                //       child: Text('CHAT',style: TextStyle(color: Colors.white)),
                //     ),
                //         style: ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) => Colors.blue.shade900),
                //             shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)))
                //         )
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  button(){
    if(name == 'ACCEPT'){
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
              onPressed: (){
                setState(() {
                  name = 'PREPARE';
                });
              }, child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0,vertical: 10.0),
            child: Text(name,style: TextStyle(color: Colors.white)),
          ),
              style: ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) => Colors.green.shade900),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)))
              )
          ),
          // ElevatedButton(
          //     onPressed: (){}, child: Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 4.0,vertical: 10.0),
          //   child: Text('PREPARE',style: TextStyle(color: Colors.white)),
          // ),
          //     style: ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) => Colors.green.shade900),
          //         shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)))
          //     )
          // ),
          ElevatedButton(
              onPressed: (){}, child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0,vertical: 10.0),
            child: Text('CHAT',style: TextStyle(color: Colors.white)),
          ),
              style: ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) => Colors.blue.shade900),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)))
              )
          ),
        ],
      );
    }else if(name == 'PREPARE'){
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
              onPressed: (){
                name = 'GO';
                setState(() {

                });
              }, child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0,vertical: 10.0),
            child: Text(name,style: TextStyle(color: Colors.white)),
          ),
              style: ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) => Colors.green.shade900),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)))
              )
          ),
          // ElevatedButton(
          //     onPressed: (){}, child: Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 4.0,vertical: 10.0),
          //   child: Text('PREPARE',style: TextStyle(color: Colors.white)),
          // ),
          //     style: ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) => Colors.green.shade900),
          //         shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)))
          //     )
          // ),
          ElevatedButton(
              onPressed: (){}, child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0,vertical: 10.0),
            child: Text('CHAT',style: TextStyle(color: Colors.white)),
          ),
              style: ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) => Colors.blue.shade900),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)))
              )
          ),
        ],
      );
    }else if(name == 'GO'){
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
              onPressed: (){
                name = 'REMOVE';
                setState(() {

                });
              }, child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0,vertical: 10.0),
            child: Text(name,style: TextStyle(color: Colors.white)),
          ),
              style: ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) => Colors.green.shade900),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)))
              )
          ),
          // ElevatedButton(
          //     onPressed: (){}, child: Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 4.0,vertical: 10.0),
          //   child: Text('PREPARE',style: TextStyle(color: Colors.white)),
          // ),
          //     style: ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) => Colors.green.shade900),
          //         shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)))
          //     )
          // ),
          ElevatedButton(
              onPressed: (){}, child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0,vertical: 10.0),
            child: Text('CHAT',style: TextStyle(color: Colors.white)),
          ),
              style: ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) => Colors.blue.shade900),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)))
              )
          ),
        ],
      );
    }else if(name == 'REMOVE'){
      return SizedBox(width: 0,height: 0,);
    }
  }
}
