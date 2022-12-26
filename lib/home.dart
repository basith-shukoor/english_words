import 'package:english_words/provider/provider_funct.dart';
import 'package:flutter/material.dart';

import 'favourite.dart';
import 'package:provider/provider.dart';

class Englishword extends StatelessWidget {
  const Englishword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List words=['time','year','people','way','day','man','thing','woman','life','child','world','school'];
    final p=Provider.of<Providerfunction>(context);



    return Scaffold(
      appBar:AppBar(title: Text("English Words"),),
      body: ListView.builder(
          itemCount:words.length ,
          itemBuilder: (BuildContext context, int index){
            return
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("${words[index]}"),
                      IconButton(onPressed: (){
                        p.toggleFavorite(words[index]);


                      },icon:p.symbol(words[index])?
                          const Icon(Icons.favorite,color: Colors.red,):
                      Icon(Icons.favorite_outline),
                          ),
                    ],

                  ),
                ),
              );


          }
      ),
      floatingActionButton: FloatingActionButton.extended(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Favorites())
        );
      },
        label: Text("Favorites"),
      ),


    );
  }
}

