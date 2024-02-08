import 'package:flutter/material.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Container(
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
                    ElevatedButton(onPressed: (){}, child: Text('hello'),
                        style: ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) => Colors.green.shade900),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)))
                        )
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
