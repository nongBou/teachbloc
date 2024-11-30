import 'package:day4/view/home/widgets/banner.dart';
import 'package:day4/view/home/widgets/category.dart';
import 'package:day4/view/home/widgets/product_card.dart';
import 'package:day4/viewmodel/homepage/homepage_bloc.dart';
import 'package:day4/viewmodel/homepage/homepage_event.dart';
import 'package:day4/viewmodel/homepage/homepage_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Shoping'),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.red,
              ))
        ],
      ),
      body: BlocProvider(
        create: (context) => HomepageBloc()..add(HomePageGetOnly(id: 1)),
        child:
            BlocBuilder<HomepageBloc, HomepageState>(builder: (context, state) {
          if (state is HomepageLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is HomepageSuccess) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  const BannerCustom(),
                  const Category(),
                  ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return const ProductCard();
                      }),
                ],
              ),
            );
          } else if (state is HomepageFail) {
            return Center(
              child: Text(state.error),
            );
          }
          return const SizedBox();
        }),
      ),
    );
  }
}
