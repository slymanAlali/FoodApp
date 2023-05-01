import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slider/carousel.dart';

class ItemScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.only(top: 40, left: 15),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios),
                  ),
                  SizedBox(height: 20),
                  Carousel(
                      indicatorBarColor: Colors.transparent,
                      autoScroll: false,
                      height: 400,
                      items: [
                        Image.asset('images/slide1.png'),
                        Image.asset('images/slide2.png'),
                        Image.asset('images/fruit_salad.png'),


                      ]),
                  SizedBox(height: 10),
                  Text('Mediterranean',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )
                  ),
                  Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Chickpea Salad',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                )
                            ),
                            Row(
                                children: [
                                  Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.black87,
                                      ),
                                      child: Icon(
                                          Icons.add,
                                          color: Colors.white
                                      )
                                  ),
                                  SizedBox(width: 5),
                                  Text('1'),
                                  SizedBox(width: 5),
                                  Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.black87,
                                      ),
                                      child: Icon(
                                          CupertinoIcons.minus,
                                          color: Colors.white
                                      )
                                  )
                                ]
                            )
                          ]
                      )
                  ),
                  SizedBox(height: 10),
                  Text(
                      'Lorem ipsum is simply dummy text of the printing '
                          'and typesting industry.lorem ipsum has been the'
                          ' industry standard dummy text ever since the 1500s',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 15,
                        //  fontWeight: FontWeight.w500,
                      )
                  ),
                  SizedBox(height: 10),
                  Row(
                    children:[
                      Text(
                        'delivery time',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color:Colors.black54,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(width: 20),
                      Icon(CupertinoIcons.time,
                      ),
                      Text(
                        '30 min',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          )
                      )
                    ]
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: EdgeInsets.only(right:15),
                    child:Stack(
                      alignment: Alignment.center,
                      children:[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:[Text('total orice',
                                  style: TextStyle(
                                    color:Colors.black87,
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                                SizedBox(height:5),
                                Text('\$28.00',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      color:Colors.black,
                                      fontSize: 20,
                                    )
                                )
                              ]
                            ),
                         Container(
                           height: 40,
                           width: 140,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(10),
                               color: Colors.black,
                             ),
                           child:Padding(
                             padding:EdgeInsets.all(8),
                             child:Row(
                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                               children:[
                                 Text(
                                   'add to cart',
                                 style: TextStyle(
                                   color:Colors.white,
                                   fontSize: 13,
                                 )
                                 ),
                                 Container(
                                   height:30,
                                   width: 30,
                                     decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(10),
                                       color: Colors.black,
                                     ),
                                   child:Icon(
                                     CupertinoIcons.cart,
                                     color: Colors.white,
                                   )
                                 )

                               ]
                             )
                           )
                         )
                          ]
                        )
                      ]
                    )
                  )
                ]
            )
        )
    );
  }
}
