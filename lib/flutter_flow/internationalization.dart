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
      'es': 'IKI CR Krav Maga',
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
    '3f4fu0v1': {
      'es': 'Contraseña',
      'en': 'Password',
    },
    'ykypsjnt': {
      'es': 'Iniciar Sesión',
      'en': 'Log in',
    },
    'px48eeg1': {
      'es': 'Ingrese un correo electrónico',
      'en': 'Enter an email',
    },
    'okl1ueu2': {
      'es': 'Ingrese un correo válido',
      'en': 'Enter a valid email',
    },
    '6lqwkoik': {
      'es': 'Por favor elija una opción del menú desplegable',
      'en': 'Please choose an option from the drop down menu',
    },
    '1bqwgloh': {
      'es': 'Ingrese una contraseña',
      'en': 'Enter a valid email',
    },
    '1spuml9b': {
      'es': 'La contraseña tiene mínimo 6 caracteres',
      'en': '',
    },
    'v1e7f2p6': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the drop down menu',
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
    '6pqmivzg': {
      'es': 'El correo electrónico ya está registrado',
      'en': 'Email is already registered',
    },
    's3wukcow': {
      'es': 'Registrar',
      'en': 'to register',
    },
    'nkjm0di9': {
      'es': 'Ingrese un correo válido',
      'en': 'Enter a valid email',
    },
    'd3lzeimp': {
      'es': 'Ingrese un correo válido',
      'en': 'Enter a valid email',
    },
    'xk7p99qc': {
      'es': 'Por favor elija una opción del menú desplegable',
      'en': 'Please choose an option from the drop down menu',
    },
    'eoui1dlg': {
      'es': 'Ingrese su nombre',
      'en': 'Enter your name',
    },
    'rj3uchz7': {
      'es': 'Por favor elija una opción del menú desplegable',
      'en': 'Please choose an option from the drop down menu',
    },
    '4cu2uwsd': {
      'es': 'Ingrese su número de teléfono',
      'en': 'Enter your phone number',
    },
    'mr1b6b5o': {
      'es': 'Ingrese un teléfono válido',
      'en': 'Please enter a valid phone number',
    },
    'kth5r2z8': {
      'es': 'Por favor elija una opción del menú desplegable',
      'en': 'Please choose an option from the drop down menu',
    },
    'buoz0p8s': {
      'es': 'Ingrese una contraseña',
      'en': 'Enter a password',
    },
    '41gd9scj': {
      'es': 'Contraseña con mínimo 6 caracteres',
      'en': 'Password with at least 6 characters',
    },
    'fxqy0dxb': {
      'es': 'Por favor elija una opción del menú desplegable',
      'en': 'Please choose an option from the drop down menu',
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
    'xz1rh3dn': {
      'es': 'Editar',
      'en': 'Edit',
    },
    'f1y65ekt': {
      'es': 'OK',
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
    '25f7l60p': {
      'es': 'Cerrar Sesión',
      'en': '',
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
      'en': 'Enroll',
    },
    'f50w72xs': {
      'es': 'Manejo de cuchillo',
      'en': 'Knife handling',
    },
    'vta1h13c': {
      'es': 'Horario: 6:00pm',
      'en': 'Time: 6:00pm',
    },
    'w1vwtf3a': {
      'es': 'Cursos Matriculados',
      'en': 'Enrolled Courses',
    },
    'qz0wh0uh': {
      'es': 'Eliminar',
      'en': 'Delete',
    },
    '1avc2tkg': {
      'es': 'Defensa con cuchillo',
      'en': 'Knife defense',
    },
    '7xjxj1uf': {
      'es': 'Fecha: 27/06/2024 - Horario: 8:00pm',
      'en': 'Date: 06/27/2024 - Time: 8:00pm',
    },
    'ihnbg6im': {
      'es': 'Guias de Uso',
      'en': 'Use Guides',
    },
    'ha5pfizv': {
      'es': 'Matrícula de cursos',
      'en': 'Course registration',
    },
    'hvcyvcbh': {
      'es': 'Matricula',
      'en': 'Tuition',
    },
  },
  // Sugerencias
  {
    'c9ctsi2f': {
      'es': 'Encuesta de satisfacción',
      'en': 'Satisfaction survey',
    },
    'k9cnfi2j': {
      'es': 'Su opinión nos ayuda a mejorar continuamente su experiencia',
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
    'gjngctx0': {
      'es': 'Sugerencias',
      'en': 'Myths and realities \nof Krav Maga',
    },
    'o742p6sh': {
      'es': 'Sugerencias',
      'en': 'Suggestions',
    },
  },
  // Guias
  {
    'mikm6b35': {
      'es': 'Entrevista 1',
      'en': 'Interview 1',
    },
    'ywwgf69o': {
      'es': 'Entrevista 2',
      'en': 'Interview 2',
    },
    'ug8vf1j1': {
      'es': 'Entrevista 3',
      'en': 'Interview 3',
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
      'en': 'Myths and realities of Krav Maga',
    },
    'tdforno9': {
      'es':
          'Conocé acerca de los mitos más comunes y sus realidades a la hora de practicar Krav Magá',
      'en':
          'Learn about the most common myths and their realities when practicing Krav Maga',
    },
    'zwsmvxdw': {
      'es': 'Beneficios del Krav Maga',
      'en': 'Benefits of Krav Maga',
    },
    'za97zf3l': {
      'es':
          'El Krav Maga no es solo una forma efectiva de defensa personal; también ofrece numerosos beneficios para la salud física y mental de quienes lo practican. ',
      'en':
          'Krav Maga is not only an effective form of self-defense; it also offers numerous benefits for the physical and mental health of those who practice it.',
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
    'xa7e1pkh': {
      'es': '20 Beneficios de practicarlo',
      'en': '20 Benefits of practicing it',
    },
    '581ql7qy': {
      'es':
          'Podemos observar como estos 20 beneficios del Krav Magá lo hace un sistema de defensa altamente efectivo!',
      'en':
          'We can see how these 20 benefits of Krav Maga make it a highly effective defense system!',
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
    'f9mrz39v': {
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
    'i5lbldf9': {
      'es': 'Notícias',
      'en': 'News',
    },
  },
  // DetalleNoticia
  {
    'yelkhmaa': {
      'es':
          'El Krav Maga es un método eficaz y realista de defensa personal que se ha popularizado a nivel mundial. Junto con el auge de la popularidad, ha habido muchos mitos y concepciones erróneas sobre el mundo del Krav Maga. En el siguiente artículo, hablamos sobre algunos de los mitos comunes y exponemos la verdad detrás de esta increíble disciplina.\n\nMito 1: El Krav Maga es solo un sistema de defensa personal militar y de fuerzas Realidad: Aunque Krav Maga se desarrolló principalmente dentro de las fuerzas de defensa de Israel y es un método que han utilizado muchas fuerzas de seguridad de todo el mundo, se basa en principios y pretende ser aprendido por cualquier individuo, independientemente de su profesión. Los métodos deben ser tan fáciles y útiles que una persona de cualquier edad y estado de forma pueda aprender y utilizar Krav Maga para su defensa.\n\nMito 2: El Krav Maga es muy violento Realidad: El Krav Maga es un sistema de la manera más efectiva para neutralizar amenazas y protegerse a sí mismo. Aunque el Krav Maga tiene aspectos de ataque, no es una \"artes marciales\" en cuanto a que no es un sistema de violencia gratuita, sino un sistema de autoprotección. Los estudiantes aprenden a evitar conflictos de interés cuando sea necesario y a recurrir a la fuerza solo como último recurso.\n\nMito 3: Krav Maga es un ejercicio efectivo solo para hombres: El Krav Maga es tan efectivo para las mujeres como para los hombres. De hecho, muchas mujeres encuentran que el Krav Maga es un gran nivelador en lo que respecta a la capacidad de autodefensa. Las técnicas están diseñadas para superar la desventaja de tamaño y fuerza usando la mecánica del movimiento y los principios de la palanca para maximizar la eficiencia del esfuerzo de fuerza del ejecutante.\n',
      'en':
          'Krav Maga is an effective and realistic method of self-defense that has become popular worldwide. Along with the rise in popularity, there have been many myths and misconceptions about the world of Krav Maga. In the following article, we talk about some of the common myths and expose the truth behind this incredible discipline.\n\nMyth 1: Krav Maga is only a military and force self-defense system Fact: Although Krav Maga was primarily developed within the Israeli defense forces and is a method that has been used by many security forces around the world, it is It is based on principles and is intended to be learned by any individual, regardless of their profession. The methods should be so easy and useful that a person of any age and fitness level can learn and use Krav Maga for their defense.\n\nMyth 2: Krav Maga is very violent Fact: Krav Maga is a system of the most effective way to neutralize threats and protect yourself. Although Krav Maga has attacking aspects, it is not a \"martial arts\" in that it is not a system of gratuitous violence, but rather a system of self-protection. Students learn to avoid conflicts of interest when necessary and to resort to force only as a last resort.\n\nMyth 3: Krav Maga is an effective exercise only for men: Krav Maga is as effective for women as it is for men. In fact, many women find Krav Maga to be a great equalizer when it comes to self-defense ability. The techniques are designed to overcome the size and strength disadvantage by using movement mechanics and lever principles to maximize the efficiency of the performer\'s force effort.',
    },
    '8uh5w0x0': {
      'es': 'Mitos y realidades \ndel Krav Maga',
      'en': 'Myths and realities \nof Krav Maga',
    },
    'ca5vb57x': {
      'es': 'Notícias',
      'en': 'News',
    },
  },
  // Preferencias
  {
    'ohzj79g4': {
      'es': 'Textos',
      'en': 'Texts',
    },
    'mpnwdgor': {
      'es': 'Letras',
      'en': 'Letters',
    },
    'x1tehc50': {
      'es': 'Seleccionar idioma',
      'en': 'Select language',
    },
    '7hba4nvg': {
      'es': 'Su opinión es importante para nosotros',
      'en': 'Your opinion is important for us',
    },
    '49ek4dst': {
      'es': 'Sugerencias',
      'en': 'Suggestions',
    },
    '9f306or7': {
      'es': 'Preferencias',
      'en': 'Preferences',
    },
    'gs3gnckf': {
      'es': 'Preferencias',
      'en': 'Preferences',
    },
  },
  // AdminCursos
  {
    'u4ug1odu': {
      'es': 'Nuevo',
      'en': 'New',
    },
    'f0lywkb2': {
      'es': 'Share',
      'en': 'Compartir',
    },
    'flhc46l7': {
      'es': 'Admin Cursos',
      'en': '',
    },
    'v1bcfxun': {
      'es': 'Inicio',
      'en': 'Home',
    },
  },
  // Noticia1
  {
    'ufxpf2qo': {
      'es': 'Mitos y realidades\ndel Krav Magá',
      'en': 'Benefits\nof Krav Maga',
    },
    't5e6ujrj': {
      'es':
          'El Krav Maga es un método eficaz y realista de defensa personal que se ha popularizado a nivel mundial. Junto con el auge de la popularidad, ha habido muchos mitos y concepciones erróneas sobre el mundo del Krav Maga. En el siguiente artículo, hablamos sobre algunos de los mitos comunes y exponemos la verdad detrás de esta increíble disciplina.\n\nMito 1: El Krav Maga es solo un sistema de defensa personal militar y de fuerzas Realidad: Aunque Krav Maga se desarrolló principalmente dentro de las fuerzas de defensa de Israel y es un método que han utilizado muchas fuerzas de seguridad de todo el mundo, se basa en principios y pretende ser aprendido por cualquier individuo, independientemente de su profesión. Los métodos deben ser tan fáciles y útiles que una persona de cualquier edad y estado de forma pueda aprender y utilizar Krav Maga para su defensa.\n\nMito 2: El Krav Maga es muy violento Realidad: El Krav Maga es un sistema de la manera más efectiva para neutralizar amenazas y protegerse a sí mismo. Aunque el Krav Maga tiene aspectos de ataque, no es una \"artes marciales\" en cuanto a que no es un sistema de violencia gratuita, sino un sistema de autoprotección. Los estudiantes aprenden a evitar conflictos de interés cuando sea necesario y a recurrir a la fuerza solo como último recurso.\n\nMito 3: Krav Maga es un ejercicio efectivo solo para hombres: El Krav Maga es tan efectivo para las mujeres como para los hombres. De hecho, muchas mujeres encuentran que el Krav Maga es un gran nivelador en lo que respecta a la capacidad de autodefensa. Las técnicas están diseñadas para superar la desventaja de tamaño y fuerza usando la mecánica del movimiento y los principios de la palanca para maximizar la eficiencia del esfuerzo de fuerza del ejecutante.\n\nMito 4: Tienes que estar en una condición perfecta para poder hacer Krav Maga: El Krav Maga es un sistema destinado a ser aprendido y practicado por estudiantes con cualquier nivel de condición física. Si bien es cierto que está bien estar en buena forma física, no es necesario estar en forma antes de comenzar a entrenar. La mayoría de las clases de Krav Maga enseñan ejercicio progresivo en un ambiente físico que, a su vez, aumenta la condición física a medida que el estudiante aprende el programa de entrenamiento de defensa personal. \n\nMito 5: El Krav Maga es solo para adultos: Hay programas de Krav Maga específicamente para niños y adolescentes. Estos programas no solo enseñan a los niños técnicas de autodefensa, sino que también ayudan a enseñar disciplina, confianza y respeto. La capacidad de aprender Krav Maga a una edad temprana puede, por lo tanto, proporcionar a los jóvenes lo que necesitan para desarrollarse y defenderse.\n\nMito 6: La única manera de aprender Krav Maga es en Israel: El Krav Maga fue creado en Israel, pero la instrucción de esta técnica se ha popularizado internacionalmente y, hasta la fecha, hay academias y expertos de alto nivel en todos los países. No es obligatorio ir a Israel para obtener la mejor instrucción de Krav Maga; lo único que tiene que hacer es buscar un buen instructor y un buen programa en su localidad.\n\nMito 7: El Krav Maga es puramente defensa personal, no es una opción de entrenamiento robusta: Más allá de ser un sistema de defensa muy fuerte, Krav Maga también es un buen entrenamiento físico. Las rutinas son esencialmente una combinación de ejercicios cardiovasculares, de resistencia y de fuerza, lo que resulta en un buen ejercicio que mejora la fuerza, la flexibilidad y el equilibrio general del cuerpo. \n\nEl Krav Maga es una disciplina práctica y alcanzable que proporciona herramientas reales tanto para la defensa personal como para el acondicionamiento físico. Al desmitificarlo, esperamos haber borrado algunas de las mistificaciones incorrectas del Krav Maga y haber pintado un panorama más realista de lo que realmente es. \n\nPor lo tanto, si siempre has querido aprender Krav Maga, debes saber que será la maravillosa y oportuna elección para cualquier persona, independientemente de la edad, el sexo o el estado físico. \n\nPruébalo y experimenta por ti mismo cómo este arte puede transformar tu existencia de manera inimaginable.\n\nTe esperamos en IKICR Krav Maga.',
      'en':
          'Physical Health\n1. Improves Cardiovascular Condition\nKrav Maga training sessions are intensive and dynamic, which helps improve cardiovascular endurance. High-intensity exercises and combat techniques increase heart rate, improving lung capacity and heart efficiency.\n\n2. Increased Strength and Muscle Tone\nKrav Maga involves movements that require strength and power, such as punches, kicks, and blocks. This helps develop and tone muscles throughout the body, especially in the arms, legs, abdomen and back.\n\n3. Improved Flexibility and Mobility\nKrav Maga techniques include a variety of movements that increase flexibility and joint mobility. Stretching exercises and defensive techniques that require agility and quickness help keep the body flexible and injury-free.\n\n4. Weight Loss and Body Weight Control\nThe intensity of Krav Maga training burns a large number of calories, which helps in weight loss and maintaining a healthy weight. In addition, the increase in basal metabolism due to increased muscle mass also contributes to long-term weight control.\n\n5. Improved Balance and Coordination\nKrav Maga techniques and movements require good balance and coordination. Constant practice helps improve these skills, which also benefits other physical and sports activities.',
    },
    'ptae2u9m': {
      'es': 'Notícias',
      'en': 'News',
    },
  },
  // Noticia4
  {
    'sh8v6p4x': {
      'es': '20 Beneficios',
      'en': '20 Benefits',
    },
    'omelhk5i': {
      'es':
          '¿Estás buscando un sistema de defensa personal altamente efectivo y práctico? El Krav Maga podría ser la respuesta que estás buscando. Como instructor de este sistema de combate cuerpo a cuerpo, estoy aquí para compartir contigo 20 lecciones y beneficios que obtendrás al practicar Krav Maga. Desde la mejora de tu autoconfianza hasta el desarrollo de habilidades de autodefensa efectivas, el Krav Maga tiene mucho que ofrecer. ¡Acompáñame mientras exploramos los beneficios de este emocionante sistema de defensa!\n\n1. Autoconfianza: Con el Krav Maga, desarrollarás una confianza inquebrantable en ti mismo y en tus habilidades para protegerte y defenderte en situaciones peligrosas.\n\n2. Autodefensa eficaz: El enfoque central del Krav Maga es proporcionarte técnicas prácticas y realistas para enfrentar amenazas y ataques reales.\n\n3. Entrenamiento físico completo: Además de aprender a defenderte, el Krav Maga te brinda una excelente forma de ejercicio que mejorará tu fuerza, resistencia, flexibilidad y coordinación.\n\n4. Aumento de la conciencia situacional: El Krav Maga te enseñará a leer y evaluar mejor las situaciones peligrosas, permitiéndote tomar decisiones informadas y evitar amenazas potenciales.\n\n5. Respuesta rápida y eficiente: Las técnicas directas y simples del Krav Maga te permiten responder rápidamente ante una amenaza y neutralizarla de la manera más eficiente posible.\n\n6. Adaptabilidad: El Krav Maga se adapta a diferentes situaciones y entornos, preparándote para enfrentar cualquier escenario impredecible que puedas encontrar.\n\n7. Sin requisitos previos: Cualquiera puede aprender y beneficiarse del Krav Maga, sin importar su edad, estado físico o nivel de experiencia previa en artes marciales.\n\n8. Mejora de la coordinación y el equilibrio: El entrenamiento regular en Krav Maga mejorará tu coordinación mano-ojo, así como tu equilibrio y estabilidad general.\n\n9. Reducción del estrés: Practicar Krav Maga te permitirá liberar el estrés acumulado mientras te concentras en el entrenamiento y las técnicas.\n\n10. Promoción de la disciplina y la perseverancia: A través del Krav Maga, desarrollarás habilidades de disciplina y perseverancia que te ayudarán a superar los desafíos físicos y mentales.\n\n11. Mejora de la agilidad mental: El Krav Maga requiere que estés alerta y tomes decisiones rápidas, mejorando así tu agilidad mental y capacidad de reacción.\n\n12. Aumento de la resistencia emocional: A medida que enfrentes situaciones de estrés durante el entrenamiento, aprenderás a controlar tus emociones y a tomar decisiones efectivas bajo presión.\n\n13. Desarrollo de la fuerza mental: El Krav Maga te enseñará a superar tus propios límites y a enfrentar desafíos físicos y mentales, fortaleciendo así tu fuerza mental en el proceso.\n\n14. Mejora de la postura y la forma física: El entrenamiento en Krav Maga te ayudará a mejorar tu postura y tu forma física en general, lo que tendrá beneficios tanto para tu salud como para tu apariencia física.\n\n15. Conciencia de la seguridad personal: El Krav Maga te enseñará a evaluar y fortalecer la seguridad en tu entorno, así como a reconocer posibles amenazas antes de que se conviertan en situaciones peligrosas.\n\n16. Enseñanza de principios morales: Aunque el Krav Maga se centra en la autodefensa, también promueve la ética y los principios morales. Aprenderás a utilizar tus habilidades solo en situaciones de legítima defensa y a actuar con responsabilidad y respeto hacia los demás.\n\n17. Mejora de la coordinación mente-cuerpo: El Krav Maga requiere una conexión estrecha entre la mente y el cuerpo. A medida que aprendes y practicas las técnicas, mejorarás la coordinación entre tus movimientos y tu pensamiento.\n\n18. Desarrollo de habilidades de resolución de problemas: En el Krav Maga, aprenderás a evaluar rápidamente una situación y a encontrar soluciones efectivas para neutralizar una amenaza. Estas habilidades de resolución de problemas se pueden aplicar en otras áreas de tu vida.\n\n19. Comunidad y camaradería: Practicar Krav Maga te brinda la oportunidad de formar parte de una comunidad de personas con intereses similares. Puedes establecer relaciones duraderas, compartir experiencias y apoyarte mutuamente en tu viaje de entrenamiento.\n\n20. Preparación para situaciones de emergencia: El Krav Maga te enseña a estar preparado para situaciones de emergencia o crisis, brindándote las habilidades necesarias para protegerte a ti mismo y a tus seres queridos cuando más lo necesiten.\n\nConclusión:\n\nEl Krav Maga ofrece mucho más que solo aprender a defenderse. Al practicar este sistema de defensa personal, obtendrás una amplia gama de beneficios, desde el aumento de la confianza y la mejora del estado físico hasta el desarrollo de habilidades de resolución de problemas y la promoción de principios morales.\n\nAdemás, formarás parte de una comunidad de personas dedicadas a la autodefensa y podrás estar preparado para enfrentar situaciones de emergencia. Así que, ¿qué estás esperando? ¡Empieza a practicar Krav Maga y descubre todo lo que puedes lograr tanto dentro como fuera del tatami!',
      'en':
          'Are you looking for a highly effective and practical self-defense system? Krav Maga might just be the answer you\'re looking for. As an instructor of this hand-to-hand combat system, I\'m here to share with you 20 lessons and benefits you\'ll gain from practicing Krav Maga. From improving your self-confidence to developing effective self-defense skills, Krav Maga has a lot to offer. Join me as we explore the benefits of this exciting defense system!\n\n1. Self-confidence: With Krav Maga, you\'ll develop unwavering confidence in yourself and your abilities to protect and defend yourself in dangerous situations.\n\n2. Effective self-defense: The core focus of Krav Maga is to provide you with practical and realistic techniques to deal with real threats and attacks.\n\n3. Complete physical training: In addition to learning how to defend yourself, Krav Maga gives you an excellent form of exercise that will improve your strength, endurance, flexibility, and coordination.\n\n4. Increased Situational Awareness: Krav Maga will teach you to better read and assess dangerous situations, allowing you to make informed decisions and avoid potential threats.\n\n5. Quick and Efficient Response: Krav Maga\'s direct and simple techniques allow you to quickly respond to a threat and neutralize it in the most efficient way possible.\n\n6. Adaptability: Krav Maga adapts to different situations and environments, preparing you to face any unpredictable scenario you may encounter.\n\n7. No Prerequisites: Anyone can learn and benefit from Krav Maga, regardless of age, fitness level, or level of prior martial arts experience.\n\n8. Improved Coordination and Balance: Regular training in Krav Maga will improve your hand-eye coordination, as well as your overall balance and stability.\n\n9. Stress Reduction: Practicing Krav Maga will allow you to release built-up stress while focusing on training and techniques.\n\n10. Promotion of discipline and perseverance: Through Krav Maga, you will develop discipline and perseverance skills that will help you overcome physical and mental challenges.\n\n11. Improved mental agility: Krav Maga requires you to be alert and make quick decisions, thus improving your mental agility and reaction ability.\n\n12. Increased emotional resilience: As you face stressful situations during training, you will learn to control your emotions and make effective decisions under pressure.\n\n13. Development of mental strength: Krav Maga will teach you to overcome your own limits and face physical and mental challenges, thus strengthening your mental strength in the process.\n\n14. Improved posture and fitness: Krav Maga training will help you improve your posture and overall fitness, which will have benefits for both your health and physical appearance.\n\n15. Personal Safety Awareness: Krav Maga will teach you how to assess and strengthen safety in your environment, as well as recognize potential threats before they become dangerous situations.\n\n16. Teaching Moral Principles: Although Krav Maga focuses on self-defense, it also promotes ethics and moral principles. You will learn to use your skills only in self-defense situations and to act responsibly and respectfully toward others.\n\n17. Improving Mind-Body Coordination: Krav Maga requires a close connection between the mind and the body. As you learn and practice the techniques, you will improve the coordination between your movements and your thinking.\n\n18. Developing Problem-Solving Skills: In Krav Maga, you will learn how to quickly assess a situation and find effective solutions to neutralize a threat. These problem-solving skills can be applied in other areas of your life.\n\n19. Community and Camaraderie: Practicing Krav Maga gives you the opportunity to become part of a community of people with similar interests. You can build long-lasting relationships, share experiences, and support each other on your training journey.\n\n20. Emergency Preparedness: Krav Maga teaches you to be prepared for emergency or crisis situations, giving you the skills to protect yourself and your loved ones when they need it most.\n\nBottom Line:\n\nKrav Maga offers much more than just learning how to defend yourself. By practicing this self-defense system, you will gain a wide range of benefits, from increased confidence and improved fitness to developing problem-solving skills and promoting moral principles.\n\nIn addition, you will become part of a community of people dedicated to self-defense and will be able to be prepared to face emergency situations. So, what are you waiting for? Start practicing Krav Maga and discover all that you can achieve both on and off the mat!',
    },
    'xtvfdhj8': {
      'es': 'Notícias',
      'en': 'News',
    },
  },
  // bs_inicioSesionFallido
  {
    '0g0uoysz': {
      'es': 'Inicio de sesión fallido',
      'en': 'Email is already registered',
    },
    'u8lyc0cp': {
      'es': 'Ok',
      'en': 'to register',
    },
  },
  // bs_SugerenciaEnviada
  {
    '8l685lm8': {
      'es': 'Muchas gracias por compartir su opinión con nosotros',
      'en': 'Thank you very much for sharing your opinion with us.',
    },
    '5eae1kag': {
      'es': 'Ok',
      'en': 'Okay',
    },
  },
  // bs_AdminProgramarCurso
  {
    'epmuzyar': {
      'es': 'Nombre',
      'en': 'Name',
    },
    'alx98zli': {
      'es': 'Precio',
      'en': 'Price',
    },
    'cpwwonbv': {
      'es': 'Descripción',
      'en': 'Description',
    },
    '6zb5sgnq': {
      'es': 'Cupos',
      'en': 'Quotas',
    },
    'udn4a5y1': {
      'es': 'Publicar',
      'en': 'Post',
    },
    '4hos3lsz': {
      'es': 'Atras',
      'en': 'Back',
    },
    'p36b8mjl': {
      'es': 'Plantillas',
      'en': 'Templates',
    },
    '7e01qh4t': {
      'es': 'Precio: ₡',
      'en': 'Price: ₡',
    },
    '7tqk1obj': {
      'es': 'Cupos: ',
      'en': 'Quotas:',
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
