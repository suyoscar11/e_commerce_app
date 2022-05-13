import 'package:flutter/material.dart';

class GeneralUI extends StatelessWidget {
  const GeneralUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey.withOpacity(0.4),
            child: GridView.count(
              crossAxisCount: 2,
              primary: false,
              mainAxisSpacing: 0,
              crossAxisSpacing: 0,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 100.0),
                  child: Column(
                    children: [
                      Icon(
                        Icons.currency_rupee,
                        size: 24,
                        color: Colors.grey.withOpacity(1),
                      ),
                      Text(
                        'Great Value',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '    We offer competitive prices\n       on our 30 thousands +\n                products.',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                // Tyo Swift Deliveries wala
                Padding(
                  padding: const EdgeInsets.only(top: 100.0),
                  child: Column(
                    children: [
                      Icon(
                        Icons.directions_car,
                        size: 24,
                        color: Colors.grey.withOpacity(1),
                      ),
                      Text(
                        'Swift Delivery',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '    We offer swift & safe\ndelivery in every purchase\n              anywhere.',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                //Safe Payment Wala

                Padding(
                  padding: const EdgeInsets.only(top: 70.0),
                  child: Column(
                    children: [
                      Icon(
                        Icons.credit_card,
                        size: 24,
                        color: Colors.grey.withOpacity(1),
                      ),
                      Text(
                        'Safe Payment',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '    Pay your money with the\n     most popular & secure\n               payments.',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),

                //Tyo ShopWithConfidence wala
                Padding(
                  padding: const EdgeInsets.only(top: 70.0),
                  child: Column(
                    children: [
                      Icon(
                        Icons.fact_check,
                        size: 24,
                        color: Colors.grey.withOpacity(1),
                      ),
                      Text(
                        'Shop With Confidence',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '      Our Buyers protection\n    covers your purchase to\n                 delivery.',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                //24/7 support wala
                Column(
                  children: [
                    Icon(
                      Icons.people,
                      size: 24,
                      color: Colors.grey.withOpacity(1),
                    ),
                    Text(
                      '24/7 Support Center',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '    Everlastingly assistance for\n         a smooth shopping\n              experience.',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                //Easy Returns wala
                Column(
                  children: [
                    Icon(
                      Icons.replay_circle_filled_rounded,
                      size: 24,
                      color: Colors.grey.withOpacity(1),
                    ),
                    Text(
                      'Easy Returns',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '    Return your ordered unfit\n       items within 7 days of \n            delivery easily.',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            )));
  }
}
