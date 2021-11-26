import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var type = [
    {
      'info':
          'La contaminación atmosférica es la presencia en el aire de materias o formas de energía que implican riesgo, daño o molestia grave para las personas y seres de la naturaleza popular,​ así como que puedan atacar a distintos materiales, reducir la visibilidad o producir olores desagradables y enfermedades.',
      'typeA': 'Atmosférica',
      'img': 'assets/nuclear-4168906-640_bg.jpg'
    },
    {
      'info':
          'La contaminación hídrica o la contaminación del agua es una modificación de esta, que la vuelve impropia o peligrosa para el consumo, la industria, la agricultura, la pesca y las actividades, así como para los animales.',
      'typeA': 'Hídrica',
      'img': 'assets/Discharge_pipe.jpg'
    },
    {
      'info':
          'La contaminación del suelo es una degradación de la calidad del suelo asociada a la presencia de sustancias químicas. Se define como el aumento en la concentración de compuestos químicos, que provoca cambios perjudiciales y reduce su empleo potencial, tanto por parte de la actividad humana, como por la naturaleza.',
      'typeA': 'Suelos',
      'img':
          'assets/Arsenforurenet_jord_på_collstropgrunden_i_Brabrand,_2010-09-30.jpg'
    },
    {
      'info':
          'Los componentes electrónicos de desecho, como las CPU, contienen materiales potencialmente dañinos como el plomo, cadmio, berilio o retardadores de llama bromados.',
      'typeA': 'Electrónica',
      'img': 'assets/Ewaste-pile.jpg'
    },
    {
      'info':
          'La basura espacial (también conocida como desechos espaciales, contaminación espacial, desperdicio espacial) es un término para designar objetos artificiales difuntos en el espacio, principalmente en la órbita terrestre, que ya no cumplen una función útil',
      'typeA': 'Espacial',
      'img': 'assets/Debris-GEO1280.jpg'
    },
    {
      'info':
          'La contaminación radiactiva o contaminación nuclear es la presencia no deseada de sustancias radioactivas en el entorno. Esta contaminación puede proceder de radioisótopos naturales o artificiales.',
      'typeA': 'Radioactiva',
      'img': 'assets/material-radioactivo-mecc81xico-robo-cnnee.jpg'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[850],
        appBar: AppBar(
          title: Text(
            'Contaminación Ambiental',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Colors.grey[850],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CardCnt(
                type: type[0]['typeA'],
                info: type[0]['info'],
                img: type[0]['img'],
              ),
              CardCnt(
                  type: type[1]['typeA'],
                  info: type[1]['info'],
                  img: type[1]['img']),
              CardCnt(
                  type: type[2]['typeA'],
                  info: type[2]['info'],
                  img: type[2]['img']),
              CardCnt(
                  type: type[3]['typeA'],
                  info: type[3]['info'],
                  img: type[3]['img']),
              CardCnt(
                  type: type[4]['typeA'],
                  info: type[4]['info'],
                  img: type[4]['img']),
              CardCnt(
                  type: type[5]['typeA'],
                  info: type[5]['info'],
                  img: type[5]['img'])
            ],
          ),
        ));
  }
}

class CardCnt extends StatefulWidget {
  final type;
  final info;
  final img;
  CardCnt({required this.info, required this.type, required this.img});

  @override
  _CardCntState createState() => _CardCntState();
}

class _CardCntState extends State<CardCnt> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black12,
      margin: EdgeInsets.all(10),
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image(
                image: AssetImage(widget.img),
              ),
              Text(
                widget.type,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              )
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 0, 5, 5),
            child: Text(
              widget.info,
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
