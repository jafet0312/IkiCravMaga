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
  // InfoHome
  {
    'ulqhiprq': {
      'es':
          'IKI CR Krav Maga fue fundado en el año 2014 por el instructor Erick Araya Hernández, se creó con la intención de preparar y capacitar a cada persona de la mejor manera, tanto la población civil como todas aquellas personas que dedican su vida a proteger y servir.',
      'en':
          'IKI CR Krav Maga was founded in 2014 by instructor Erick Araya Hernández. It was created with the intention of preparing and training each person in the best way, both the civilian population and all those people who dedicate their lives to protecting and serving.',
    },
    'h2s3dnnz': {
      'es':
          'Basamos nuestra técnica en la filosofía de IKI (Israelí Krav International), debemos ser rápidos y eficientes al defendernos, con esto disminuimos el riesgo que podamos correr al defendernos, logrando llevar a más personas sanas y salvas a sus hogares.\n',
      'en':
          'We base our technique on the philosophy of IKI (Israeli Krav International), we must be fast and efficient when defending ourselves, with this we reduce the risk we may run when defending ourselves, managing to bring more people safe and sound to their homes.',
    },
    'nfbhhqwh': {
      'es':
          'Costa Rica Krav Maga pertenece actualmente a la Federación Mundial de Krav Maga IKI (Israelí Krav International) al igual que cuenta con el respaldo de la Asociación Krav Maga Panamá para todos estos fines, al igual que en nuestro país contamos con el respaldo de la empresa de seguridad K9 G & S.',
      'en':
          'Costa Rica Krav Maga currently belongs to the World Federation of Krav Maga IKI (Israeli Krav International) and also has the support of the Krav Maga Association Panama for all these purposes, just as in our country we have the support of the security company K9 G & S.',
    },
    '5utu4wsd': {
      'es':
          'Podés escuchar ya mismo la historia del Krav Magá por medio de un interesante Podcast el cual puedes escuchar en cualquier momento!',
      'en':
          'You can listen to the history of Krav Maga right now through an interesting Podcast which you can listen to at any time!',
    },
    '3yqvenwu': {
      'es': 'Click Aquí!',
      'en': 'Click Here!',
    },
    'wb7830nw': {
      'es': 'Últimas noticias',
      'en': 'Latest news',
    },
    'pm5uwpec': {
      'es': 'Información',
      'en': 'Information',
    },
    'w4jw16rn': {
      'es': 'IKI CR Krav Maga',
      'en': 'IKI CR Krav Maga',
    },
    '0y6kkoe3': {
      'es': 'Información',
      'en': 'Information',
    },
  },
  // LoginApp
  {
    'zz5htu1c': {
      'es': 'Correo electrónico',
      'en': 'Email',
    },
    '3f4fu0v1': {
      'es': 'Contraseña',
      'en': 'Password',
    },
    'p9gsu83y': {
      'es': 'Iniciar Sesión',
      'en': 'Login',
    },
    'px48eeg1': {
      'es': 'Ingrese un correo electrónico',
      'en': 'Enter an email',
    },
    'okl1ueu2': {
      'es': 'Ingrese un correo válido',
      'en': 'Please enter a valid email',
    },
    '6lqwkoik': {
      'es': 'Por favor elija una opción del menú desplegable',
      'en': 'Please choose an option from the dropdown',
    },
    '1bqwgloh': {
      'es': 'Ingrese una contraseña',
      'en': 'Please enter a password',
    },
    '1spuml9b': {
      'es': 'La contraseña tiene mínimo 6 caracteres',
      'en': 'The password has at least 6 characters',
    },
    'v1e7f2p6': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    '2yxij0b1': {
      'es': 'No tienes cuenta? ',
      'en': 'Don\'t have an account?',
    },
    'cyghwrhk': {
      'es': 'Registrese aquí',
      'en': 'Register here',
    },
    'gvshka92': {
      'es': 'Términos y condiciones   ',
      'en': 'Terms and conditions',
    },
    '1wij18mi': {
      'es': 'Aquí',
      'en': 'Here',
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
  // RegistroUsuarios
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
      'es': 'Nombre Completo',
      'en': 'Full Name',
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
      'en': 'Register',
    },
    'nkjm0di9': {
      'es': 'Ingrese un correo válido',
      'en': 'Please enter a valid email',
    },
    'd3lzeimp': {
      'es': 'Ingrese un correo válido',
      'en': 'Please enter a valid email',
    },
    'xk7p99qc': {
      'es': 'Por favor elija una opción del menú desplegable',
      'en': 'Please choose an option from the drop-down menu',
    },
    'eoui1dlg': {
      'es': 'Ingrese su nombre',
      'en': 'Enter your name',
    },
    'rj3uchz7': {
      'es': 'Por favor elija una opción del menú desplegable',
      'en': 'Please choose an option from the drop-down menu',
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
      'en': 'Please choose an option from the drop-down menu',
    },
    'buoz0p8s': {
      'es': 'Ingrese una contraseña',
      'en': 'Please enter a password',
    },
    '41gd9scj': {
      'es': 'Contraseña con mínimo 6 caracteres',
      'en': 'Password with at least 6 characters',
    },
    'fxqy0dxb': {
      'es': 'Por favor elija una opción del menú desplegable',
      'en': 'Please choose an option from the drop-down menu',
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
      'en': 'Personal Information',
    },
    'vhltpbr4': {
      'es': 'Nombre: ',
      'en': 'Name:',
    },
    'tag5s145': {
      'es': 'Correo: ',
      'en': 'Mail:',
    },
    '0dtx17wt': {
      'es': 'Telefono : ',
      'en': 'Phone :',
    },
    't1779z3u': {
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
          'Felicitaciones, has completado con éxito el curso de manejo de cuchillo',
      'en':
          'Congratulations, you have successfully completed the knife handling course.',
    },
    '25f7l60p': {
      'es': 'Cerrar Sesión',
      'en': 'Close Session',
    },
    'fkun5m14': {
      'es': 'Perfil de Usuario',
      'en': 'User Profile',
    },
    'wsrdpx4a': {
      'es': 'Perfil',
      'en': 'Profile',
    },
  },
  // SugerenciasCliente
  {
    'c9ctsi2f': {
      'es': 'Encuesta de satisfacción',
      'en': 'Satisfaction survey',
    },
    'k9cnfi2j': {
      'es': 'Su opinión nos ayuda a mejorar continuamente su experiencia',
      'en': 'Your feedback helps us continually improve your experience.',
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
      'en': 'Suggestions',
    },
    'o742p6sh': {
      'es': 'Sugerencias',
      'en': 'Suggestions',
    },
  },
  // GuiasYT
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
      'en': 'User guides',
    },
    'g2ompirv': {
      'es': 'Inicio',
      'en': 'Home',
    },
  },
  // NoticiasApp
  {
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
          'We must know how to move and be able to repel a threat correctly and safely for ourselves and third parties.\n\nDesigned from beginner to advanced level where you can learn everything related to weapon handling.',
    },
    'to7bdpjg': {
      'es': 'Detalle de curso',
      'en': 'Course details',
    },
    's9x5xwet': {
      'es': 'Inicio',
      'en': 'Home',
    },
  },
  // AdminCursos
  {
    'flhc46l7': {
      'es': 'Admin Cursos',
      'en': 'Admin Courses',
    },
    'v1bcfxun': {
      'es': 'Inicio',
      'en': 'Home',
    },
  },
  // Preferencias
  {
    'n0vewkcp': {
      'es': 'Ajustar',
      'en': 'Adjust',
    },
    'zx6sftws': {
      'es': 'Letras',
      'en': 'Letters',
    },
    'kfdvmxyf': {
      'es': 'Seleccionar idioma',
      'en': 'Select language',
    },
    'fappjbor': {
      'es': 'Su opinión es importante para nosotros',
      'en': 'Your opinion is important to us',
    },
    '9zw2c5e3': {
      'es': 'Sugerencias',
      'en': 'Suggestions',
    },
    'q163imnh': {
      'es': 'Guias de uso',
      'en': 'User guides',
    },
    '500x7bpv': {
      'es': 'Preferencias',
      'en': 'Preferences',
    },
    'pleyjlv5': {
      'es': 'Preferencias',
      'en': 'Preferences',
    },
  },
  // RegistrarCursos
  {
    'wfn28rk3': {
      'es': 'Fecha',
      'en': 'Date',
    },
    'crfq214i': {
      'es': 'Seleccione una fecha',
      'en': 'Select a date',
    },
    'kb5eik2n': {
      'es': 'Nombre',
      'en': 'Name',
    },
    'd1ooo6oq': {
      'es': 'Precio',
      'en': 'Price',
    },
    'tjweg63j': {
      'es': 'Descripción',
      'en': 'Description',
    },
    'qokxr5fz': {
      'es': 'Cupos',
      'en': 'Quotas',
    },
    '30r1th5a': {
      'es': 'Crear',
      'en': 'Create',
    },
    'cxjhelxj': {
      'es': 'Atras',
      'en': 'Back',
    },
    '04xdzuzz': {
      'es': 'Field is required',
      'en': 'Field is required',
    },
    'iyd7o1l0': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'fiogqn6y': {
      'es': 'Campo requerido',
      'en': 'Required field',
    },
    'g7gga2yr': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'noesu0sf': {
      'es': 'Campo requerido',
      'en': 'Required field',
    },
    '0hbgn98c': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'wonpdz39': {
      'es': 'Campo requerido',
      'en': 'Required field',
    },
    '6bski8hn': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'hugrrtip': {
      'es': 'Guardar plantilla',
      'en': 'Save template',
    },
    'r8ywkf0p': {
      'es': 'Precio: ₡',
      'en': 'Price: ₡',
    },
    'e71yz5m6': {
      'es': 'Cupos: ',
      'en': 'Quotas:',
    },
    'tlcnbc3b': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // Informacion
  {
    '3q6cqsr7': {
      'es': 'Información',
      'en': 'Information',
    },
    'bhj68i07': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // ReproductorHistoriaKrav
  {
    'kezcscjt': {
      'es': 'Historia del Krav Magá',
      'en': 'History of Krav Maga',
    },
    'z6hmrs2y': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // Terminos
  {
    '15fwu9ip': {
      'es': 'Términos y condiciones',
      'en': 'Terms and conditions',
    },
    'mmsg45ey': {
      'es':
          'Al acceder y realizar un pedido con Iki cr krav maga, usted confirma que está de acuerdo y sujeto a los términos de servicio.\n\nIki cr krav maga no será responsable de ningún resultado que pueda ocurrir durante el curso del uso de nuestros recursos',
      'en':
          'By accessing and placing an order with Iki cr krav maga, you confirm that you agree to and are bound by the terms of service.\n\nIki cr krav maga will not be held responsible for any results that may occur during the course of using our resources',
    },
    'zs4bag0a': {
      'es': 'Licencia',
      'en': 'License',
    },
    'l6s9h6si': {
      'es':
          'Iki cr krav maga le otorga una licencia revocable, no exclusiva, intransferible y limitada para descargar, instalar y usar la app estrictamente de acuerdo con los términos de este Acuerdo. Estos Términos y condiciones son un contrato entre usted y Iki\ncr krav maga (\"nosotros\", \"nuestro\" o \"nos\").',
      'en':
          'Iki cr krav maga grants you a revocable, non-exclusive, non-transferable, limited license to download, install and use the App strictly in accordance with the terms of this Agreement. These Terms and Conditions are a contract between you and Iki cr krav maga (\"we\", \"our\" or \"us\").',
    },
    '3hthvsus': {
      'es': 'Restricciones',
      'en': 'Restrictions',
    },
    'o2wsmz54': {
      'es':
          'Usted acepta no hacerlo y no permitirá que otros:\n\nLicenciar, vender, alquilar, arrendar, asignar, distribuir, transmitir, alojar, subcontratar, divulgar o explotar\ncomercialmente la plataforma o poner la plataforma a disposición de terceros.\n\nModificar, realizar trabajos derivados, desensamblar, descifrar, realizar una compilación inversa o realizar ingeniería\ninversa de cualquier parte de la plataforma.\n\nEliminar, alterar u ocultar cualquier aviso de propiedad (incluido cualquier aviso de derechos de autor o marca\nregistrada) de sus afiliados, socios, proveedores o licenciatarios de la plataforma.',
      'en':
          'You agree not to, and will not allow others to:\n\nLicense, sell, rent, lease, assign, distribute, transmit, host, subcontract, disclose or commercially exploit the Platform or make the Platform available to any third party.\n\nModify, make derivative works of, disassemble, decrypt, reverse compile or reverse engineer any portion of the Platform.\n\nRemove, alter or obscure any proprietary notices (including any copyright or trademark notices) of the Platform\'s affiliates, partners, suppliers or licensors.',
    },
    'k60h10j1': {
      'es': 'Importante',
      'en': 'Important',
    },
    'ddkxxipw': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // Matricula
  {
    'ylvrkpk4': {
      'es': 'Matriculados',
      'en': 'Enrolled',
    },
    'k03wal3e': {
      'es': 'Matricula',
      'en': 'Tuition',
    },
    'ktzhqhkh': {
      'es': 'Matricula',
      'en': 'Tuition',
    },
  },
  // CursosMatriculados
  {
    'rgebz8yb': {
      'es': 'Cursos Matriculados',
      'en': 'Courses Enrolled',
    },
    'h2hs92kj': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // Entrenamientos
  {
    '19r939cb': {
      'es': 'Ataques Básicos',
      'en': 'Basic Attacks',
    },
    'rwgp6bvo': {
      'es': 'Defensa de Puñetazo',
      'en': 'Punch Defense',
    },
    '3xpxtafb': {
      'es': 'Defensa Estrangulación',
      'en': 'Strangulation Defense',
    },
    '8bpcv67x': {
      'es': 'Defensa con Bolígrafo',
      'en': 'Pen Defense',
    },
    'zlu3y0ne': {
      'es': 'Defensa Agarre de Pelo',
      'en': 'Hair Grab Defense',
    },
    'litg6u0i': {
      'es': 'Amenaza de Pistola',
      'en': 'Gun Threat',
    },
    'u6nicmfo': {
      'es': 'Defensa de suelo',
      'en': 'Ground defense',
    },
    'mll1ltru': {
      'es': 'Amenaza Cuchillo Rodillas',
      'en': 'Knife Threat Knees',
    },
    'txutpgmz': {
      'es': 'Abrazo del Oso',
      'en': 'Bear Hug',
    },
    '59pnrs5d': {
      'es': 'Defensa para Niños',
      'en': 'Defense for Children',
    },
    'e5zt51r2': {
      'es': 'Ataque a Media Distancia',
      'en': 'Mid-Distance Attack',
    },
    'kdd70scw': {
      'es': 'Ataque de Machete',
      'en': 'Machete Attack',
    },
    'ejmxe2l5': {
      'es': 'Agarre de Manos',
      'en': 'Handholding',
    },
    'olyzmvfi': {
      'es': 'Ante Secuestro',
      'en': 'Before Kidnapping',
    },
    'ba7vgyub': {
      'es': 'Anter Robo',
      'en': 'Previous Robbery',
    },
    '4dxhe6ew': {
      'es': 'Desarmar Atacante',
      'en': 'Disarm Attacker',
    },
    '1kmq9kvq': {
      'es': 'Cuchillo contra Paraguas',
      'en': 'Knife vs Umbrella',
    },
    'dijeycs7': {
      'es': 'Krav Magá 1-1',
      'en': 'Krav Maga 1-1',
    },
    '0llq9mrb': {
      'es': 'Krav Magá 1-2',
      'en': 'Krav Maga 1-2',
    },
    '5ca1gc2p': {
      'es': 'Krav Magá 1-3',
      'en': 'Krav Maga 1-3',
    },
    'oyd393ma': {
      'es': 'Entrenamientos',
      'en': 'Trainings',
    },
    'zahzcqq2': {
      'es': 'Inicio',
      'en': 'Start',
    },
  },
  // participantesMatriculados
  {
    'swhdknfw': {
      'es': 'Title',
      'en': '',
    },
    'e15he6iq': {
      'es': 'Subtitle goes here...',
      'en': '',
    },
    'joc57url': {
      'es': 'Page Title',
      'en': 'Nutrition',
    },
    '80xv863x': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // bs_inicioSesionFallido
  {
    '0g0uoysz': {
      'es': 'Inicio de sesión fallido',
      'en': 'Login failed',
    },
    'u8lyc0cp': {
      'es': 'Ok',
      'en': 'Ok',
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
      'en': 'Ok',
    },
  },
  // bs_editarUsuario
  {
    '8e2xlkjd': {
      'es': 'Editar Usuario',
      'en': 'Edit User',
    },
    'd8tb0vmo': {
      'es': 'Nombre',
      'en': 'Name',
    },
    '5cuqzpwe': {
      'es': 'Ingrese su nombre',
      'en': 'Enter your name',
    },
    'a29ccuwt': {
      'es': 'Teléfono',
      'en': 'Phone',
    },
    '61egp9y2': {
      'es': 'Ingrese su nombre',
      'en': 'Enter your name',
    },
    '3qozbqyd': {
      'es': 'Campo requerido',
      'en': 'Required field',
    },
    'o8835pko': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'jxp98tdi': {
      'es': 'Campo requerido',
      'en': 'Required field',
    },
    'o4l2fzb6': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    '2yvm4dhf': {
      'es': 'Guardar',
      'en': 'Keep',
    },
    'vrx9isb0': {
      'es': 'Atrás',
      'en': 'Back',
    },
  },
  // bs_sinCupos
  {
    'cfmhr5pw': {
      'es': 'Ya no hay campos disponibles',
      'en': 'There are no more fields available',
    },
    '2zq51973': {
      'es': 'Ok',
      'en': 'Ok',
    },
  },
  // bs_detalleCurso
  {
    '6jcfiksm': {
      'es': 'Horario: ',
      'en': 'Schedule:',
    },
    'ytvzqyn2': {
      'es': 'Descripción',
      'en': 'Description',
    },
    '9aivilef': {
      'es': 'Atras',
      'en': 'Back',
    },
  },
  // Miscellaneous
  {
    '9oyumbqv': {
      'es': '',
      'en': '',
    },
    'a1jjn6v2': {
      'es': '',
      'en': '',
    },
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
