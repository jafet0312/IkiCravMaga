import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['es', 'en'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? esText = '',
    String? enText = '',
  }) =>
      [esText, enText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // HomePage
  {
    'ulqhiprq': {
      'es':
          'IKI CR Krav Maga fue fundado en el año 2014 por el instructor Erick Araya Hernández, se creó con la intención de preparar y capacitar a cada persona de la mejor manera, tanto la población civil como todas aquellas personas que dedican su vida a proteger y servir.',
      'en':
          'IKI CR Krav Maga was founded in 2014 by instructor Erick Araya Hernández, it was created with the intention of preparing and training each person in the best way, both the civilian population and all those who dedicate their lives to protecting and serving. .',
    },
    'h2s3dnnz': {
      'es':
          'Basamos nuestra técnica en la filosofía de IKI (Israelí Krav International), debemos ser rápidos y eficientes al defendernos, con esto disminuimos el riesgo que podamos correr al defendernos, logrando llevar a más personas sanas y salvas a sus hogares.\n',
      'en':
          'We base our technique on the philosophy of IKI (Israeli Krav International), we must be fast and efficient when defending ourselves, with this we reduce the risk we may run when defending ourselves, managing to bring more people safe and healthy to their homes.',
    },
    'nfbhhqwh': {
      'es':
          'Costa Rica Krav Maga pertenece actualmente a la Federación Mundial de Krav Maga IKI (Israelí Krav International) al igual que cuenta con el respaldo de la Asociación Krav Maga Panamá para todos estos fines, al igual que en nuestro país contamos con el respaldo de la empresa de seguridad K9 G & S.',
      'en':
          'Costa Rica Krav Maga currently belongs to the World Krav Maga Federation IKI (Israeli Krav International) as well as has the support of the Panama Krav Maga Association for all these purposes, just as in our country we have the support of the company K9 G&S security.',
    },
    'wb7830nw': {
      'es': 'Ultimas noticias',
      'en': 'Last News',
    },
    'w4jw16rn': {
      'es': 'IKI CR Crav Maga',
      'en': 'IKI CR Crav Maga',
    },
    '0y6kkoe3': {
      'es': 'Inicio',
      'en': 'Home',
    },
  },
  // Login
  {
    'zz5htu1c': {
      'es': 'Correo electrónico',
      'en': 'Email',
    },
    'bbdqpbcq': {
      'es': 'Contraseña',
      'en': 'Password',
    },
    '4m3vtoik': {
      'es': 'Iniciar Sesión',
      'en': 'Log in',
    },
    '2yxij0b1': {
      'es': 'No tienes cuenta? ',
      'en': 'You do not have an account?',
    },
    'cyghwrhk': {
      'es': 'Registrese aquí',
      'en': 'Register here',
    },
    'bak7v4r0': {
      'es': 'IKI CR Krav Maga',
      'en': 'IKI CR Krav Maga',
    },
    '43ec3mnm': {
      'es': 'Inicio',
      'en': 'Home',
    },
  },
  // Registro
  {
    '9lrabwix': {
      'es': 'Crear una cuenta',
      'en': 'Create an account',
    },
    'rmkfyyc1': {
      'es': 'Correo electrónico',
      'en': 'Email',
    },
    'luhiu5sq': {
      'es': 'Nombre',
      'en': 'Name',
    },
    'h84eyf93': {
      'es': 'Teléfono',
      'en': 'Phone',
    },
    'qga7hheh': {
      'es': 'Contraseña',
      'en': 'Password',
    },
    'hc141o6b': {
      'es': 'Usuario',
      'en': 'User',
    },
    'qrmk7q44': {
      'es': 'Administrador',
      'en': 'Administrator',
    },
    '1fbz476o': {
      'es': 'Seleccione el rol',
      'en': 'Select the role',
    },
    'op0wwwue': {
      'es': 'Buscar un artículo...',
      'en': 'Search for an item...',
    },
    '0t4jclv0': {
      'es': 'Registar',
      'en': 'Register',
    },
    'r0lsvox2': {
      'es': 'IKI CR Krav Maga',
      'en': 'IKI CR Krav Maga',
    },
    '8s3gndbm': {
      'es': 'Inicio',
      'en': 'Home',
    },
  },
  // PerfilUsuario
  {
    'bjddtd3u': {
      'es': 'Información Personal',
      'en': 'Personal information',
    },
    'vhltpbr4': {
      'es': 'Nombre: ',
      'en': 'Name:',
    },
    '9i4mhyzi': {
      'es': 'Nombre Usuario',
      'en': 'Username',
    },
    'tag5s145': {
      'es': 'Correo: ',
      'en': 'Mail:',
    },
    '1hdiqm51': {
      'es': 'correo@usuario.com',
      'en': 'email@user.com',
    },
    'coqm8xrp': {
      'es': 'Teléfono',
      'en': 'Phone',
    },
    'm7g85kvb': {
      'es': '0000-0000',
      'en': '0000-0000',
    },
    'xz1rh3dn': {
      'es': 'Editar',
      'en': 'Edit',
    },
    'ofrq7u02': {
      'es': 'Logros',
      'en': 'Achievements',
    },
    'fe56h84b': {
      'es': 'Manejo de cuchillo',
      'en': 'Knife handling',
    },
    'etsqrazx': {
      'es':
          'Felicitaciones, has completado con exito el curso de manejo de cuchillo',
      'en':
          'Congratulations, you have successfully completed the knife handling course.',
    },
    'iqi2nfjx': {
      'es': 'Control de agreciones',
      'en': 'Aggression control',
    },
    '8o0zp16s': {
      'es':
          'Felicitaciones, has completado con exito el curso de control de agreciones',
      'en':
          'Congratulations, you have successfully completed the aggression control course.',
    },
    '4cty0uqe': {
      'es': 'Cerrar Sesión',
      'en': 'Sign off',
    },
    'xnwizlt0': {
      'es': 'Preferencias',
      'en': 'Preferences',
    },
    'fkun5m14': {
      'es': 'Perfil de Usuario',
      'en': 'User profile',
    },
    'wsrdpx4a': {
      'es': 'Perfil',
      'en': 'Profile',
    },
  },
  // Matricula
  {
    'x8vx5mrq': {
      'es': 'Matricular',
      'en': '',
    },
    'f50w72xs': {
      'es': 'Manejo de cuchillo',
      'en': 'Knife handling',
    },
    'vta1h13c': {
      'es': 'Horario: 6:00pm',
      'en': '',
    },
    'ycgfwn05': {
      'es': 'Matricular',
      'en': '',
    },
    'ngwtcwp7': {
      'es': 'Salidas rápidas de ataques directos',
      'en': '',
    },
    '50vc0ras': {
      'es': 'Horario: 8:00pm',
      'en': '',
    },
    'w1vwtf3a': {
      'es': 'Cursos Matriculados',
      'en': '',
    },
    'qz0wh0uh': {
      'es': 'Eliminar',
      'en': '',
    },
    '1avc2tkg': {
      'es': 'Defensa con cuchillo',
      'en': '',
    },
    '7xjxj1uf': {
      'es': 'Fecha: 27/06/2024 - Horario: 8:00pm',
      'en': '',
    },
    'ihnbg6im': {
      'es': 'Guias de Uso',
      'en': '',
    },
    'ha5pfizv': {
      'es': 'Matrícula de cursos',
      'en': '',
    },
    'hvcyvcbh': {
      'es': 'Matricula',
      'en': '',
    },
  },
  // Sugerencias
  {
    'c9ctsi2f': {
      'es': 'Encuesta de satisfacción',
      'en': 'Satisfaction survey',
    },
    'k9cnfi2j': {
      'es': 'Su opinión nos ayuda a mejorar continuamente',
      'en': 'Your opinion helps us to continually improve',
    },
    'co96979g': {
      'es': 'Escriba su comentario aquí',
      'en': 'Write your comment here',
    },
    'wsvtrkpe': {
      'es': 'Enviar',
      'en': 'Send',
    },
    'dxfrozqv': {
      'es': 'Formulario',
      'en': 'Form',
    },
    'o742p6sh': {
      'es': 'Sugerencias',
      'en': 'Suggestions',
    },
  },
  // Guias
  {
    'mikm6b35': {
      'es': 'Entrevista',
      'en': 'Interview',
    },
    'ywwgf69o': {
      'es': 'Entrevista',
      'en': 'Interview',
    },
    'eygujvao': {
      'es': 'Guias de uso',
      'en': 'Use guides',
    },
    'g2ompirv': {
      'es': 'Inicio',
      'en': 'Home',
    },
  },
  // Noticias
  {
    '7zqy8213': {
      'es': 'Mitos y realidades del Krav Magá',
      'en': 'Myths and realities of Krav Magá',
    },
    'tdforno9': {
      'es':
          'Conocé acerca de los mitos más comunes y sus realidades a la hora de practicar Krav Magá',
      'en':
          'Learn about the most common myths and their realities when practicing Krav Magá',
    },
    'zwsmvxdw': {
      'es': 'Beneficios del Krav Maga',
      'en': 'Benefits of Krav Maga',
    },
    'za97zf3l': {
      'es':
          'El Krav Maga no es solo una forma efectiva de defensa personal; también ofrece numerosos beneficios para la salud física y mental de quienes lo practican. ',
      'en':
          'Krav Maga is not only an effective form of self-defense; It also offers numerous benefits for the physical and mental health of those who practice it.',
    },
    'n8s36irc': {
      'es': 'Alerta',
      'en': 'Alert',
    },
    'qznzfqo8': {
      'es':
          '¡Hola, querido lector! Hoy quiero hablarte sobre un tema importante que nos concierne a todos.',
      'en':
          'Hello, dear reader! Today I want to talk to you about an important topic that concerns us all.',
    },
    'te7uwi3w': {
      'es': 'Notícias',
      'en': 'News',
    },
    '7kyfrjcs': {
      'es': 'Notícias',
      'en': 'News',
    },
  },
  // DetallesCurso
  {
    '829j7twl': {
      'es': 'CURSO MANEJO DE ARMAS',
      'en': 'WEAPONS HANDLING COURSE',
    },
    '0u70qmgb': {
      'es': 'Horario: ',
      'en': 'Schedule:',
    },
    'jzc9fhou': {
      'es': 'dd/MM/aaaa - hh:mm am/pm',
      'en': 'dd/MM/yyyy - hh:mm am/pm',
    },
    'isr4khxx': {
      'es': 'Descripción',
      'en': 'Description',
    },
    'elkr4hzw': {
      'es':
          'Debemos saber como movernos y poder repeler una amenaza de manera correcta y segura para nosotros y terceras personas.\n\nDiseñados desde el nivel principiante hasta el avanzado donde podrás aprender todo lo relacionado con el manejo de armas.',
      'en':
          'We must know how to move and be able to repel a threat correctly and safely for ourselves and third parties.\n\nDesigned from beginner to advanced level where you can learn everything related to handling weapons.',
    },
    'to7bdpjg': {
      'es': 'Detalle de curso',
      'en': 'Course details',
    },
    's9x5xwet': {
      'es': 'Inicio',
      'en': 'Start',
    },
  },
  // Preferencias
  {
    'eojmeql2': {
      'es': 'Titulos',
      'en': 'Titles',
    },
    'xeihlkod': {
      'es': 'Letras',
      'en': 'Letters',
    },
    '14xe6d15': {
      'es': 'Preferencias',
      'en': 'preferences',
    },
    '80xv863x': {
      'es': 'Inicio',
      'en': 'Home',
    },
  },
  // Noticia1
  {
    'gjngctx0': {
      'es': 'Mitos y realidades \ndel Krav Maga',
      'en': 'Myths and realities \nof Krav Maga',
    },
    'yelkhmaa': {
      'es':
          'El Krav Maga es un método eficaz y realista de defensa personal que se ha popularizado a nivel mundial. Junto con el auge de la popularidad, ha habido muchos mitos y concepciones erróneas sobre el mundo del Krav Maga. En el siguiente artículo, hablamos sobre algunos de los mitos comunes y exponemos la verdad detrás de esta increíble disciplina.\n\nMito 1: El Krav Maga es solo un sistema de defensa personal militar y de fuerzas Realidad: Aunque Krav Maga se desarrolló principalmente dentro de las fuerzas de defensa de Israel y es un método que han utilizado muchas fuerzas de seguridad de todo el mundo, se basa en principios y pretende ser aprendido por cualquier individuo, independientemente de su profesión. Los métodos deben ser tan fáciles y útiles que una persona de cualquier edad y estado de forma pueda aprender y utilizar Krav Maga para su defensa.\n\nMito 2: El Krav Maga es muy violento Realidad: El Krav Maga es un sistema de la manera más efectiva para neutralizar amenazas y protegerse a sí mismo. Aunque el Krav Maga tiene aspectos de ataque, no es una \"artes marciales\" en cuanto a que no es un sistema de violencia gratuita, sino un sistema de autoprotección. Los estudiantes aprenden a evitar conflictos de interés cuando sea necesario y a recurrir a la fuerza solo como último recurso.\n\nMito 3: Krav Maga es un ejercicio efectivo solo para hombres: El Krav Maga es tan efectivo para las mujeres como para los hombres. De hecho, muchas mujeres encuentran que el Krav Maga es un gran nivelador en lo que respecta a la capacidad de autodefensa. Las técnicas están diseñadas para superar la desventaja de tamaño y fuerza usando la mecánica del movimiento y los principios de la palanca para maximizar la eficiencia del esfuerzo de fuerza del ejecutante.\n',
      'en':
          'Krav Maga is an effective and realistic method of self-defense that has become popular worldwide. Along with the rise in popularity, there have been many myths and misconceptions about the world of Krav Maga. In the following article, we talk about some of the common myths and expose the truth behind this incredible discipline.\n\nMyth 1: Krav Maga is only a military and force self-defense system Fact: Although Krav Maga was primarily developed within the Israeli defense forces and is a method that has been used by many security forces around the world, it is It is based on principles and is intended to be learned by any individual, regardless of their profession. The methods should be so easy and useful that a person of any age and fitness level can learn and use Krav Maga for their defense.\n\nMyth 2: Krav Maga is very violent Fact: Krav Maga is a system of the most effective way to neutralize threats and protect yourself. Although Krav Maga has attacking aspects, it is not a \"martial arts\" in that it is not a system of gratuitous violence, but rather a system of self-protection. Students learn to avoid conflicts of interest when necessary and to resort to force only as a last resort.\n\nMyth 3: Krav Maga is an effective exercise only for men: Krav Maga is as effective for women as it is for men. In fact, many women find Krav Maga to be a great equalizer when it comes to self-defense ability. The techniques are designed to overcome the size and strength disadvantage by using movement mechanics and lever principles to maximize the efficiency of the performer\'s force effort.',
    },
    'f9mrz39v': {
      'es': 'Notícias',
      'en': 'News',
    },
  },
  // Noticia2
  {
    'ujgkgzod': {
      'es': 'Beneficios\ndel Krav Maga',
      'en': 'Benefits\nof Krav Maga',
    },
    'njkm0kyi': {
      'es':
          'Salud Física\n1. Mejora la Condición Cardiovascular\nLas sesiones de entrenamiento de Krav Maga son intensivas y dinámicas, lo que ayuda a mejorar la resistencia cardiovascular. Los ejercicios de alta intensidad y las técnicas de combate aumentan la frecuencia cardíaca, mejorando la capacidad pulmonar y la eficiencia del corazón.\n\n2. Aumento de la Fuerza y Tono Muscular\nEl Krav Maga involucra movimientos que requieren fuerza y potencia, como golpes, patadas y bloqueos. Esto ayuda a desarrollar y tonificar los músculos de todo el cuerpo, especialmente en los brazos, piernas, abdomen y espalda.\n\n3. Mejora de la Flexibilidad y Movilidad\nLas técnicas de Krav Maga incluyen una variedad de movimientos que aumentan la flexibilidad y la movilidad articular. Los ejercicios de estiramiento y las técnicas de defensa que requieren agilidad y rapidez contribuyen a mantener el cuerpo flexible y libre de lesiones.\n\n4. Pérdida de Peso y Control del Peso Corporal\nLa intensidad del entrenamiento de Krav Maga quema una gran cantidad de calorías, lo que ayuda en la pérdida de peso y el mantenimiento de un peso saludable. Además, el aumento del metabolismo basal debido al incremento de la masa muscular también contribuye al control del peso a largo plazo.\n\n5. Mejora del Equilibrio y la Coordinación\nLas técnicas y los movimientos de Krav Maga requieren un buen equilibrio y coordinación. La práctica constante ayuda a mejorar estas habilidades, lo que también beneficia otras actividades físicas y deportivas.',
      'en':
          'Physical Health\n1. Improves Cardiovascular Condition\nKrav Maga training sessions are intensive and dynamic, which helps improve cardiovascular endurance. High-intensity exercises and combat techniques increase heart rate, improving lung capacity and heart efficiency.\n\n2. Increased Strength and Muscle Tone\nKrav Maga involves movements that require strength and power, such as punches, kicks, and blocks. This helps develop and tone muscles throughout the body, especially in the arms, legs, abdomen and back.\n\n3. Improved Flexibility and Mobility\nKrav Maga techniques include a variety of movements that increase flexibility and joint mobility. Stretching exercises and defensive techniques that require agility and quickness help keep the body flexible and injury-free.\n\n4. Weight Loss and Body Weight Control\nThe intensity of Krav Maga training burns a large number of calories, which helps in weight loss and maintaining a healthy weight. In addition, the increase in basal metabolism due to increased muscle mass also contributes to long-term weight control.\n\n5. Improved Balance and Coordination\nKrav Maga techniques and movements require good balance and coordination. Constant practice helps improve these skills, which also benefits other physical and sports activities.',
    },
    'i5lbldf9': {
      'es': 'Notícias',
      'en': 'News',
    },
  },
  // Noticia3
  {
    'egshggb7': {
      'es': 'Alerta',
      'en': 'Alert',
    },
    'wgz4gfu2': {
      'es':
          '¡Hola, querido lector! Hoy quiero hablarte sobre un tema importante que nos concierne a todos: la fuerza responsable y cómo podemos aplicarla para proteger nuestra seguridad y la de quienes nos rodean. Aunque no somos oficiales de policía, es crucial que conozcamos la importancia de esta facultad y cómo aplicarla de manera adecuada.\n\nLa Fuerza Responsable: Un Poder que Todos Poseemos\n\nSeguro has escuchado hablar de la fuerza utilizada por los oficiales de policía para protegernos. ¡Pero no te equivoques! La fuerza no es solo una habilidad exclusiva para ellos. Todos tenemos la capacidad de emplearla de forma responsable cuando nos enfrentamos a situaciones peligrosas o que pongan en riesgo nuestra integridad o la de otros.\n\nEl Análisis de Riesgo: Tu Aliado en la Seguridad\n\nCuando se trata de enfrentar situaciones delicadas, hacer un análisis de riesgo es vital. Sé que puede sonar complicado, pero es más simple de lo que parece. ',
      'en':
          'Hello, dear reader! Today I want to talk to you about an important topic that concerns us all: responsible force and how we can apply it to protect our safety and the safety of those around us. Although we are not police officers, it is crucial that we know the importance of this power and how to apply it appropriately.\n\nThe Responsible Force: A Power We All Possess\n\nYou\'ve probably heard about the force used by police officers to protect us. But make no mistake! Strength is not just an exclusive ability for them. We all have the ability to use it responsibly when we face dangerous situations or situations that put our integrity or that of others at risk.\n\nRisk Analysis: Your Ally in Security\n\nWhen it comes to facing delicate situations, doing a risk analysis is vital. I know it may sound complicated, but it\'s simpler than it seems.',
    },
    'ca5vb57x': {
      'es': 'Notícias',
      'en': 'News',
    },
  },
  // Miscellaneous
  {
    'm13hkndm': {
      'es': '',
      'en': '',
    },
    'qqew1y6s': {
      'es': '',
      'en': '',
    },
    'nz4f810h': {
      'es': '',
      'en': '',
    },
    'v05ra2ec': {
      'es': '',
      'en': '',
    },
    'o3owy1tx': {
      'es': '',
      'en': '',
    },
    'ptsazkr2': {
      'es': '',
      'en': '',
    },
    't22qf1tx': {
      'es': '',
      'en': '',
    },
    'sa4qiyuh': {
      'es': '',
      'en': '',
    },
    '0wyofcka': {
      'es': '',
      'en': '',
    },
    'vi8d9hfg': {
      'es': '',
      'en': '',
    },
    'vtnci909': {
      'es': '',
      'en': '',
    },
    'dlbsf7kk': {
      'es': '',
      'en': '',
    },
    'ean6bubn': {
      'es': '',
      'en': '',
    },
    'nu07507y': {
      'es': '',
      'en': '',
    },
    'vkhszlio': {
      'es': '',
      'en': '',
    },
    'bck3ztkk': {
      'es': '',
      'en': '',
    },
    'f0iur0wj': {
      'es': '',
      'en': '',
    },
    'q87y0u1k': {
      'es': '',
      'en': '',
    },
    'crbda66z': {
      'es': '',
      'en': '',
    },
    '1tp77txw': {
      'es': '',
      'en': '',
    },
    '8kybzq49': {
      'es': '',
      'en': '',
    },
    'm04s4y78': {
      'es': '',
      'en': '',
    },
    'bmb2thl7': {
      'es': '',
      'en': '',
    },
    'y3laps92': {
      'es': '',
      'en': '',
    },
    'i30tr9xg': {
      'es': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
