import 'package:flutter/material.dart';
import 'package:uts_fashion_show/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Widget categoriesTile1(String kategori) {
    return Container(
      margin: EdgeInsets.only(left: 16),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: transparent,
        border: Border.all(
          color: subtitleColor,
        ),
      ),
      child: Text(
        kategori,
        style: subtitleTextStyle.copyWith(
          fontWeight: light,
          fontSize: 13,
        ),
      ),
    );
  }

  Widget categories() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(
            width: defaultMargin,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: primaryColor,
            ),
            child: Text(
              'All Shoes',
              style: primaryTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 13,
              ),
            ),
          ),
          categoriesTile1('Running'),
          categoriesTile1('Training'),
          categoriesTile1('Basketball'),
          categoriesTile1('Hiking'),
        ],
      ),
    );
  }

  Widget popularProductstTitle() {
    return Container(
        margin: EdgeInsets.only(left: 30),
        padding: EdgeInsets.only(top: 30),
        child: Text(
          'Popular Products',
          style: primaryTextStyle.copyWith(
            fontWeight: semibold,
            fontSize: 22,
          ),
        ));
  }

  Widget newArrivalsTitle() {
    return Container(
      margin: EdgeInsets.only(left: defaultMargin, bottom: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            'New Arrivals',
            style: primaryTextStyle.copyWith(
              fontWeight: semibold,
              fontSize: 22,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // AuthProvider authProvider = Provider.of<AuthProvider>(context);
    // UserModel user = authProvider.user;
    // ProductProvider productProvider = Provider.of<ProductProvider>(context);

    Widget header() {
      return Container(
        margin: EdgeInsets.all(defaultMargin),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hallo, dyandra',
                  style: primaryTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: semibold,
                  ),
                ),
                Text(
                  '@dyandraaulia',
                  style: subtitleTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Container(
              width: 54,
              height: 54,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
              ),
            ),
          ],
        ),
      );
    }

    Widget popularProducts() {
      return Container(
        margin: EdgeInsets.only(top: 14, left: defaultMargin),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              // children: productProvider.products.map((product) => ProductCard(product)).toList(),
              ),
        ),
      );
    }

    Widget newArrivals() {
      return Container(
        margin: EdgeInsets.only(left: defaultMargin),
        child: Column(
            // children: productProvider.products.map((product) => ProductTile(product)).toList(),
            ),
      );
    }

    return ListView(
      children: [
        header(),
        categories(),
        popularProductstTitle(),
        popularProducts(),
        newArrivalsTitle(),
        newArrivals()
      ],
    );
  }
}
