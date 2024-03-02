import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/models/newsModel.dart';
import 'package:news/repository/api.dart';
import 'package:news/screens/news.dart';

class Home_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'News',
          style: TextStyle(
              color: Color(0xff231F20),
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xffE9EEFA),
      ),
      body: FutureBuilder(
        future: NewRepository().getTopBusinessnews(),
        builder: ( context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.hasData) {
            final response=snapshot.data;
            final data=response!.data;
            final newsModel=Modelofnews.fromJson(data);
            return ListView.builder(
              itemCount: newsModel.articles.length,
              itemBuilder: (BuildContext context, int index) {
                final item=newsModel.articles[index];
                return InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>News()));
                  },
                  child: ListTile(
                    leading: Image.network(item.urlToImage.toString(),height: 60,width: 40,),
                    title: Text(item.title),
                    subtitle: Text(item.description.toString()),
                    trailing: Icon(Icons.add_alert),
                  ),
                );
              },
            );
          }

          return Center(
            child: Text('there is an error cheak agin'),
          );
        },
      ),
    );
  }
}
