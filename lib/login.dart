import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // TODO: Add text editing controllers (101)
   final _usernameController = TextEditingController();
   final _passwordController = TextEditingController();
   final _unfocusedColor = Colors.grey[600];
   final _usernameFocusNode = FocusNode();
   final _passwordFocusNode = FocusNode();

          @override
          void initState() {
            super.initState();
            _usernameFocusNode.addListener(() {
                setState(() { 
                  //Redraw so that the username label reflects the focus state
                });
            });
            _passwordFocusNode.addListener(() {
                setState(() { 
                  //Redraw so that the password label reflects the focus state
                });
            });
          }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            const SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                Image.asset('assets/diamond.png'),
                const SizedBox(height: 16.0),
                Text(
                  'SHRINE',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ],
            ),
            const SizedBox(height: 120.0),
            // TODO: Wrap Username with AccentColorOverride (103)
            // TODO: Remove filled: true values (103) : done
            // TODO: Wrap Password with AccentColorOverride (103)
            // TODO: Add TextField widgets (101)
            // [Name]
              TextField(
                controller: _usernameController,
                decoration: InputDecoration(
                  //filled: true,
                  labelText: 'Username',
                  labelStyle: TextStyle(
                  color: _usernameFocusNode.hasFocus
                         ? Theme.of(context).colorScheme.secondary
                         : _unfocusedColor
                   ),
                ),
                  focusNode: _usernameFocusNode,
              ),
              // spacer
              const SizedBox(height: 12.0),
              // [Password]
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                 // filled: true,
                  labelText: 'Password',
                  labelStyle: TextStyle(
                  color: _passwordFocusNode.hasFocus
                          ? Theme.of(context).colorScheme.secondary
                          :_unfocusedColor
                   ),
                ),
                  focusNode: _passwordFocusNode,

                //remplace automatiquement l'entrée saisie par l'utilisateur
                obscureText: true,
              ),


            // TODO: Add button bar (101)
             ButtonBar(
                  // TODO: Add a beveled rectangular border to CANCEL (103)
                  children: <Widget>[
                    // TODO: Add buttons (101)
                        TextButton(
                          child: const Text('CANCEL'),
                          onPressed: () {
                               // TODO: Clear the text fields (101)
                                _usernameController.clear();
                                _passwordController.clear();
                          },
                        ),
                        // TODO: Add an elevation to NEXT (103)
                        // TODO: Add a beveled rectangular border to NEXT (103)
                        ElevatedButton(
                          child: const Text('NEXT'),
                          onPressed: () {
                                // TODO: Show the next page (101) 
                                Navigator.pop(context);
                          },
                        ),
                  ],
                ),

          ],
        ),
      ),
    );
  }
}

// TODO: Add AccentColorOverride (103)
