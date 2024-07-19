import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'noticia1_model.dart';
export 'noticia1_model.dart';

class Noticia1Widget extends StatefulWidget {
  const Noticia1Widget({super.key});

  @override
  State<Noticia1Widget> createState() => _Noticia1WidgetState();
}

class _Noticia1WidgetState extends State<Noticia1Widget> {
  late Noticia1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Noticia1Model());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              context.safePop();
            },
            child: Icon(
              Icons.arrow_back,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
          ),
          title: Text(
            'Mitos y realidades \ndel Krav Maga',
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Sora',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(40.0, 40.0, 40.0, 40.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/mitos_de_KM.webp',
                      width: 393.0,
                      height: 200.0,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 40.0, 30.0),
                  child: Text(
                    'El Krav Maga es un método eficaz y realista de defensa personal que se ha popularizado a nivel mundial. Junto con el auge de la popularidad, ha habido muchos mitos y concepciones erróneas sobre el mundo del Krav Maga. En el siguiente artículo, hablamos sobre algunos de los mitos comunes y exponemos la verdad detrás de esta increíble disciplina.\n\nMito 1: El Krav Maga es solo un sistema de defensa personal militar y de fuerzas Realidad: Aunque Krav Maga se desarrolló principalmente dentro de las fuerzas de defensa de Israel y es un método que han utilizado muchas fuerzas de seguridad de todo el mundo, se basa en principios y pretende ser aprendido por cualquier individuo, independientemente de su profesión. Los métodos deben ser tan fáciles y útiles que una persona de cualquier edad y estado de forma pueda aprender y utilizar Krav Maga para su defensa.\n\nMito 2: El Krav Maga es muy violento Realidad: El Krav Maga es un sistema de la manera más efectiva para neutralizar amenazas y protegerse a sí mismo. Aunque el Krav Maga tiene aspectos de ataque, no es una \"artes marciales\" en cuanto a que no es un sistema de violencia gratuita, sino un sistema de autoprotección. Los estudiantes aprenden a evitar conflictos de interés cuando sea necesario y a recurrir a la fuerza solo como último recurso.\n\nMito 3: Krav Maga es un ejercicio efectivo solo para hombres: El Krav Maga es tan efectivo para las mujeres como para los hombres. De hecho, muchas mujeres encuentran que el Krav Maga es un gran nivelador en lo que respecta a la capacidad de autodefensa. Las técnicas están diseñadas para superar la desventaja de tamaño y fuerza usando la mecánica del movimiento y los principios de la palanca para maximizar la eficiencia del esfuerzo de fuerza del ejecutante.\n\nMito 4: Tienes que estar en una condición perfecta para poder hacer Krav Maga: El Krav Maga es un sistema destinado a ser aprendido y practicado por estudiantes con cualquier nivel de condición física. Si bien es cierto que está bien estar en buena forma física, no es necesario estar en forma antes de comenzar a entrenar. La mayoría de las clases de Krav Maga enseñan ejercicio progresivo en un ambiente físico que, a su vez, aumenta la condición física a medida que el estudiante aprende el programa de entrenamiento de defensa personal. \n\nMito 5: El Krav Maga es solo para adultos: Hay programas de Krav Maga específicamente para niños y adolescentes. Estos programas no solo enseñan a los niños técnicas de autodefensa, sino que también ayudan a enseñar disciplina, confianza y respeto. La capacidad de aprender Krav Maga a una edad temprana puede, por lo tanto, proporcionar a los jóvenes lo que necesitan para desarrollarse y defenderse.\n\nMito 6: La única manera de aprender Krav Maga es en Israel: El Krav Maga fue creado en Israel, pero la instrucción de esta técnica se ha popularizado internacionalmente y, hasta la fecha, hay academias y expertos de alto nivel en todos los países. No es obligatorio ir a Israel para obtener la mejor instrucción de Krav Maga; lo único que tiene que hacer es buscar un buen instructor y un buen programa en su localidad.\n\nMito 7: El Krav Maga es puramente defensa personal, no es una opción de entrenamiento robusta: Más allá de ser un sistema de defensa muy fuerte, Krav Maga también es un buen entrenamiento físico. Las rutinas son esencialmente una combinación de ejercicios cardiovasculares, de resistencia y de fuerza, lo que resulta en un buen ejercicio que mejora la fuerza, la flexibilidad y el equilibrio general del cuerpo. \n\nEl Krav Maga es una disciplina práctica y alcanzable que proporciona herramientas reales tanto para la defensa personal como para el acondicionamiento físico. Al desmitificarlo, esperamos haber borrado algunas de las mistificaciones incorrectas del Krav Maga y haber pintado un panorama más realista de lo que realmente es. \n\nPor lo tanto, si siempre has querido aprender Krav Maga, debes saber que será la maravillosa y oportuna elección para cualquier persona, independientemente de la edad, el sexo o el estado físico. \n\nPruébalo y experimenta por ti mismo cómo este arte puede transformar tu existencia de manera inimaginable.\n\nTe esperamos en IKICR Krav Maga.',
                    textAlign: TextAlign.justify,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
