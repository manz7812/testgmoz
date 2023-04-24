import 'dart:convert';
import 'dart:math';
import 'dart:developer';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List dataCT = [
    {
      "id": 1,
      "type": "BCH/THB",
      "count": "4,384.07 (0.00%)",
      "imgURL": "https://ex.z.com/gateway/account/image-resource?fileName=currency/BCH.png",
    },
    {
      "id": 2,
      "type": "BTC/THB",
      "count": "982,111.89 (-5.03%)",
      "imgURL": "https://ex.z.com/gateway/account/image-resource?fileName=currency/BTC.png",
    },
    {
      "id": 3,
      "type": "ETH/THB",
      "count": "68,391.41 (0.00%)",
      "imgURL": "https://ex.z.com/gateway/account/image-resource?fileName=currency/ETH.png",
    },
    {
      "id": 4,
      "type": "XLM/THB",
      "count": "3.30 (0.00%)",
      "imgURL": "https://ex.z.com/gateway/account/image-resource?fileName=currency/XLM.png",
    },
    {
      "id": 5,
      "type": "XRP/THB",
      "count": "16.29 (-4.57%)",
      "imgURL": "https://ex.z.com/gateway/account/image-resource?fileName=currency/XRP.png",
    },
    {
      "id": 6,
      "type": "USDT/THB",
      "count": "34.29 (+0.06%)",
      "imgURL": "https://ex.z.com/gateway/account/image-resource?fileName=currency/USDT.png",
    },
    {
      "id": 7,
      "type": "LINK/THB",
      "count": "258.76 (+4.56%)",
      "imgURL": "https://ex.z.com/gateway/account/image-resource?fileName=currency/31a1b4e8-dd30-45c0-86d4-1ef3e0bab509.png",
    },
    {
      "id": 8,
      "type": "UNI/THB",
      "count": "202.73 (0.00%)",
      "imgURL": "https://ex.z.com/gateway/account/image-resource?fileName=currency/6497d5f6-9036-422f-afe4-cd20a45ed5dd.png",
    },
  ];

  @override
  void initState() {
    super.initState();
    // getHttp();
    // getMinValue();
    // replaceValue();
    // sortValue();
    // getdata();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
            centerTitle: false,
            backgroundColor: Colors.white,
            title: Image.network('https://www.lucid-trader.com/wp-content/uploads/2021/10/zcomcrypto_logo.png',width: 100)
          // actions: [
          //   IconButton(
          //       onPressed: (){
          //         checkTxT('sdfsdfsd');
          //     }, icon: Icon(Icons.check_circle))
          // ],
        ),
        body: SingleChildScrollView(
          child: Container(
            // margin: EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  // margin: EdgeInsets.fromLTRB(10, 20, 10, 10),
                  padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage('https://website.z.com/la/ndzcom_common/images/header/sp/head-bg.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'ซื้อ-ขายคริปโทฯ ได้ในไม่กี่นาที​',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(height: 10),

                            Text('เราเชื่อมต่อคุณกับสภาพคล่องทั่วโลก',style: TextStyle(color: Colors.white),),
                          ],
                        ),
                      ),

                      SizedBox(height: 10),

                      Container(
                        alignment: Alignment.centerLeft,
                        child: ElevatedButton(
                            onPressed: (){},
                            child: Text(
                              'เทรดเลย',
                              style: TextStyle(

                              ),
                            )
                        ),
                      ),
                    ],
                  ),

                ),

                Container(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Card(
                        elevation: 5,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:  [
                              Text('แลกเปลี่ยน คริปโทเคอร์เรนซี กับ Z.com Ex',
                                style: TextStyle(
                                ),
                              ),
                              TextButton(
                                  child: Text(
                                      "เข้าสู่ระบบ",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold
                                      )
                                  ),
                                  style: ButtonStyle(
                                      padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.fromLTRB(15, 10, 15, 10)),
                                      alignment: Alignment.center,
                                      foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(5.0),
                                              side: BorderSide(color: Colors.red)
                                          )
                                      )
                                  ),
                                  onPressed: () => null
                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: 20),

                      ListView.builder(
                        itemCount: dataCT.length,
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemBuilder: (context, i) {
                          var color = Color(0xFFFFFFFF);
                          var color2 = Color(0xFF000000);
                          if( dataCT[i]['id'] == 0 || dataCT[i]['id'] == 3 || dataCT[i]['id'] == 4 || dataCT[i]['id'] == 8){
                            color = const Color(0xFF000000);
                          }else if(dataCT[i]['id'] == 2 || dataCT[i]['id'] == 5){
                            color = const Color(0xFFFF1111);
                          }else{
                            color = const Color(0xFF37FC00);
                          }
                          return Card(
                            child: Container(
                              padding: EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        Image.network(dataCT[i]['imgURL'],width: 30,),
                                        SizedBox(width: 10),
                                        Text(dataCT[i]['type'])
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Text(dataCT[i]['count'],
                                      style: TextStyle(
                                          color: color,
                                          fontWeight: FontWeight.bold
                                      ),),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),


                SizedBox(height: 100),
              ],
            ),
          ),
        )
    );
  }
}
