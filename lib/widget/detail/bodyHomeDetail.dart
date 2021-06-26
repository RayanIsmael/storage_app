import 'package:flutter/material.dart';
import 'package:storag_app/constance.dart';

class DetailBody extends StatelessWidget {
  const DetailBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: kbackgroundcolor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: height * 0.02),
                height: height * 0.5,
                width: double.infinity,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: height * 0.4,
                      width: height * 0.4,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        "images/dd.png",
                        fit: BoxFit.cover,
                        height: height * 0.2,
                        width: width * 0.38,
                      ),
                    ),
                  ],
                ),
              ),

              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(2),
                      height: 21,
                      width: 21,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    ////
                    Container(
                      padding: EdgeInsets.all(2),
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      height: 21,
                      width: 21,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    ////
                    Container(
                      padding: EdgeInsets.all(2),
                      height: 21,
                      width: 21,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12),
                        shape: BoxShape.circle,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          shape: BoxShape.circle,
                        ),
                      ),
                    )
                    ////
                  ],
                ),
              ),
              /////
              SizedBox(
                height: height * 0.02,
              ),
              ///////
              Text(
                "Name Of Products",
                style: Theme.of(context).textTheme.headline5,
              ),
              /////
              SizedBox(
                height: height * 0.01,
              ),
              ///////
              Text(
                "Price:\$9999",
                style: TextStyle(fontSize: 24, color: ksecondry),
              ),
              /////
              SizedBox(
                height: height * 0.01,
              ),
              ///////
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: height * 0.02),
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: Text(
            "body",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ],
    );
  }
}
