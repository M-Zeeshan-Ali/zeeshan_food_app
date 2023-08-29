import 'package:flutter/material.dart';
import 'package:zeeshan_food_app/colors.dart';
import 'package:zeeshan_food_app/resturants_class.dart';
import 'package:zeeshan_food_app/shops_class.dart';

class Favourites extends StatefulWidget {
  const Favourites({Key? key}) : super(key: key);

  @override
  State<Favourites> createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  GlobalKey<ScaffoldState> scaffoldKey=GlobalKey<ScaffoldState>();
  GlobalKey<FormState> formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        key: scaffoldKey,
          appBar: AppBar(backgroundColor: MyColors.white1,
            leading: IconButton(icon:Icon (Icons.arrow_back,color: MyColors.black),
                onPressed: (){}),

            title: Text('Favourites',style: TextStyle(color: MyColors.black,)  ),
          bottom:TabBar(indicatorColor: MyColors.pink,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorWeight: 5,
        //isScrollable: true,
    tabs:[
      Tab(child:Text('Restaurants',style: TextStyle(color: MyColors.black),),),
      Tab(
        child:Text('Shops',style: TextStyle(color: MyColors.black),),),
    ]
    ),
          ),
        body: TabBarView(
          children: [
            Resturants(),
            Shops(),
          ],
        ),
      ),
    );
  }
}
