import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Nunito'),
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late PageController _pageController;
  int totalPage = 4;

  void _onScroll() {}

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
    )..addListener(_onScroll);

    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          makePage(
              page: 1,
              image:
                  'https://raw.githubusercontent.com/Melanie-Vega-1112/Muebleria_imagenes_app_flutterr/refs/heads/main/muebleria3.JPG',
              title: 'Muebleria Vega',
              description:
                  'Diseños escandinavos y contemporáneos que maximizan espacios con líneas limpias y funcionalidad inteligente. Materiales como roble blanqueado, cristal templado y acero inoxidable en piezas modulares que se adaptan a su estilo de vida.'),
          makePage(
              page: 2,
              image:
                  'https://raw.githubusercontent.com/Melanie-Vega-1112/Muebleria_imagenes_app_flutterr/refs/heads/main/muebleria4.JPG',
              title: 'Consigue tus muebles',
              description:
                  'Auténticos muebles rústicos con carácter, fabricados en pino macizo con técnicas de envejecimiento natural. Mesas de troncos, camas con cabeceros de vigas recuperadas y cómodas con herrajes forjados. Cada pieza conserva las vetas naturales de la madera y pequeños defectos que cuentan su historia única.'),
          makePage(
              page: 3,
              image:
              
                  'https://raw.githubusercontent.com/Melanie-Vega-1112/Muebleria_imagenes_app_flutterr/refs/heads/main/muebleria1.jpg',
              title: 'Los mejores precios',
              description:
                  'Solución integral para home office y espacios corporativos. Escritorios regulables en altura, sillas ergonómicas con soporte lumbar certificado y sistemas de almacenamiento acústico. Combinamos tecnología alemana en mecanismos con acabados en melamina de 18mm. Paquetes para startups con diseños que promueven la productividad'),
          makePage(
              page: 4,
              image:
                  'https://raw.githubusercontent.com/Melanie-Vega-1112/Muebleria_imagenes_app_flutterr/refs/heads/main/muebleria2.jpg',
              title: 'Tu mejor opcion',
              description:
                  'Descubra muebles artesanales donde la tradición se encuentra con el confort. Nuestra colección de muebles clásicos en maderas nobles como caoba y cerezo ofrece piezas atemporales con tallados detallados y acabados en laca brillante.'),
        ],
      ),
    );
  }

  Widget makePage({image, title, description, page}) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage(image), fit: BoxFit.cover)),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
          0.3,
          0.9
        ], colors: [
          Colors.black.withOpacity(.9),
          Colors.black.withOpacity(.2),
        ])),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: <Widget>[
                    FadeInUp(
                        child: Text(
                      page.toString(),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    )),
                    Text(
                      '/' + totalPage.toString(),
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    )
                  ],
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      FadeInUp(
                          child: Text(
                        title,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            height: 1.2,
                            fontWeight: FontWeight.bold),
                      )),
                      SizedBox(height: 20),
                      FadeInUp(
                          child: Row(
                        children: <Widget>[
                          for (int i = 0; i < 4; i++)
                            Container(
                              margin: EdgeInsets.only(right: 3),
                              child: Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 15,
                              ),
                            ),
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            child: Icon(
                              Icons.star,
                              color: Colors.grey,
                              size: 15,
                            ),
                          ),
                          Text(
                            '4.0',
                            style: TextStyle(color: Colors.white70),
                          ),
                          Text(
                            '(2300)',
                            style:
                                TextStyle(color: Colors.white38, fontSize: 12),
                          )
                        ],
                      )),
                      SizedBox(height: 20),
                      FadeInUp(
                          child: Padding(
                        padding: const EdgeInsets.only(right: 50),
                        child: Text(
                          description,
                          style: TextStyle(
                              color: Colors.white.withOpacity(.7),
                              height: 1.9,
                              fontSize: 15),
                        ),
                      )),
                      SizedBox(height: 20),
                      FadeInUp(
                          child: Text(
                        'READ MORE',
                        style: TextStyle(color: Colors.white),
                      )),
                      SizedBox(height: 30),
                    ],
                  ),
                )
              ]),
        ),
      ),
    );
  }
}