import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_four/details/details_screen.dart';
import 'package:project_four/details/round_icon_btn.dart';
import 'package:project_four/main.dart';
import 'package:project_four/products/products.dart';
import 'package:project_four/profile/profile_screen.dart';

class Interface extends StatelessWidget {
  const Interface({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kindacode.com'),
        actions: [
          IconButton(
            icon: Icon(
              MyApp.themeNotifier.value == ThemeMode.light
                  ? Icons.dark_mode
                  : Icons.light_mode,
            ),
            onPressed: () {
              MyApp.themeNotifier.value = MyApp.themeNotifier.value == ThemeMode.light
                  ? ThemeMode.dark
                  : ThemeMode.light;
            },
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 250,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextField(
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          hintText: "Search Product",
                          prefixIcon: Icon(Icons.search),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 15,
                          ),
                        ),
                      ),
                    ),
                    CartNotification(),
                    NotificationIcon(),
                    Profile(),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                width: double.infinity,
                height: 90,
                decoration: BoxDecoration(
                  color: Color(0xFF4A3298),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text.rich(
                  TextSpan(
                    text: "A Summer Surprise\n",
                    style: TextStyle(color: Colors.white),
                    children: [
                      TextSpan(
                        text: "Check 20%",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              Categories(),
              SizedBox(height: 30),
              Column(
                children: [
                  SectionTitle(
                    text: "Special for you",
                    press: () {},
                  ),
                  SizedBox(height: 30),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SpecialOfferCards(
                          image: "assets/images/Image Banner 2.png",
                          category: "Smartphones",
                          numOfBrands: 18,
                          pree: () {},
                        ),
                        SpecialOfferCards(
                          image: "assets/images/Image Banner 3.png",
                          category: "Fashion",
                          numOfBrands: 24,
                          pree: () {},
                        ),
                        SizedBox(width: 20),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              SectionTitle(
                text: "Popular Products",
                press: () {},
              ),
              SizedBox(height: 30),
              ProductsCards(),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => Navigator.pushNamed(context, ProfileScreen.routeName),
        borderRadius: BorderRadius.circular(15),
        child: Stack(

            children: [

              Container(
                padding: EdgeInsets.all(10),
                height:35 ,
                width:35 ,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset("assets/icons/User Icon.svg"),
              ),
              // Positioned(
              //   right: 0,
              //   top: -3,
              //   child: Container(
              //       height: 16,
              //       width: 16,
              //       decoration: BoxDecoration(
              //           color: Color(0xFFFF4848),
              //           shape: BoxShape.circle,
              //           border: Border.all(width: 1.5,color: Colors.white)
              //       ),
              //       child: Center(
              //         //child: Text("3",
              //           //style: TextStyle(
              //             fontSize: 10,
              //             height: 1,
              //             color: Colors.white,
              //             fontWeight: FontWeight.w600,
            ]
        )

    );

  }
}

class ProductsCards extends StatefulWidget {
  const ProductsCards({
    super.key,
    this.width=140,

    this.aspectRation = 1.02,

  });
  final double width, aspectRation;



  @override
  State<ProductsCards> createState() => _ProductsCardsState();
}

class _ProductsCardsState extends State<ProductsCards> {
  late Future<List<ProductCardsApi>> futureProductCardsApi;
  // second step make a network request
//covert http response inside ProductCards
  Future<List<ProductCardsApi>>fetchProductCardsApi() async{

    final response =  await http.get(Uri.parse("https://fakestoreapi.com/products"));

    if (response.statusCode == 200){
      var decodeData = json.decode(response.body) as List<dynamic>;

      List<ProductCardsApi> products =
      decodeData.map((json) => ProductCardsApi.fromJson(json)).toList();
      return products;
    }
    else{
      throw Exception("failes load album");
    }
  }

  @override
  void initState(){
    super.initState();
    futureProductCardsApi = fetchProductCardsApi();
  }
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.only(left: 20),
      child: GestureDetector(

        child: SizedBox(
          height: 100,
          // width: widget.width,
          child:FutureBuilder<List<ProductCardsApi>>(
            future: futureProductCardsApi,
            builder: (context,snapshot){
              if (snapshot.hasData){
                var data = snapshot.data;
                  return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: data!.length,
                      itemBuilder: (context, index) {
                        return Column(children: [
                          Container(
                            height: 50,
                            width: 50,
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Image.network(data[index].image),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            data![index].title.toString(),
                            style: TextStyle(color: Colors.black),
                            maxLines: 2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "\$${data![index].price}",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepOrange,
                                ),
                              ),
                              InkWell(
                                borderRadius: BorderRadius.circular(30),
                                onTap: () {},
                                child: Container(
                                  padding: EdgeInsets.all(8),
                                  width: 28,
                                  height: 28,
                                  decoration: BoxDecoration(
                                      color:
                                          Colors.grey.shade300.withOpacity(0.1),
                                      shape: BoxShape.circle),
                                  child: SvgPicture.asset(
                                      "assets/icons/Heart Icon_2.svg"),
                                ),
                              )
                            ],
                          )
                        ]);
                      });
                }
              return CircularProgressIndicator();
            },
          )
        ),
      ),
    );
  }
}

class SpecialOfferCards extends StatelessWidget {
  const SpecialOfferCards({
    super.key,
    required this.category,
    required this.image,
    required this.numOfBrands,
    required this.pree,
  });
  final String category,image;
  final int numOfBrands;
  final GestureTapCallback pree;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: SizedBox(
        height: 100,
        width: 242,
        child: ClipRRect(
          borderRadius:BorderRadius.circular(20) ,
          child: Stack(
            children: [
              Image.asset(image,
                fit: BoxFit.cover,),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors:[
                      Color(0xFF343434).withOpacity(0.4),
                      Color(0xFF343434).withOpacity(0.15),
                    ]
                  )
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Text.rich(
                  TextSpan(

                  style: TextStyle(color: Colors.white),
                    children: [
                      TextSpan(
                        text: "$category\n",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        )
                      ),
                      TextSpan(text: "$numOfBrands Brands"),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key,
    required this.text,
    required this.press,
  });
  final String text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
          GestureDetector(
              onTap: press,
              child: Text("See More")),
        ],
      ),
    );
  }
}

class NotificationIcon extends StatelessWidget {
  const NotificationIcon({
    super.key,
    // required this.svgSrc,
    // this.numOfItems=0,
    // required this.press,
  });
  // final String svgSrc;
  // final int numOfItems;
  // final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(15),
      child: Stack(

        children: [

          Container(
            padding: EdgeInsets.all(10),
            height:35 ,
            width:35 ,
            decoration: BoxDecoration(
            color: Colors.grey.shade300,
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset("assets/icons/Bell.svg"),
          ),
          Positioned(
            right: 0,
            top: -3,
            child: Container(
              height: 16,
              width: 16,
              decoration: BoxDecoration(
                color: Color(0xFFFF4848),
                shape: BoxShape.circle,
                border: Border.all(width: 1.5,color: Colors.white)
              ),
              child: Center(
                child: Text("3",
                style: TextStyle(
                  fontSize: 10,
                  height: 1,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,

                ),
                ),
              )
            ),
          )
        ],
      ),
    );
  }
}
class CartNotification extends StatelessWidget {
  const CartNotification({
    super.key,
    // required this.svgSrc,
    // this.numOfItems=0,
    // required this.press,
  });
  // final String svgSrc;
  // final int numOfItems;
  // final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(15),
      child: Stack(

        children: [

          Container(
            padding: EdgeInsets.all(10),
            height:35 ,
            width:35 ,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset("assets/icons/Cart Icon.svg"),
          ),
          // Positioned(
          //   right: 0,
          //   top: -3,
          //   child: Container(
          //       height: 16,
          //       width: 16,
          //       decoration: BoxDecoration(
          //           color: Color(0xFFFF4848),
          //           shape: BoxShape.circle,
          //           border: Border.all(width: 1.5,color: Colors.white)
          //       ),
          //       child: Center(
          //         //child: Text("3",
          //           //style: TextStyle(
          //             fontSize: 10,
          //             height: 1,
          //             color: Colors.white,
          //             fontWeight: FontWeight.w600,
]
                    )

                  );

  }
}

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/Flash Icon.svg", "text":"Flash Deal"},
      {"icon": "assets/icons/Bill Icon.svg", "text":"Bill"},
      {"icon": "assets/icons/Game Icon.svg", "text":"Game"},
      {"icon": "assets/icons/Gift Icon.svg", "text":"Daily Gift"},
      {"icon": "assets/icons/Discover.svg", "text":"More"},
    ];
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(categories.length, (index) => CategoresCards(
            icon: categories[index]["icon"],
            text:categories[index]["text"],
             press: () {  },))
        ],
      ),
    );
  }
}

class CategoresCards extends StatelessWidget {
  const CategoresCards({
    super.key,
    //required this.categories,
    required this.icon,
    required this.text,
    required this.press,
  });

  final String icon , text ;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: 55,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Color(0xFFFFECDF),
                ),
                child: SvgPicture.asset(icon),
              ),
            ),
            SizedBox(height: 5),
            Text(text,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}


//first step create product card class

class ProductCardsApi{
  final String title;
  final double price;
  final String description;
  final String image;

  const ProductCardsApi({
    required this.title,
    required this.price,
    required this.description,
    required this.image,

  });
  factory ProductCardsApi.fromJson(Map<String,dynamic>json){
    return ProductCardsApi(
        title: json["title"],
        price: double.parse(json["price"].toString()),
        description: json["description"],
        image: json["image"]);
  }

}




