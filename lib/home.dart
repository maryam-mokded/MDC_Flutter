import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  // TODO: Make a collection of cards (102)
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
      body: Center(
        child: Text('You did it!'),
      ),
      // TODO: Set resizeToAvoidBottomInset (101)
       resizeToAvoidBottomInset: false,

    );
  }
}
