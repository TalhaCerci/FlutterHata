import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeEkran extends StatefulWidget {
  @override
  _HomeEkran createState() => _HomeEkran();
}

class _HomeEkran extends State<HomeEkran> {
  List tumListKitap = [
    'https://i.idefix.com/cache/500x400-0/originals/0001804267001-1.jpg',
    'https://images.kitapsepeti.com/Content/global/images/products/5/563099/karantina-ciltli.jpg',
    'https://cdn.akakce.com/-/kral-sakir-7-kitap-takim-set-varol-yasaroglu-z.jpg',
  ];
  int say = 0;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Deneme"),
      ),
      body: Container(
        child: GridView.count(
          crossAxisCount: 2,
          children: List.generate(
            tumListKitap.length,
            (index1) {
              return Card(
                margin: EdgeInsets.all(5),
                color: Colors.green,
                child: Container(
                  color: Colors.white,
                  margin: EdgeInsets.all(1.5),
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      Image.network(
                        tumListKitap[index1],
                        fit: BoxFit.cover,
                        height: 50,
                      ),
                      Text(
                        "Adet: $say",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      Row(
                        children: <Widget>[
                          ButtonTheme(
                            minWidth: 20.0,
                            height: 30.0,
                            child: RaisedButton(
                              onPressed: () {
                                setState(() {
                                  say++;
                                  print(say);
                                });
                                //burada artıyor ama ekranda artmıyor
                              },
                              child: Text(
                                "Ekle",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          ButtonTheme(
                            minWidth: 20.0,
                            height: 30.0,
                            child: RaisedButton(
                                onPressed: () {
                                  setState(() {
                                    if (say <= 0) {
                                      say = 0;
                                      print(say);
                                    } else {
                                      say--;
                                      print(say);
                                    }
                                  });
                                },
                                child: Text(
                                  "Azalt",
                                  style: TextStyle(color: Colors.white),
                                ),
                                color: Colors.red),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
