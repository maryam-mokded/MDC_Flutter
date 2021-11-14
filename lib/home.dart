import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'model/products_repository.dart';
import 'model/product.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  // TODO: Make a collection of cards (102)
  // TODO: Make a collection of cards (102)
        // Replace this entire method
          List<Card> _buildGridCards(BuildContext context) {
            List<Product> products = ProductsRepository.loadProducts(Category.all);

            if (products.isEmpty) {
              return const <Card>[];
            }

            final ThemeData theme = Theme.of(context);
            final NumberFormat formatter = NumberFormat.simpleCurrency(
                locale: Localizations.localeOf(context).toString());

            return products.map((product) {
              return Card(
                clipBehavior: Clip.antiAlias,
                // TODO: Adjust card heights (103)
                child: Column(
                  // TODO: Center items on the card (103)
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    AspectRatio(
                      aspectRatio: 18 / 11,
                      child: Image.asset(
                        product.assetName,
                        package: product.assetPackage,
                      // TODO: Adjust the box size (102)
                        fit: BoxFit.fitWidth,

                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                        child: Column(
                        // TODO: Align labels to the bottom and center (103)
                        crossAxisAlignment: CrossAxisAlignment.center,  
                        mainAxisAlignment: MainAxisAlignment.end,

                          // TODO: Change innermost Column (103)
                          children: <Widget>[
                          // TODO: Handle overflowing labels (103)
                          Text(
                              product.name,
                              style: theme.textTheme.button,
                              softWrap: false,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                            const SizedBox(height: 4.0),
                            Text(
                              formatter.format(product.price),
                              style: theme.textTheme.caption,
                            ),
                              // End new code

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }).toList();
          }

  // TODO: Add a variable for Category (104)
  @override
  Widget build(BuildContext context) {
    // TODO: Return an AsymmetricView (104)
    // TODO: Pass Category variable to AsymmetricView (104)
    return Scaffold(
      // TODO: Add app bar (102)
          appBar: AppBar(
        // TODO: Add title (102)
            title: const Text('SHRINE'),
        // TODO: Add buttons  (102)
              leading: IconButton(
            icon: const Icon(
              Icons.menu,
              semanticLabel: 'menu',
            ),
            onPressed: () {
              print('Menu button');
            },
          ),

         // TODO: Add trailing buttons (102)
              actions: <Widget>[
                IconButton(
                  icon: const Icon(
                    Icons.search,
                    semanticLabel: 'search',
                  ),
                  onPressed: () {
                    print('Search button');
                  },
                ),
                IconButton(
                  icon: const Icon(
                    Icons.tune,
                    semanticLabel: 'filter',
                  ),
                  onPressed: () {
                    print('Filter button');
                  },
                ),
              ],

          ),
      // TODO: Add a grid view (102)
              body: GridView.count(
                  crossAxisCount: 2,
                  padding: const EdgeInsets.all(16.0),
                  childAspectRatio: 8.0 / 9.0,
            // TODO: Build a grid of cards (102)
                  children:_buildGridCards(context)  // Changed code


                  ),
              

      // TODO: Set resizeToAvoidBottomInset (101)
       resizeToAvoidBottomInset: false,

    );
  }
}
