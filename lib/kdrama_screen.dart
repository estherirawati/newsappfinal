import 'package:flutter/material.dart';
import 'package:newsapp/detail_kdrama_screen.dart';
import 'package:newsapp/model/kdrama.dart';
class KdramaScreen extends StatelessWidget {
  static const routeName='/kdrama_list';
  const KdramaScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Kdrama List'),
        ),
        body:
        ListView.builder(
          itemCount: koreanDramaList.length,
          itemBuilder: (context, index) {
            final KoreanDrama kdrama = koreanDramaList[index];
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context){
                      return DetailKDramaScreen(kdrama: kdrama);
                    }));
              },
              child: Card(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(flex: 1,
                        child: Image.asset(kdrama.banner)),
                    Expanded(flex:2,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(kdrama.name, style: TextStyle(fontSize: 16.0),),
                              SizedBox(height:10),
                              Text(kdrama.broadcaster),
                            ],
                          ),
                        )
                    )
                  ],
                ),
              ),
            );
          },
        )
    );
  }
}
