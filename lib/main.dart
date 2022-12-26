import 'package:english_words/favourite.dart';
import 'package:english_words/provider/provider_funct.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home.dart';

void main() {
  runApp(Demo()
  );

}
class Demo extends StatelessWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(create: (context)=>Providerfunction(),
      child: MaterialApp(debugShowCheckedModeBanner: false,
          home:const Englishword()),
    );
  }
}

