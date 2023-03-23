import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "AIO",
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget{

  @override
  State createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  static String url = 'https://static1.purepeople.com.br/articles/8/36/07/88/@/4132832-vazam-detalhes-das-exigencias-de-messi-p-624x600-2.jpg';

  static List<String> dados = [
    'Grupo dos Pereiras',
    'Familia Silva',
    'Alice Pereira',
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          backgroundColor: Color((0xFF1D5D51)),
          title: Text("AIOP"),
          actions: <Widget>[
            IconButton(
                onPressed: (){},
                icon: Icon(Icons.search),
            ),
            IconButton(
                onPressed: (){},
                icon: Icon(Icons.message)
            ),
            IconButton(
                onPressed: (){},
                icon: Icon(Icons.more_vert)
            ),
          ],
          bottom: TabBar(
            indicatorColor: Colors.white ,
            indicatorWeight: 3.0,
            tabs: <Widget>[
              Tab(
                text: ("Ligações").toUpperCase(),
              ),
              Tab(
                text: ("Conversas").toUpperCase(),
              ),
              Tab(
                text: ("Contatos").toUpperCase(),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(color: Colors.green),
            Container(
              color: Colors.white,
              child: ListView.builder(
                itemCount: dados.length,
                itemBuilder: (context, index){
                  var title = dados.elementAt(index);
                  return Container(
                      width: double.maxFinite,
                      height: 100,
                      child: Row(
                        children: <Widget>[
                          Image(
                              image: NetworkImage(url)
                          ),
                          Column(
                            children: <Widget>[
                              Text(title),
                              Text("Pedro: Eu acho que eu sei oque"),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text("11:45", style: TextStyle(
                                  color: Colors.green
                              ),
                              ),

                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.all(Radius.circular(100))
                                ),
                                child: Center(
                                  child: Text(
                                    "3",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              )

                            ],
                          )
                        ],
                      )
                  );
                },
              ),
            ),
            Container(color: Colors.blue),
          ],
        ),
      ),
    );
  }
}

