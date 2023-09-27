import 'package:apps/my_theme.dart';
import 'package:flutter/material.dart';

class Sebha_screen extends StatefulWidget {
  @override
  State<Sebha_screen> createState() => _Sebha_screenState();
}

class _Sebha_screenState extends State<Sebha_screen> {
  List<String>Tasbeh=['سبحان الله','استغفر الله العظيم','الله أكبر'];
  int counter = 0;
  int counter2 = 0;
  bool visable=true;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 40),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 200,
            height: 200,
            child: Image.asset(
              "asset/image/sebha.png",
              color: My_theme.primarycolor,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text("عدد التسبيحات"),
          Visibility(
            visible: visable,
            child: Container(
              width: 70,
              height: 80,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: My_theme.primarycolor,
                  borderRadius: BorderRadius.circular(30)),
              child: Text(
                "$counter",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () {
              counter += 1;
              if (counter == 33) {
                counter2 += 1;
                counter = 0;
              }
              if(counter2==Tasbeh.length){
                Tasbeh.add('!تم');
                visable=false;
              }
              setState(() {});

            },
            child: Container(
              alignment: Alignment.center,
              width: 205,
              height: 50,
              decoration: BoxDecoration(
                  color: My_theme.primarycolor,
                  borderRadius: BorderRadius.circular(30)),
              child: Text(
                Tasbeh[counter2],
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                    color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
