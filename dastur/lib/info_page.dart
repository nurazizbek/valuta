import 'package:dastur/valuta_model.dart';
import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  final Valutamodel item;

  InfoPage({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Info Page'),
        ),
        body: Column(
          children: [
            // Text(item.ccyNmUZ.toString()),
            // Text(item.rate.toString())
            SizedBox(
              height: 5,
            ),
            Container(
              width: 377,
              height: 350,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.green.shade100),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Colors.green.shade100),
              child: ListTile(
                title: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.all(Radius.circular(90)),
                          ),
                          child: Icon(
                            Icons.currency_exchange_outlined,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:148),
                              child: Text(
                                item.ccy.toString(),
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                            )
                          ],
                        ),
                      ),
                      
                       
                    
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Icon(
                          Icons.trending_up_outlined,
                          size: 110,
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Container(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(item.rate.toString(),
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w700)),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(item.diff.toString(),style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w300)),
                              ]),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
