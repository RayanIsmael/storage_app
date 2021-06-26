import 'package:flutter/material.dart';
import 'package:storag_app/constance.dart';
import 'package:storag_app/screens/home_detail.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Column(
      children: [
        SizedBox(
          height: height * 0.01,
        ),
        Expanded(
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: height * 0.13),
                decoration: BoxDecoration(
                    color: kbackgroundcolor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40),
                    )),
              ),
              ListView.builder(
                itemCount: kproduct.length,
                itemBuilder: (context, index) => ProductCard(
                  index: index,
                  ontab: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => HomeDetail(),
                    ));
                  },
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key, this.index, required this.ontab})
      : super(key: key);
  final index;
  // ignore: non_constant_identifier_names
  final VoidCallback ontab;

  @override
  Widget build(BuildContext context) {
    var myproduct = kproduct;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: width * 0.04,
        vertical: height * 0.04,
      ),
      height: height * 0.25,
      child: InkWell(
        onTap: ontab,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 15),
                      blurRadius: 25,
                      color: Colors.black26)
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              height: height * 0.2,
            ),
            Positioned(
              //image
              top: 0,
              left: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: width * 0.01),
                height: height * 0.2,
                width: width * 0.38,
                child: Image.asset(
                  "${myproduct[index]['image']}",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
                //text
                top: 20,
                right: 0,
                child: Container(
                  height: height * 0.2,
                  width: width - 170,
                  //color: kmain,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: width * 0.1),
                        child: Text(
                          "${myproduct[index]['title']}",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: width * 0.1),
                        child: Text(
                          "${myproduct[index]['body']}",
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: width * 0.1),
                        child: Container(
                          decoration: BoxDecoration(
                              color: ksecondry,
                              borderRadius: BorderRadius.circular(22),
                              border:
                                  Border.all(width: 1, color: Colors.black45)),
                          padding: EdgeInsets.symmetric(
                              horizontal: width * 0.04, vertical: width * 0.02),
                          child: Text("Price:\$${myproduct[index]['price']}"),
                        ),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
