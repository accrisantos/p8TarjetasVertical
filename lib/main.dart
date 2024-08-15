import 'package:flutter/material.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Tarjeta vertical',
      debugShowCheckedModeBanner: false,
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        // useMaterial3: false,
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> imageList = [
    "",
    "",
    "",
    "",
    "",
  ];
  @override
  Widget build(BuildContext context) {
    final List<Widget> images = [
      Container(
        child: Column(
          children: <Widget>[
            Image(
              fit: BoxFit.contain,
              height: 100,
              // Como queremos traer una imagen desde un url usamos NetworkImage
              image: const NetworkImage(
                "https://raw.githubusercontent.com/accrisantos/p6carruselCrisantos/main/helicopteros/helicopteroElectrico.jpg",
              ),
            ) // Usamos Container para el contenedor de la descripción
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      Container(
        child: Column(
          children: <Widget>[
            Image(
              // Como queremos traer una imagen desde un url usamos NetworkImage
              image: const NetworkImage(
                "https://raw.githubusercontent.com/accrisantos/p6carruselCrisantos/main/helicopteros/helicopteroRescate.jpg",
              ),
            ) // Usamos Container para el contenedor de la descripción
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      Container(
        child: Column(
          children: <Widget>[
            Image(
              // Como queremos traer una imagen desde un url usamos NetworkImage
              image: const NetworkImage(
                "https://raw.githubusercontent.com/accrisantos/p6carruselCrisantos/main/helicopteros/helicopteroApache.jpg",
              ),
            ) // Usamos Container para el contenedor de la descripción
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      Container(
        child: Column(
          children: <Widget>[
            Image(
              // Como queremos traer una imagen desde un url usamos NetworkImage
              image: const NetworkImage(
                "https://raw.githubusercontent.com/accrisantos/p6carruselCrisantos/main/helicopteros/helicopteroMiltar.jpg",
              ),
            ) // Usamos Container para el contenedor de la descripción
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      Container(
        child: Column(
          children: <Widget>[
            Image(
              // Como queremos traer una imagen desde un url usamos NetworkImage
              image: const NetworkImage(
                "https://raw.githubusercontent.com/accrisantos/p6carruselCrisantos/main/helicopteros/helicopteroPolicia.jpg",
              ),
            ) // Usamos Container para el contenedor de la descripción
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Crisantos Vertical',
          style: TextStyle(color: Color(0xff9947cf)),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Expanded(
          child: Container(
            child: VerticalCardPager(
              textStyle: TextStyle(
                  color: Color(0xff000000), fontWeight: FontWeight.bold),
              titles: imageList,
              images: images,
              onPageChanged: (page) {},
              align: ALIGN.CENTER,
              onSelectedItem: (index) {},
            ),
          ),
        ),
      ),
    );
  }
}
