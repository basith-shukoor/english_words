import 'package:english_words/provider/provider_funct.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Favorites extends StatelessWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final p=Provider.of<Providerfunction>(context);
    final mywords=p.words;
    return Scaffold(
      appBar: AppBar(title: Text("Favorites"),backgroundColor: Colors.indigoAccent,),
      body:ListView.builder(
          itemCount:mywords.length ,
          itemBuilder: (BuildContext context, int index){
            return
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("${mywords[index]}"),
                      IconButton(onPressed: (){
                        p.toggleFavorite(mywords[index]);


                      },icon:p.symbol(mywords[index])?
                      const Icon(Icons.favorite,color: Colors.red,):
                      Icon(Icons.favorite_outline),
                      ),
                    ],

                  ),
                ),
              );


          }
      ),

    );
  }
}
