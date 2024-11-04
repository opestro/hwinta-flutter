/// Generated file. Do not edit.
///
/// Original: lib/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 3513 (1756 per locale)
///
/// Built on 2024-08-25 at 15:24 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.en;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale with BaseAppLocale<AppLocale, Translations> {
	en(languageCode: 'en', build: Translations.build),
	ar(languageCode: 'ar', build: _StringsAr.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, Translations> build;

	/// Gets current instance managed by [LocaleSettings].
	Translations get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of t).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = t.someKey.anotherKey;
/// String b = t['someKey.anotherKey']; // Only for edge cases!
Translations get t => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final t = Translations.of(context); // Get t variable.
/// String a = t.someKey.anotherKey; // Use t variable.
/// String b = t['someKey.anotherKey']; // Only for edge cases!
class TranslationProvider extends BaseTranslationProvider<AppLocale, Translations> {
	TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

	static InheritedLocaleData<AppLocale, Translations> of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.t.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	Translations get t => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, Translations> {
	LocaleSettings._() : super(utils: AppLocaleUtils.instance);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static AppLocale setLocale(AppLocale locale, {bool? listenToDeviceLocale = false}) => instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale setLocaleRaw(String rawLocale, {bool? listenToDeviceLocale = false}) => instance.setLocaleRaw(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale useDeviceLocale() => instance.useDeviceLocale();
	@Deprecated('Use [AppLocaleUtils.supportedLocales]') static List<Locale> get supportedLocales => instance.supportedLocales;
	@Deprecated('Use [AppLocaleUtils.supportedLocalesRaw]') static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, Translations> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}

// translations

// Path: <root>
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	String get appName => 'feeef marchant';
	String get all => 'All';
	String get loadMore => 'Load More';
	String get soon => 'Coming Soon';
	late final _StringsGeneralEn general = _StringsGeneralEn._(_root);
	late final _StringsAuthEn auth = _StringsAuthEn._(_root);
	late final _StringsProductsEn products = _StringsProductsEn._(_root);
	late final _StringsUsersEn users = _StringsUsersEn._(_root);
	late final _StringsOrdersEn orders = _StringsOrdersEn._(_root);
	late final _StringsStoresEn stores = _StringsStoresEn._(_root);
	late final _StringsDashboardEn dashboard = _StringsDashboardEn._(_root);
	List<String> get states => [
		'Adrar',
		'Chlef',
		'Laghouat',
		'Oum el bouaghi',
		'Batna',
		'Bejaia',
		'Biskra',
		'Bechar',
		'Blida',
		'Bouira',
		'Tamanrasset',
		'Tebessa',
		'Tlemcen',
		'Tiaret',
		'Tizi ouzou',
		'Alger',
		'Djelfa',
		'Jijel',
		'Setif',
		'Saida',
		'Skikda',
		'Sidi bel abbes',
		'Annaba',
		'Guelma',
		'Constantine',
		'Medea',
		'Mostaganem',
		'Msila',
		'Mascara',
		'Ouargla',
		'Oran',
		'El bayadh',
		'Illizi',
		'Bordj bou arreridj',
		'Boumerdes',
		'El tarf',
		'Tindouf',
		'Tissemsilt',
		'El oued',
		'Khenchela',
		'Souk ahras',
		'Tipaza',
		'Mila',
		'Ain defla',
		'Naama',
		'Ain temouchent',
		'Ghardaia',
		'Relizane',
		'Timimoun',
		'Bordj badji mokhtar',
		'Ouled djellal',
		'Beni abbes',
		'In salah',
		'In guezzam',
		'Touggourt',
		'Djanet',
		'El meghaier',
		'El menia',
	];
	List<List<String>> get cities => [
		[
			'Adrar',
			'Akabli',
			'Aoulef',
			'Bouda',
			'Fenoughil',
			'In Zghmir',
			'Ouled Ahmed Timmi',
			'Reggane',
			'Sali',
			'Sebaa',
			'Tamantit',
			'Tamest',
			'Timekten',
			'Tit',
			'Tsabit',
			'Zaouiet Kounta',
		],
		[
			'Abou El Hassan',
			'Ain Merane',
			'Benairia',
			'Beni Bouattab',
			'Beni Haoua',
			'Beni Rached',
			'Boukadir',
			'Bouzeghaia',
			'Breira',
			'Chettia',
			'Chlef',
			'Dahra',
			'El Hadjadj',
			'El Karimia',
			'El Marsa',
			'Harchoun',
			'Herenfa',
			'Labiod Medjadja',
			'Moussadek',
			'Oued Fodda',
			'Oued Goussine',
			'Oued Sly',
			'Ouled Abbes',
			'Ouled Ben Abdelkader',
			'Ouled Fares',
			'Oum Drou',
			'Sendjas',
			'Sidi Abderrahmane',
			'Sidi Akkacha',
			'Sobha',
			'Tadjena',
			'Talassa',
			'Taougrite',
			'Tenes',
			'Zeboudja',
		],
		[
			'Aflou',
			'Ain Mahdi',
			'Ain Sidi Ali',
			'Beidha',
			'Benacer Benchohra',
			'Brida',
			'El Assafia',
			'El Ghicha',
			'El Haouaita',
			'Gueltat Sidi Saad',
			'Hadj Mechri',
			'Hassi Delaa',
			'Hassi R\'mel',
			'Kheneg',
			'Ksar El Hirane',
			'Laghouat',
			'Oued M\'zi',
			'Oued Morra',
			'Sebgag',
			'Sidi Bouzid',
			'Sidi Makhlouf',
			'Tadjemout',
			'Tadjrouna',
			'Taouiala',
		],
		[
			'Ain Babouche',
			'Ain Beida',
			'Ain Diss',
			'Ain Fekroune',
			'Ain Kercha',
			'Ain M\'lila',
			'Ain Zitoun',
			'Behir Chergui',
			'Berriche',
			'Bir Chouhada',
			'Dhala',
			'El Amiria',
			'El Belala',
			'El Djazia',
			'El Fedjoudj Boughrara Sa',
			'El Harmilia',
			'Fkirina',
			'Hanchir Toumghani',
			'Ksar Sbahi',
			'Meskiana',
			'Oued Nini',
			'Ouled Gacem',
			'Ouled Hamla',
			'Ouled Zouai',
			'Oum El Bouaghi',
			'Rahia',
			'Sigus',
			'Souk Naamane',
			'Zorg',
		],
		[
			'Ain Djasser',
			'Ain Touta',
			'Ain Yagout',
			'Arris',
			'Azil Abedelkader',
			'Barika',
			'Batna',
			'Beni Foudhala El Hakania',
			'Bitam',
			'Boulhilat',
			'Boumagueur',
			'Boumia',
			'Bouzina',
			'Chemora',
			'Chir',
			'Djerma',
			'Djezzar',
			'El Hassi',
			'El Madher',
			'Fesdis',
			'Foum Toub',
			'Ghassira',
			'Gosbat',
			'Guigba',
			'Hidoussa',
			'Ichmoul',
			'Inoughissen',
			'Kimmel',
			'Ksar Bellezma',
			'Larbaa',
			'Lazrou',
			'Lemsane',
			'M Doukal',
			'Maafa',
			'Menaa',
			'Merouana',
			'N Gaous',
			'Oued Chaaba',
			'Oued El Ma',
			'Oued Taga',
			'Ouled Ammar',
			'Ouled Aouf',
			'Ouled Fadel',
			'Ouled Sellem',
			'Ouled Si Slimane',
			'Ouyoun El Assafir',
			'Rahbat',
			'Ras El Aioun',
			'Sefiane',
			'Seggana',
			'Seriana',
			'T Kout',
			'Talkhamt',
			'Taxlent',
			'Tazoult',
			'Teniet El Abed',
			'Tighanimine',
			'Tigharghar',
			'Tilatou',
			'Timgad',
			'Zanet El Beida',
		],
		[
			'Adekar',
			'Ait R\'zine',
			'Ait Smail',
			'Akbou',
			'Akfadou',
			'Amalou',
			'Amizour',
			'Aokas',
			'Barbacha',
			'Bejaia',
			'Beni Dejllil',
			'Beni K\'sila',
			'Beni Mallikeche',
			'Benimaouche',
			'Boudjellil',
			'Bouhamza',
			'Boukhelifa',
			'Chellata',
			'Chemini',
			'Darghina',
			'Dra El Caid',
			'El Kseur',
			'Fenaia Il Maten',
			'Feraoun',
			'Ighil Ali',
			'Ighram',
			'Kendira',
			'Kherrata',
			'Leflaye',
			'M\'cisna',
			'Melbou',
			'Oued Ghir',
			'Ouzellaguene',
			'Seddouk',
			'Sidi Aich',
			'Sidi Ayad',
			'Smaoun',
			'Souk El Tenine',
			'Souk Oufella',
			'Tala Hamza',
			'Tamokra',
			'Tamridjet',
			'Taourit Ighil',
			'Taskriout',
			'Tazmalt',
			'Tibane',
			'Tichy',
			'Tifra',
			'Timezrit',
			'Tinebdar',
			'Tizi N\'berber',
			'Toudja',
		],
		[
			'Ain Naga',
			'Ain Zaatout',
			'Biskra',
			'Bordj Ben Azzouz',
			'Bouchagroun',
			'Branis',
			'Chetma',
			'Djemorah',
			'El Feidh',
			'El Ghrous',
			'El Hadjab',
			'El Haouch',
			'El Kantara',
			'El Outaya',
			'Foughala',
			'Khenguet Sidi Nadji',
			'Lichana',
			'Lioua',
			'M\'chouneche',
			'M\'lili',
			'Mekhadma',
			'Meziraa',
			'Oumache',
			'Ourlal',
			'Sidi Okba',
			'Tolga',
			'Zeribet El Oued',
		],
		[
			'Abadla',
			'Bechar',
			'Beni Ounif',
			'Boukais',
			'Erg Ferradj',
			'Kenadsa',
			'Lahmar',
			'Mechraa H.boumediene',
			'Meridja',
			'Mogheul',
			'Taghit',
		],
		[
			'Ain Romana',
			'Beni Mered',
			'Beni Tamou',
			'Benkhelil',
			'Blida',
			'Bouarfa',
			'Boufarik',
			'Bougara',
			'Bouinan',
			'Chebli',
			'Chiffa',
			'Chrea',
			'Djebabra',
			'El Affroun',
			'Guerrouaou',
			'Hammam Melouane',
			'Larbaa',
			'Meftah',
			'Mouzaia',
			'Oued Djer',
			'Oued El Alleug',
			'Ouled Slama',
			'Ouled Yaich',
			'Souhane',
			'Souma',
		],
		[
			'Aghbalou',
			'Ahl El Ksar',
			'Ain Bessem',
			'Ain El Hadjar',
			'Ain Laloui',
			'Ain Turk',
			'Ait Laaziz',
			'Aomar',
			'Bechloul',
			'Bir Ghbalou',
			'Bordj Okhriss',
			'Bouderbala',
			'Bouira',
			'Boukram',
			'Chorfa',
			'Dechmia',
			'Dirah',
			'Djebahia',
			'El Adjiba',
			'El Asnam',
			'El Hachimia',
			'El Hakimia',
			'El Khabouzia',
			'El Mokrani',
			'Guerrouma',
			'Hadjera Zerga',
			'Haizer',
			'Hanif',
			'Kadiria',
			'Lakhdaria',
			'M Chedallah',
			'Maala',
			'Mamora',
			'Mezdour',
			'Oued El Berdi',
			'Ouled Rached',
			'Raouraoua',
			'Ridane',
			'Saharidj',
			'Souk El Khemis',
			'Sour El Ghozlane',
			'Taghzout',
			'Taguedite',
			'Taourirt',
			'Z\'barbar',
		],
		[
			'Abalessa',
			'Ain Amguel',
			'Idles',
			'Tamanrasset',
			'Tazrouk',
		],
		[
			'Ain Zerga',
			'Bedjene',
			'Bekkaria',
			'Bir Dheheb',
			'Bir El Ater',
			'Bir Mokkadem',
			'Boukhadra',
			'Boulhaf Dyr',
			'Cheria',
			'El Aouinet',
			'El Houidjbet',
			'El Kouif',
			'El Malabiod',
			'El Meridj',
			'El Mezeraa',
			'El Ogla',
			'El Ogla El Malha',
			'Ferkane',
			'Guorriguer',
			'Hammamet',
			'Morssot',
			'Negrine',
			'Ouenza',
			'Oum Ali',
			'Saf Saf El Ouesra',
			'Stah Guentis',
			'Tebessa',
			'Telidjen',
		],
		[
			'Ain Fettah',
			'Ain Fezza',
			'Ain Ghoraba',
			'Ain Kebira',
			'Ain Nehala',
			'Ain Tallout',
			'Ain Youcef',
			'Amieur',
			'Azails',
			'Bab El Assa',
			'Beni Bahdel',
			'Beni Boussaid',
			'Beni Khaled',
			'Beni Mester',
			'Beni Ouarsous',
			'Beni Smiel',
			'Beni Snous',
			'Bensekrane',
			'Bouhlou',
			'Bouihi',
			'Chetouane',
			'Dar Yaghmouracene',
			'Djebala',
			'El Aricha',
			'El Fehoul',
			'El Gor',
			'Fellaoucene',
			'Ghazaouet',
			'Hammam Boughrara',
			'Hennaya',
			'Honaine',
			'Maghnia',
			'Mansourah',
			'Marsa Ben M\'hidi',
			'Msirda Fouaga',
			'Nedroma',
			'Oued Chouly',
			'Ouled Mimoun',
			'Ouled Riyah',
			'Remchi',
			'Sabra',
			'Sebbaa Chioukh',
			'Sebdou',
			'Sidi Abdelli',
			'Sidi Djilali',
			'Sidi Medjahed',
			'Souahlia',
			'Souani',
			'Souk Tleta',
			'Terny Beni Hediel',
			'Tianet',
			'Tlemcen',
			'Zenata',
		],
		[
			'Ain Bouchekif',
			'Ain Deheb',
			'Ain El Hadid',
			'Ain Kermes',
			'Ain Zarit',
			'Bougara',
			'Chehaima',
			'Dahmouni',
			'Djebilet Rosfa',
			'Djillali Ben Amar',
			'Faidja',
			'Frenda',
			'Guertoufa',
			'Hamadia',
			'Ksar Chellala',
			'Madna',
			'Mahdia',
			'Mechraa Safa',
			'Medrissa',
			'Medroussa',
			'Meghila',
			'Mellakou',
			'Nadorah',
			'Naima',
			'Oued Lilli',
			'Rahouia',
			'Rechaiga',
			'Sebaine',
			'Sebt',
			'Serghine',
			'Si Abdelghani',
			'Sidi Abderrahmane',
			'Sidi Ali Mellal',
			'Sidi Bakhti',
			'Sidi Hosni',
			'Sougueur',
			'Tagdemt',
			'Takhemaret',
			'Tiaret',
			'Tidda',
			'Tousnina',
			'Zmalet El Emir Abdelkade',
		],
		[
			'Abi Youcef',
			'Aghribs',
			'Agouni Gueghrane',
			'Ain El Hammam',
			'Ain Zaouia',
			'Ait Aggouacha',
			'Ait Bouaddou',
			'Ait Boumehdi',
			'Ait Chafaa',
			'Ait Khellili',
			'Ait Mahmoud',
			'Ait Oumalou',
			'Ait Toudert',
			'Ait Yahia',
			'Ait Yahia Moussa',
			'Akbil',
			'Akerrou',
			'Assi Youcef',
			'Azazga',
			'Azeffoun',
			'Beni Aissi',
			'Beni Douala',
			'Beni Yenni',
			'Beni Zikki',
			'Beni Zmenzer',
			'Boghni',
			'Boudjima',
			'Bounouh',
			'Bouzeguene',
			'Djebel Aissa Mimoun',
			'Draa Ben Khedda',
			'Draa El Mizan',
			'Freha',
			'Frikat',
			'Iboudrarene',
			'Idjeur',
			'Iferhounene',
			'Ifigha',
			'Iflissen',
			'Illilten',
			'Illoula Oumalou',
			'Imsouhal',
			'Irdjen',
			'Larba Nath Irathen',
			'Larbaa Nath Irathen',
			'M\'kira',
			'Maatkas',
			'Makouda',
			'Mechtras',
			'Mekla',
			'Mizrana',
			'Ouacif',
			'Ouadhias',
			'Ouaguenoune',
			'Sidi Naamane',
			'Souamaa',
			'Souk El Thenine',
			'Tadmait',
			'Tigzirt',
			'Timizart',
			'Tirmitine',
			'Tizi Ghenif',
			'Tizi N\'tleta',
			'Tizi Ouzou',
			'Tizi Rached',
			'Yakourene',
			'Yatafene',
			'Zekri',
		],
		[
			'Ain Benian',
			'Ain Taya',
			'Alger Centre',
			'Bab El Oued',
			'Bab Ezzouar',
			'Baba Hesen',
			'Bachedjerah',
			'Bains Romains',
			'Baraki',
			'Ben Aknoun',
			'Beni Messous',
			'Bir Mourad Rais',
			'Bir Touta',
			'Birkhadem',
			'Bologhine Ibnou Ziri',
			'Bordj El Bahri',
			'Bordj El Kiffan',
			'Bourouba',
			'Bouzareah',
			'Casbah',
			'Cheraga',
			'Dar El Beida',
			'Dely Ibrahim',
			'Djasr Kasentina',
			'Douira',
			'Draria',
			'El Achour',
			'El Biar',
			'El Harrach',
			'El Madania',
			'El Magharia',
			'El Merssa',
			'El Mouradia',
			'Herraoua',
			'Hussein Dey',
			'Hydra',
			'Kheraisia',
			'Kouba',
			'Les Eucalyptus',
			'Maalma',
			'Mohamed Belouzdad',
			'Mohammadia',
			'Oued Koriche',
			'Oued Smar',
			'Ouled Chebel',
			'Ouled Fayet',
			'Rahmania',
			'Rais Hamidou',
			'Reghaia',
			'Rouiba',
			'Sehaoula',
			'Setaouali',
			'Sidi M\'hamed',
			'Sidi Moussa',
			'Souidania',
			'Tessala El Merdja',
			'Zeralda',
		],
		[
			'Ain Chouhada',
			'Ain El Ibel',
			'Ain Fekka',
			'Ain Maabed',
			'Ain Oussera',
			'Amourah',
			'Benhar',
			'Benyagoub',
			'Birine',
			'Bouira Lahdab',
			'Charef',
			'Dar Chioukh',
			'Deldoul',
			'Djelfa',
			'Douis',
			'El Guedid',
			'El Idrissia',
			'El Khemis',
			'Faidh El Botma',
			'Guernini',
			'Guettara',
			'Had Sahary',
			'Hassi Bahbah',
			'Hassi El Euch',
			'Hassi Fedoul',
			'M Liliha',
			'Messaad',
			'Moudjebara',
			'Oum Laadham',
			'Sed Rahal',
			'Selmana',
			'Sidi Baizid',
			'Sidi Ladjel',
			'Tadmit',
			'Zaafrane',
			'Zaccar',
		],
		[
			'Bordj Tahar',
			'Boudria Beniyadjis',
			'Bouraoui Belhadef',
			'Boussif Ouled Askeur',
			'Chahna',
			'Chekfa',
			'Djemaa Beni Habibi',
			'Djimla',
			'El Ancer',
			'El Aouana',
			'El Kennar Nouchfi',
			'El Milia',
			'Emir Abdelkader',
			'Erraguene',
			'Ghebala',
			'Jijel',
			'Khiri Oued Adjoul',
			'Kouas',
			'Oudjana',
			'Ouled Rabah',
			'Ouled Yahia Khadrouch',
			'Selma Benziada',
			'Settara',
			'Sidi Abdelaziz',
			'Sidi Marouf',
			'Taher',
			'Texena',
			'Ziama Mansouria',
		],
		[
			'Ain Abessa',
			'Ain Arnat',
			'Ain Azel',
			'Ain El Kebira',
			'Ain Lahdjar',
			'Ain Legradj',
			'Ain Oulmane',
			'Ain Roua',
			'Ain Sebt',
			'Ait Naoual Mezada',
			'Ait Tizi',
			'Amoucha',
			'Babor',
			'Bazer Sakra',
			'Beidha Bordj',
			'Bellaa',
			'Beni Aziz',
			'Beni Chebana',
			'Beni Fouda',
			'Beni Mouhli',
			'Beni Ouartilane',
			'Beni Oussine',
			'Bir El Arch',
			'Bir Haddada',
			'Bouandas',
			'Bougaa',
			'Bousselam',
			'Boutaleb',
			'Dehamcha',
			'Djemila',
			'Draa Kebila',
			'El Eulma',
			'El Ouldja',
			'El Ouricia',
			'Guellal',
			'Guelta Zerka',
			'Guenzet',
			'Guidjel',
			'Hamam Soukhna',
			'Hamma',
			'Hammam Guergour',
			'Harbil',
			'Ksar El Abtal',
			'Maaouia',
			'Maouaklane',
			'Mezloug',
			'Oued El Barad',
			'Ouled Addouane',
			'Ouled Sabor',
			'Ouled Si Ahmed',
			'Ouled Tebben',
			'Rosfa',
			'Salah Bey',
			'Serdj El Ghoul',
			'Setif',
			'Tachouda',
			'Tala Ifacene',
			'Taya',
			'Tella',
			'Tizi N\'bechar',
		],
		[
			'Ain El Hadjar',
			'Ain Sekhouna',
			'Ain Soltane',
			'Doui Thabet',
			'El Hassasna',
			'Hounet',
			'Maamora',
			'Moulay Larbi',
			'Ouled Brahim',
			'Ouled Khaled',
			'Saida',
			'Sidi Ahmed',
			'Sidi Amar',
			'Sidi Boubekeur',
			'Tircine',
			'Youb',
		],
		[
			'Ain Bouziane',
			'Ain Charchar',
			'Ain Kechera',
			'Ain Zouit',
			'Azzaba',
			'Bekkouche Lakhdar',
			'Ben Azzouz',
			'Beni Bechir',
			'Beni Oulbane',
			'Beni Zid',
			'Bin El Ouiden',
			'Bouchetata',
			'Cheraia',
			'Collo',
			'Djendel Saadi Mohamed',
			'El Arrouch',
			'El Ghedir',
			'El Hadaiek',
			'El Marsa',
			'Emjez Edchich',
			'Es Sebt',
			'Filfila',
			'Hamadi Krouma',
			'Kanoua',
			'Kerkera',
			'Khenag Mayoum',
			'Oued Zhour',
			'Ouldja Boulbalout',
			'Ouled Attia',
			'Ouled Habbeba',
			'Oum Toub',
			'Ramdane Djamel',
			'Salah Bouchaour',
			'Sidi Mezghiche',
			'Skikda',
			'Tamalous',
			'Zerdezas',
			'Zitouna',
		],
		[
			'Ain Adden',
			'Ain El Berd',
			'Ain Kada',
			'Ain Thrid',
			'Ain Tindamine',
			'Amarnas',
			'Badredine El Mokrani',
			'Belarbi',
			'Ben Badis',
			'Benachiba Chelia',
			'Bir El Hammam',
			'Boudjebaa El Bordj',
			'Boukhanafis',
			'Chetouane Belaila',
			'Dhaya',
			'El Hacaiba',
			'Hassi Dahou',
			'Hassi Zahana',
			'Lamtar',
			'M\'cid',
			'Makedra',
			'Marhoum',
			'Merine',
			'Mezaourou',
			'Mostefa Ben Brahim',
			'Moulay Slissen',
			'Oued Sebaa',
			'Oued Sefioun',
			'Oued Taourira',
			'Ras El Ma',
			'Redjem Demouche',
			'Sehala Thaoura',
			'Sfissef',
			'Sidi Ali Benyoub',
			'Sidi Ali Boussidi',
			'Sidi Bel Abbes',
			'Sidi Brahim',
			'Sidi Chaib',
			'Sidi Dahou Zairs',
			'Sidi Hamadouche',
			'Sidi Khaled',
			'Sidi Lahcene',
			'Sidi Yacoub',
			'Tabia',
			'Tafissour',
			'Taoudmout',
			'Teghalimet',
			'Telagh',
			'Tenira',
			'Tessala',
			'Tilmouni',
			'Zerouala',
		],
		[
			'Ain Berda',
			'Annaba',
			'Berrahel',
			'Chetaibi',
			'Cheurfa',
			'El Bouni',
			'El Hadjar',
			'Eulma',
			'Oued El Aneb',
			'Seraidi',
			'Sidi Amar',
			'Treat',
		],
		[
			'Ain Ben Beida',
			'Ain Hessania',
			'Ain Larbi',
			'Ain Makhlouf',
			'Ain Reggada',
			'Belkheir',
			'Ben Djarah',
			'Beni Mezline',
			'Bordj Sabat',
			'Bou Hachana',
			'Bou Hamdane',
			'Bouati Mahmoud',
			'Bouchegouf',
			'Bouhamra Ahmed',
			'Dahouara',
			'Djeballah Khemissi',
			'El Fedjoudj',
			'Guelaat Bou Sbaa',
			'Guelma',
			'Hamam Debagh',
			'Hammam N\'bail',
			'Heliopolis',
			'Khezara',
			'Medjez Amar',
			'Medjez Sfa',
			'Nechmaya',
			'Oued Cheham',
			'Oued Fragha',
			'Oued Zenati',
			'Ras El Agba',
			'Roknia',
			'Sellaoua Announa',
			'Sidi Sandel',
			'Tamlouka',
		],
		[
			'Ain Abid',
			'Ain Smara',
			'Ben Badis',
			'Beni Hamidene',
			'Constantine',
			'Didouche Mourad',
			'El Khroub',
			'Hamma Bouziane',
			'Ibn Ziad',
			'Messaoud Boujeriou',
			'Ouled Rahmouni',
			'Zighoud Youcef',
		],
		[
			'Ain Boucif',
			'Ain Ouksir',
			'Aissaouia',
			'Aziz',
			'Baata',
			'Ben Chicao',
			'Beni Slimane',
			'Berrouaghia',
			'Bir Ben Laabed',
			'Boghar',
			'Bouaiche',
			'Bouaichoune',
			'Bouchrahil',
			'Boughzoul',
			'Bouskene',
			'Chabounia',
			'Chelalet El Adhaoura',
			'Cheniguel',
			'Damiat',
			'Derrag',
			'Deux Bassins',
			'Djouab',
			'Draa Essamar',
			'El Azizia',
			'El Guelbelkebir',
			'El Hamdania',
			'El Omaria',
			'El Ouinet',
			'Hannacha',
			'Kef Lakhdar',
			'Khams Djouamaa',
			'Ksar El Boukhari',
			'Maghraoua',
			'Medea',
			'Medjebar',
			'Meftaha',
			'Mezerana',
			'Mihoub',
			'Ouamri',
			'Oued Harbil',
			'Ouled Antar',
			'Ouled Bouachra',
			'Ouled Brahim',
			'Ouled Deid',
			'Ouled Hellal',
			'Ouled Maaref',
			'Oum El Djellil',
			'Ouzera',
			'Rebaia',
			'Saneg',
			'Sedraya',
			'Seghouane',
			'Si Mahdjoub',
			'Sidi Demed',
			'Sidi Naamane',
			'Sidi Rabie',
			'Sidi Zahar',
			'Sidi Ziane',
			'Souagui',
			'Tablat',
			'Tafraout',
			'Tamesguida',
			'Tletat Ed Douair',
			'Zoubiria',
		],
		[
			'Achaacha',
			'Ain Boudinar',
			'Ain Nouissy',
			'Ain Sidi Cherif',
			'Ain Tedles',
			'Benabdelmalek Ramdane',
			'Bouguirat',
			'Fornaka',
			'Hadjadj',
			'Hassi Mameche',
			'Hassiane',
			'Khadra',
			'Kheir Eddine',
			'Mansourah',
			'Mazagran',
			'Mesra',
			'Mostaganem',
			'Nekmaria',
			'Oued El Kheir',
			'Ouled Boughalem',
			'Ouled Maalah',
			'Safsaf',
			'Sayada',
			'Sidi Ali',
			'Sidi Belaattar',
			'Sidi Lakhdar',
			'Sirat',
			'Souaflia',
			'Sour',
			'Stidia',
			'Tazgait',
			'Touahria',
		],
		[
			'Ain El Hadjel',
			'Ain El Melh',
			'Ain Fares',
			'Ain Khadra',
			'Ain Rich',
			'Belaiba',
			'Ben Srour',
			'Beni Ilmane',
			'Benzouh',
			'Berhoum',
			'Bir Foda',
			'Bou Saada',
			'Bouti Sayeh',
			'Chellal',
			'Dehahna',
			'Djebel Messaad',
			'El Hamel',
			'El Houamed',
			'Hammam Dalaa',
			'Khettouti Sed El Jir',
			'Khoubana',
			'M\'cif',
			'M\'sila',
			'M\'tarfa',
			'Maadid',
			'Maarif',
			'Magra',
			'Medjedel',
			'Menaa',
			'Mohamed Boudiaf',
			'Ouanougha',
			'Ouled Addi Guebala',
			'Ouled Derradj',
			'Ouled Madhi',
			'Ouled Mansour',
			'Ouled Sidi Brahim',
			'Ouled Slimane',
			'Oulteme',
			'Sidi Aissa',
			'Sidi Ameur',
			'Sidi Hadjeres',
			'Sidi M\'hamed',
			'Slim',
			'Souamaa',
			'Tamsa',
			'Tarmount',
			'Zarzour',
		],
		[
			'Ain Fares',
			'Ain Fekan',
			'Ain Ferah',
			'Ain Frass',
			'Alaimia',
			'Aouf',
			'Benian',
			'Bou Henni',
			'Bouhanifia',
			'Chorfa',
			'El Bordj',
			'El Gaada',
			'El Ghomri',
			'El Gueitena',
			'El Hachem',
			'El Keurt',
			'El Mamounia',
			'El Menaouer',
			'Ferraguig',
			'Froha',
			'Gharrous',
			'Ghriss',
			'Guerdjoum',
			'Hacine',
			'Khalouia',
			'Makhda',
			'Maoussa',
			'Mascara',
			'Matemore',
			'Mocta Douz',
			'Mohammadia',
			'Nesmot',
			'Oggaz',
			'Oued El Abtal',
			'Oued Taria',
			'Ras El Ain Amirouche',
			'Sedjerara',
			'Sehailia',
			'Sidi Abdeldjebar',
			'Sidi Abdelmoumene',
			'Sidi Boussaid',
			'Sidi Kada',
			'Sig',
			'Tighennif',
			'Tizi',
			'Zahana',
			'Zelamta',
		],
		[
			'Ain Beida',
			'El Borma',
			'Hassi Ben Abdellah',
			'Hassi Messaoud',
			'N\'goussa',
			'Ouargla',
			'Rouissat',
			'Sidi Khouiled',
		],
		[
			'Ain Biya',
			'Ain Kerma',
			'Ain Turk',
			'Arzew',
			'Ben Freha',
			'Bethioua',
			'Bir El Djir',
			'Boufatis',
			'Bousfer',
			'Boutlelis',
			'El Ancar',
			'El Braya',
			'El Kerma',
			'Es Senia',
			'Gdyel',
			'Hassi Ben Okba',
			'Hassi Bounif',
			'Hassi Mefsoukh',
			'Marsat El Hadjadj',
			'Mers El Kebir',
			'Messerghin',
			'Oran',
			'Oued Tlelat',
			'Sidi Ben Yebka',
			'Sidi Chami',
			'Tafraoui',
		],
		[
			'Ain El Orak',
			'Arbaouat',
			'Boualem',
			'Bougtoub',
			'Boussemghoun',
			'Brezina',
			'Cheguig',
			'Chellala',
			'El Bayadh',
			'El Biodh Sidi Cheikh',
			'El Bnoud',
			'El Kheither',
			'El Mehara',
			'Ghassoul',
			'Kef El Ahmar',
			'Krakda',
			'Rogassa',
			'Sidi Ameur',
			'Sidi Slimane',
			'Sidi Tifour',
			'Stitten',
			'Tousmouline',
		],
		[
			'Bordj Omar Driss',
			'Debdeb',
			'Illizi',
			'In Amenas',
		],
		[
			'Ain Taghrout',
			'Ain Tesra',
			'Belimour',
			'Ben Daoud',
			'Bir Kasdali',
			'Bordj Bou Arreridj',
			'Bordj Ghdir',
			'Bordj Zemora',
			'Colla',
			'Djaafra',
			'El Ach',
			'El Achir',
			'El Anseur',
			'El Hamadia',
			'El M\'hir',
			'El Main',
			'Ghilassa',
			'Haraza',
			'Hasnaoua',
			'Khelil',
			'Ksour',
			'Mansoura',
			'Medjana',
			'Ouled Brahem',
			'Ouled Dahmane',
			'Ouled Sidi Brahim',
			'Rabta',
			'Ras El Oued',
			'Sidi Embarek',
			'Tafreg',
			'Taglait',
			'Teniet En Nasr',
			'Tesmart',
			'Tixter',
		],
		[
			'Afir',
			'Ammal',
			'Baghlia',
			'Ben Choud',
			'Beni Amrane',
			'Bordj Menaiel',
			'Boudouaou',
			'Boudouaou El Bahri',
			'Boumerdes',
			'Bouzegza Keddara',
			'Chabet El Ameur',
			'Corso',
			'Dellys',
			'Djinet',
			'El Kharrouba',
			'Hammedi',
			'Isser',
			'Khemis El Khechna',
			'Larbatache',
			'Leghata',
			'Naciria',
			'Ouled Aissa',
			'Ouled Hedadj',
			'Ouled Moussa',
			'Si Mustapha',
			'Sidi Daoud',
			'Souk El Haad',
			'Taourga',
			'Thenia',
			'Tidjelabine',
			'Timezrit',
			'Zemmouri',
		],
		[
			'Ain El Assel',
			'Ain Kerma',
			'Asfour',
			'Ben M Hidi',
			'Berrihane',
			'Besbes',
			'Bougous',
			'Bouhadjar',
			'Bouteldja',
			'Chebaita Mokhtar',
			'Chefia',
			'Chihani',
			'Drean',
			'Echatt',
			'El Aioun',
			'El Kala',
			'El Tarf',
			'Hammam Beni Salah',
			'Lac Des Oiseaux',
			'Oued Zitoun',
			'Raml Souk',
			'Souarekh',
			'Zerizer',
			'Zitouna',
		],
		[
			'Oum El Assel',
			'Tindouf',
		],
		[
			'Ammari',
			'Beni Chaib',
			'Beni Lahcene',
			'Bordj Bounaama',
			'Bordj El Emir Abdelkader',
			'Bou Caid',
			'Khemisti',
			'Larbaa',
			'Lardjem',
			'Layoune',
			'Lazharia',
			'Maacem',
			'Melaab',
			'Ouled Bessem',
			'Sidi Abed',
			'Sidi Boutouchent',
			'Sidi Lantri',
			'Sidi Slimane',
			'Tamellalet',
			'Theniet El Had',
			'Tissemsilt',
			'Youssoufia',
		],
		[
			'Bayadha',
			'Ben Guecha',
			'Debila',
			'Douar El Maa',
			'El Ogla',
			'El Oued',
			'Guemar',
			'Hamraia',
			'Hassani Abdelkrim',
			'Hassi Khalifa',
			'Kouinine',
			'Magrane',
			'Mih Ouansa',
			'Nakhla',
			'Oued El Alenda',
			'Ourmes',
			'Reguiba',
			'Robbah',
			'Sidi Aoun',
			'Taghzout',
			'Taleb Larbi',
			'Trifaoui',
		],
		[
			'Ain Touila',
			'Babar',
			'Baghai',
			'Bouhmama',
			'Chelia',
			'Cherchar',
			'Djellal',
			'El Hamma',
			'El Mahmal',
			'El Oueldja',
			'Ensigha',
			'Kais',
			'Khenchela',
			'Khirane',
			'M\'sara',
			'M\'toussa',
			'Ouled Rechache',
			'Remila',
			'Tamza',
			'Taouzianat',
			'Yabous',
		],
		[
			'Ain Soltane',
			'Ain Zana',
			'Bir Bouhouche',
			'Drea',
			'Haddada',
			'Hanencha',
			'Khedara',
			'Khemissa',
			'M\'daourouche',
			'Machroha',
			'Merahna',
			'Oued Kebrit',
			'Ouled Driss',
			'Ouled Moumen',
			'Oum El Adhaim',
			'Quillen',
			'Ragouba',
			'Safel El Ouiden',
			'Sedrata',
			'Sidi Fredj',
			'Souk Ahras',
			'Taoura',
			'Terraguelt',
			'Tiffech',
			'Zaarouria',
			'Zouabi',
		],
		[
			'Aghbal',
			'Ahmer El Ain',
			'Ain Tagourait',
			'Attatba',
			'Beni Mileuk',
			'Bou Haroun',
			'Bou Ismail',
			'Bourkika',
			'Chaiba',
			'Cherchell',
			'Damous',
			'Douaouda',
			'Fouka',
			'Gouraya',
			'Hadjout',
			'Hadjret Ennous',
			'Khemisti',
			'Kolea',
			'Larhat',
			'Menaceur',
			'Merad',
			'Messelmoun',
			'Nador',
			'Sidi Amar',
			'Sidi Ghiles',
			'Sidi Rached',
			'Sidi Semiane',
			'Tipaza',
		],
		[
			'Ahmed Rachedi',
			'Ain Beida Harriche',
			'Ain Mellouk',
			'Ain Tine',
			'Amira Arres',
			'Benyahia Abderrahmane',
			'Bouhatem',
			'Chelghoum Laid',
			'Chigara',
			'Derrahi Bousselah',
			'El Mechira',
			'Elayadi Barbes',
			'Ferdjioua',
			'Grarem Gouga',
			'Hamala',
			'Mila',
			'Minar Zarza',
			'Oued Athmenia',
			'Oued Endja',
			'Oued Seguen',
			'Ouled Khalouf',
			'Rouached',
			'Sidi Khelifa',
			'Sidi Merouane',
			'Tadjenanet',
			'Tassadane Haddada',
			'Teleghma',
			'Terrai Bainem',
			'Tessala',
			'Tiberguent',
			'Yahia Beniguecha',
			'Zeghaia',
		],
		[
			'Ain Benian',
			'Ain Bouyahia',
			'Ain Defla',
			'Ain Lechiakh',
			'Ain Soltane',
			'Ain Tork',
			'Arib',
			'Barbouche',
			'Bathia',
			'Belaas',
			'Ben Allal',
			'Bir Ould Khelifa',
			'Bordj Emir Khaled',
			'Boumedfaa',
			'Bourached',
			'Djelida',
			'Djemaa Ouled Cheikh',
			'Djendel',
			'El Abadia',
			'El Amra',
			'El Attaf',
			'El Maine',
			'Hammam Righa',
			'Hassania',
			'Hoceinia',
			'Khemis Miliana',
			'Mekhatria',
			'Miliana',
			'Oued Chorfa',
			'Oued Djemaa',
			'Rouina',
			'Sidi Lakhdar',
			'Tacheta Zegagha',
			'Tarik Ibn Ziad',
			'Tiberkanine',
			'Zeddine',
		],
		[
			'Ain Ben Khelil',
			'Ain Safra',
			'Assela',
			'Djeniane Bourzeg',
			'El Biod',
			'Kasdir',
			'Makman Ben Amer',
			'Mecheria',
			'Moghrar',
			'Naama',
			'Sfissifa',
			'Tiout',
		],
		[
			'Aghlal',
			'Ain El Arbaa',
			'Ain Kihal',
			'Ain Temouchent',
			'Ain Tolba',
			'Aoubellil',
			'Beni Saf',
			'Bouzedjar',
			'Chaabat El Ham',
			'Chentouf',
			'El Amria',
			'El Malah',
			'El Messaid',
			'Emir Abdelkader',
			'Hammam Bouhadjar',
			'Hassasna',
			'Hassi El Ghella',
			'Oued Berkeche',
			'Oued Sebbah',
			'Ouled Boudjemaa',
			'Ouled Kihal',
			'Oulhaca El Gheraba',
			'Sidi Ben Adda',
			'Sidi Boumediene',
			'Sidi Ouriache',
			'Sidi Safi',
			'Tamzoura',
			'Terga',
		],
		[
			'Berriane',
			'Bounoura',
			'Dhayet Bendhahoua',
			'El Atteuf',
			'El Guerrara',
			'Ghardaia',
			'Mansoura',
			'Metlili',
			'Sebseb',
			'Zelfana',
		],
		[
			'Ain Rahma',
			'Ain Tarek',
			'Ammi Moussa',
			'Belaassel Bouzagza',
			'Bendaoud',
			'Beni Dergoun',
			'Beni Zentis',
			'Dar Ben Abdelah',
			'Djidiouia',
			'El Guettar',
			'El H\'madna',
			'El Hassi',
			'El Matmar',
			'El Ouldja',
			'Had Echkalla',
			'Hamri',
			'Kalaa',
			'Lahlef',
			'Mazouna',
			'Mediouna',
			'Mendes',
			'Merdja Sidi Abed',
			'Ouarizane',
			'Oued El Djemaa',
			'Oued Essalem',
			'Oued Rhiou',
			'Ouled Aiche',
			'Ouled Sidi Mihoub',
			'Ramka',
			'Relizane',
			'Sidi Khettab',
			'Sidi Lazreg',
			'Sidi M\'hamed Benali',
			'Sidi M\'hamed Benaouda',
			'Sidi Saada',
			'Souk El Had',
			'Yellel',
			'Zemmoura',
		],
		[
			'Aougrout',
			'Charouine',
			'Deldoul',
			'Ksar Kaddour',
			'Metarfa',
			'Ouled Aissa',
			'Ouled Said',
			'Talmine',
			'Timimoun',
			'Tinerkouk',
		],
		[
			'Bordj Badji Mokhtar',
			'Timiaouine',
		],
		[
			'Besbes',
			'Chaiba',
			'Doucen',
			'Ouled Djellal',
			'Ras El Miad',
			'Sidi Khaled',
		],
		[
			'Beni Abbes',
			'Beni Ikhlef',
			'El Ouata',
			'Igli',
			'Kerzaz',
			'Ksabi',
			'Ouled Khoudir',
			'Tabelbala',
			'Tamtert',
			'Timoudi',
		],
		[
			'Foggaret Azzaouia',
			'In Ghar',
			'In Salah',
		],
		[
			'In Guezzam',
			'Tin Zouatine',
		],
		[
			'Benaceur',
			'Blidet Amor',
			'El Alia',
			'El Hadjira',
			'Megarine',
			'Mnaguer',
			'Nezla',
			'Sidi Slimane',
			'Taibet',
			'Tebesbest',
			'Temacine',
			'Touggourt',
			'Zaouia El Abidia',
		],
		[
			'Bordj El Haouasse',
			'Djanet',
		],
		[
			'Djamaa',
			'El M\'ghair',
			'Mrara',
			'Oum Touyour',
			'Sidi Amrane',
			'Sidi Khelil',
			'Still',
			'Tenedla',
		],
		[
			'El Meniaa',
			'Hassi Fehal',
			'Hassi Gara',
		],
	];
}

// Path: general
class _StringsGeneralEn {
	_StringsGeneralEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get import => 'Import';
	String get export => 'Export';
	String get save => 'Save';
	String get cancel => 'Cancel';
	String get edit => 'Edit';
	String get preview => 'Preview';
	String get update => 'Update';
	String get delete => 'Delete';
	String get add => 'Add';
	String get link => 'Link';
	String get error => 'Error';
	String get refresh => 'Refresh';
	String get required => 'Required';
	late final _StringsGeneralDefaultCurrencyEn defaultCurrency = _StringsGeneralDefaultCurrencyEn._(_root);
	String get confirm => 'Confirm';
	String get done => 'operation successful';
	String get failed => 'operation failed';
	String get views => 'Views';
	String get visits => 'Visits';
	String get submit => 'submit';
	String get shipping => 'Shipping';
	String get total => 'Total';
	String get control => 'Control';
	String get empty => 'Empty';
}

// Path: auth
class _StringsAuthEn {
	_StringsAuthEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _StringsAuthUserEn user = _StringsAuthUserEn._(_root);
	String get forgotPassword => 'Forgot Password';
	String get resetPassword => 'Reset Password';
	String get signin => 'Sign In';
	String get signup => 'Sign Up';
	String get signout => 'Sign Out';
	String get acceptTerms => 'By signing up, you agree to our Terms of Service and Privacy Policy.';
	String get acceptTermsValidation => 'You must accept the terms and conditions.';
	String get dontHaveAnAccount => 'Don\'t have an account?';
	String get alreadyHaveAnAccount => 'Already have an account?';
}

// Path: products
class _StringsProductsEn {
	_StringsProductsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Products';
	late final _StringsProductsFormEn form = _StringsProductsFormEn._(_root);
	late final _StringsProductsFieldsEn fields = _StringsProductsFieldsEn._(_root);
}

// Path: users
class _StringsUsersEn {
	_StringsUsersEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Users';
	late final _StringsUsersFormEn form = _StringsUsersFormEn._(_root);
	late final _StringsUsersFieldsEn fields = _StringsUsersFieldsEn._(_root);
}

// Path: orders
class _StringsOrdersEn {
	_StringsOrdersEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _StringsOrdersStatusEn status = _StringsOrdersStatusEn._(_root);
	String get label => 'Orders';
	late final _StringsOrdersFormEn form = _StringsOrdersFormEn._(_root);
	late final _StringsOrdersFieldsEn fields = _StringsOrdersFieldsEn._(_root);
}

// Path: stores
class _StringsStoresEn {
	_StringsStoresEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Stores';
	String get myStores => 'My Stores';
	late final _StringsStoresFormEn form = _StringsStoresFormEn._(_root);
	late final _StringsStoresFieldsEn fields = _StringsStoresFieldsEn._(_root);
}

// Path: dashboard
class _StringsDashboardEn {
	_StringsDashboardEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get welcomeUser => 'Welcome, ';
	String get title => 'Dashboard';
	late final _StringsDashboardSectionsEn sections = _StringsDashboardSectionsEn._(_root);
}

// Path: general.defaultCurrency
class _StringsGeneralDefaultCurrencyEn {
	_StringsGeneralDefaultCurrencyEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get code => 'DZD';
	String get symbol => 'دج';
	String get name => 'دينار جزائري';
}

// Path: auth.user
class _StringsAuthUserEn {
	_StringsAuthUserEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _StringsAuthUserAlertEn alert = _StringsAuthUserAlertEn._(_root);
	String get personalInfo => 'Personal Info';
	String get securityAndSignin => 'Security and Sign In';
	String get signout => 'Sign Out';
}

// Path: products.form
class _StringsProductsFormEn {
	_StringsProductsFormEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get create => 'Create Product';
	late final _StringsProductsFormNameEn name = _StringsProductsFormNameEn._(_root);
	late final _StringsProductsFormTitleEn title = _StringsProductsFormTitleEn._(_root);
	late final _StringsProductsFormPriceEn price = _StringsProductsFormPriceEn._(_root);
	late final _StringsProductsFormQuantityEn quantity = _StringsProductsFormQuantityEn._(_root);
	late final _StringsProductsFormSalesEn sales = _StringsProductsFormSalesEn._(_root);
	late final _StringsProductsFormViewsEn views = _StringsProductsFormViewsEn._(_root);
	late final _StringsProductsFormImagesEn images = _StringsProductsFormImagesEn._(_root);
}

// Path: products.fields
class _StringsProductsFieldsEn {
	_StringsProductsFieldsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _StringsProductsFieldsVariantsEn variants = _StringsProductsFieldsVariantsEn._(_root);
	late final _StringsProductsFieldsNameEn name = _StringsProductsFieldsNameEn._(_root);
	late final _StringsProductsFieldsTitleEn title = _StringsProductsFieldsTitleEn._(_root);
	late final _StringsProductsFieldsPriceEn price = _StringsProductsFieldsPriceEn._(_root);
	late final _StringsProductsFieldsQuantityEn quantity = _StringsProductsFieldsQuantityEn._(_root);
	late final _StringsProductsFieldsSalesEn sales = _StringsProductsFieldsSalesEn._(_root);
	late final _StringsProductsFieldsViewsEn views = _StringsProductsFieldsViewsEn._(_root);
	late final _StringsProductsFieldsImagesEn images = _StringsProductsFieldsImagesEn._(_root);
}

// Path: users.form
class _StringsUsersFormEn {
	_StringsUsersFormEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get create => 'Create User';
	late final _StringsUsersFormNameEn name = _StringsUsersFormNameEn._(_root);
	late final _StringsUsersFormEmailEn email = _StringsUsersFormEmailEn._(_root);
	late final _StringsUsersFormPasswordEn password = _StringsUsersFormPasswordEn._(_root);
}

// Path: users.fields
class _StringsUsersFieldsEn {
	_StringsUsersFieldsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _StringsUsersFieldsNameEn name = _StringsUsersFieldsNameEn._(_root);
	late final _StringsUsersFieldsEmailEn email = _StringsUsersFieldsEmailEn._(_root);
	late final _StringsUsersFieldsPhoneEn phone = _StringsUsersFieldsPhoneEn._(_root);
	late final _StringsUsersFieldsPasswordEn password = _StringsUsersFieldsPasswordEn._(_root);
}

// Path: orders.status
class _StringsOrdersStatusEn {
	_StringsOrdersStatusEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get draft => 'Draft';
	String get pending => 'Pending';
	String get processing => 'Processing';
	String get completed => 'Completed';
	String get cancelled => 'Cancelled';
}

// Path: orders.form
class _StringsOrdersFormEn {
	_StringsOrdersFormEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get create => 'Create Order';
	late final _StringsOrdersFormCustomerEn customer = _StringsOrdersFormCustomerEn._(_root);
	late final _StringsOrdersFormProductsEn products = _StringsOrdersFormProductsEn._(_root);
	late final _StringsOrdersFormStatusEn status = _StringsOrdersFormStatusEn._(_root);
}

// Path: orders.fields
class _StringsOrdersFieldsEn {
	_StringsOrdersFieldsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _StringsOrdersFieldsCustomerNameEn customerName = _StringsOrdersFieldsCustomerNameEn._(_root);
	late final _StringsOrdersFieldsCustomerPhoneEn customerPhone = _StringsOrdersFieldsCustomerPhoneEn._(_root);
	late final _StringsOrdersFieldsCustomerIpEn customerIp = _StringsOrdersFieldsCustomerIpEn._(_root);
	late final _StringsOrdersFieldsCustomerNoteEn customerNote = _StringsOrdersFieldsCustomerNoteEn._(_root);
	late final _StringsOrdersFieldsPrivateNoteEn privateNote = _StringsOrdersFieldsPrivateNoteEn._(_root);
	late final _StringsOrdersFieldsShippingAddressEn shippingAddress = _StringsOrdersFieldsShippingAddressEn._(_root);
	late final _StringsOrdersFieldsShippingCityEn shippingCity = _StringsOrdersFieldsShippingCityEn._(_root);
	late final _StringsOrdersFieldsShippingStateEn shippingState = _StringsOrdersFieldsShippingStateEn._(_root);
	late final _StringsOrdersFieldsShippingMethodIdEn shippingMethodId = _StringsOrdersFieldsShippingMethodIdEn._(_root);
	late final _StringsOrdersFieldsPaymentMethodIdEn paymentMethodId = _StringsOrdersFieldsPaymentMethodIdEn._(_root);
	late final _StringsOrdersFieldsItemsEn items = _StringsOrdersFieldsItemsEn._(_root);
	late final _StringsOrdersFieldsSubtotalEn subtotal = _StringsOrdersFieldsSubtotalEn._(_root);
	late final _StringsOrdersFieldsShippingPriceEn shippingPrice = _StringsOrdersFieldsShippingPriceEn._(_root);
	late final _StringsOrdersFieldsDiscountEn discount = _StringsOrdersFieldsDiscountEn._(_root);
	late final _StringsOrdersFieldsCouponEn coupon = _StringsOrdersFieldsCouponEn._(_root);
	late final _StringsOrdersFieldsStoreIdEn storeId = _StringsOrdersFieldsStoreIdEn._(_root);
	late final _StringsOrdersFieldsMetadataEn metadata = _StringsOrdersFieldsMetadataEn._(_root);
	late final _StringsOrdersFieldsStatusEn status = _StringsOrdersFieldsStatusEn._(_root);
	late final _StringsOrdersFieldsPaymentStatusEn paymentStatus = _StringsOrdersFieldsPaymentStatusEn._(_root);
	late final _StringsOrdersFieldsDeliveryStatusEn deliveryStatus = _StringsOrdersFieldsDeliveryStatusEn._(_root);
	late final _StringsOrdersFieldsCreatedAtEn createdAt = _StringsOrdersFieldsCreatedAtEn._(_root);
	late final _StringsOrdersFieldsUpdatedAtEn updatedAt = _StringsOrdersFieldsUpdatedAtEn._(_root);
	late final _StringsOrdersFieldsManualTotalEn manualTotal = _StringsOrdersFieldsManualTotalEn._(_root);
	late final _StringsOrdersFieldsCalculatedTotalEn calculatedTotal = _StringsOrdersFieldsCalculatedTotalEn._(_root);
	late final _StringsOrdersFieldsTotalEn total = _StringsOrdersFieldsTotalEn._(_root);
}

// Path: stores.form
class _StringsStoresFormEn {
	_StringsStoresFormEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get create => 'Create Store';
	String get storeNameExample => 'e.g., My Store';
}

// Path: stores.fields
class _StringsStoresFieldsEn {
	_StringsStoresFieldsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _StringsStoresFieldsNameEn name = _StringsStoresFieldsNameEn._(_root);
	late final _StringsStoresFieldsTitleEn title = _StringsStoresFieldsTitleEn._(_root);
	late final _StringsStoresFieldsDescriptionEn description = _StringsStoresFieldsDescriptionEn._(_root);
	late final _StringsStoresFieldsColorEn color = _StringsStoresFieldsColorEn._(_root);
	late final _StringsStoresFieldsSlugEn slug = _StringsStoresFieldsSlugEn._(_root);
}

// Path: dashboard.sections
class _StringsDashboardSectionsEn {
	_StringsDashboardSectionsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _StringsDashboardSectionsOverviewEn overview = _StringsDashboardSectionsOverviewEn._(_root);
	late final _StringsDashboardSectionsOrdersEn orders = _StringsDashboardSectionsOrdersEn._(_root);
	late final _StringsDashboardSectionsPosEn pos = _StringsDashboardSectionsPosEn._(_root);
	late final _StringsDashboardSectionsProductsEn products = _StringsDashboardSectionsProductsEn._(_root);
	late final _StringsDashboardSectionsCustomersEn customers = _StringsDashboardSectionsCustomersEn._(_root);
	late final _StringsDashboardSectionsThemeEn theme = _StringsDashboardSectionsThemeEn._(_root);
	late final _StringsDashboardSectionsShippingEn shipping = _StringsDashboardSectionsShippingEn._(_root);
	late final _StringsDashboardSectionsIntegrationsEn integrations = _StringsDashboardSectionsIntegrationsEn._(_root);
	late final _StringsDashboardSectionsSettingsEn settings = _StringsDashboardSectionsSettingsEn._(_root);
	String get expandMenu => 'Expand Menu';
	String get collapseMenu => 'Collapse Menu';
}

// Path: auth.user.alert
class _StringsAuthUserAlertEn {
	_StringsAuthUserAlertEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Security and Data';
	String get subtitle => 'We are committed to your data privacy and security in all our operations.';
}

// Path: products.form.name
class _StringsProductsFormNameEn {
	_StringsProductsFormNameEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Name';
	String get hint => 'Enter product name';
}

// Path: products.form.title
class _StringsProductsFormTitleEn {
	_StringsProductsFormTitleEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Product Title';
	String get hint => 'The name known to customers, e.g., the name mentioned on the package or the car\'s name from the manufacturer.';
}

// Path: products.form.price
class _StringsProductsFormPriceEn {
	_StringsProductsFormPriceEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Price';
	String get hint => 'Enter product price';
}

// Path: products.form.quantity
class _StringsProductsFormQuantityEn {
	_StringsProductsFormQuantityEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Quantity';
	String get hint => 'Enter product quantity';
}

// Path: products.form.sales
class _StringsProductsFormSalesEn {
	_StringsProductsFormSalesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Sales';
	String get hint => 'Enter product sales';
}

// Path: products.form.views
class _StringsProductsFormViewsEn {
	_StringsProductsFormViewsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Views';
	String get hint => 'Enter product views';
}

// Path: products.form.images
class _StringsProductsFormImagesEn {
	_StringsProductsFormImagesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Images';
	String get hint => 'Upload product images';
}

// Path: products.fields.variants
class _StringsProductsFieldsVariantsEn {
	_StringsProductsFieldsVariantsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Variants';
	String get hint => 'Add product variants';
	String get helper => 'The variants of the product';
	late final _StringsProductsFieldsVariantsTypesEn types = _StringsProductsFieldsVariantsTypesEn._(_root);
}

// Path: products.fields.name
class _StringsProductsFieldsNameEn {
	_StringsProductsFieldsNameEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Name';
	String get hint => 'Enter product name';
	String get helper => 'The name of the product';
}

// Path: products.fields.title
class _StringsProductsFieldsTitleEn {
	_StringsProductsFieldsTitleEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Product Title';
	String get hint => 'The name known to customers, e.g., the name mentioned on the package or the car\'s name from the manufacturer.';
	String get helper => 'The title of the product';
}

// Path: products.fields.price
class _StringsProductsFieldsPriceEn {
	_StringsProductsFieldsPriceEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Price';
	String get hint => 'Enter product price';
	String get helper => 'The price of the product';
}

// Path: products.fields.quantity
class _StringsProductsFieldsQuantityEn {
	_StringsProductsFieldsQuantityEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Quantity';
	String get hint => 'Enter product quantity';
	String get helper => 'The quantity of the product';
}

// Path: products.fields.sales
class _StringsProductsFieldsSalesEn {
	_StringsProductsFieldsSalesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Sales';
	String get hint => 'Enter product sales';
	String get helper => 'The sales of the product';
}

// Path: products.fields.views
class _StringsProductsFieldsViewsEn {
	_StringsProductsFieldsViewsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Views';
	String get hint => 'Enter product views';
	String get helper => 'The views of the product';
}

// Path: products.fields.images
class _StringsProductsFieldsImagesEn {
	_StringsProductsFieldsImagesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Images';
	String get hint => 'Upload product images';
	String get helper => 'The images of the product';
}

// Path: users.form.name
class _StringsUsersFormNameEn {
	_StringsUsersFormNameEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Name';
	String get hint => 'Enter user name';
}

// Path: users.form.email
class _StringsUsersFormEmailEn {
	_StringsUsersFormEmailEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Email';
	String get hint => 'Enter user email';
}

// Path: users.form.password
class _StringsUsersFormPasswordEn {
	_StringsUsersFormPasswordEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Password';
	String get hint => 'Enter user password';
}

// Path: users.fields.name
class _StringsUsersFieldsNameEn {
	_StringsUsersFieldsNameEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Name';
	String get hint => 'Enter user name';
	String get helper => 'The name of the user';
}

// Path: users.fields.email
class _StringsUsersFieldsEmailEn {
	_StringsUsersFieldsEmailEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Email';
	String get hint => 'Enter user email';
	String get helper => 'The email of the user';
}

// Path: users.fields.phone
class _StringsUsersFieldsPhoneEn {
	_StringsUsersFieldsPhoneEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Phone';
	String get hint => 'Enter user phone';
	String get helper => 'The phone of the user';
}

// Path: users.fields.password
class _StringsUsersFieldsPasswordEn {
	_StringsUsersFieldsPasswordEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Password';
	String get hint => 'Enter user password';
	String get helper => 'The password of the user';
}

// Path: orders.form.customer
class _StringsOrdersFormCustomerEn {
	_StringsOrdersFormCustomerEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Customer';
	String get hint => 'Select customer';
}

// Path: orders.form.products
class _StringsOrdersFormProductsEn {
	_StringsOrdersFormProductsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Products';
	String get hint => 'Select products';
}

// Path: orders.form.status
class _StringsOrdersFormStatusEn {
	_StringsOrdersFormStatusEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Status';
	String get hint => 'Select order status';
}

// Path: orders.fields.customerName
class _StringsOrdersFieldsCustomerNameEn {
	_StringsOrdersFieldsCustomerNameEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Customer Name';
	String get hint => 'Enter customer name';
	String get helper => 'The name of the customer';
}

// Path: orders.fields.customerPhone
class _StringsOrdersFieldsCustomerPhoneEn {
	_StringsOrdersFieldsCustomerPhoneEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Customer Phone';
	String get hint => 'Enter customer phone';
	String get helper => 'The phone number of the customer';
}

// Path: orders.fields.customerIp
class _StringsOrdersFieldsCustomerIpEn {
	_StringsOrdersFieldsCustomerIpEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Customer IP';
	String get hint => 'Enter customer IP';
	String get helper => 'The IP address of the customer';
}

// Path: orders.fields.customerNote
class _StringsOrdersFieldsCustomerNoteEn {
	_StringsOrdersFieldsCustomerNoteEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Customer Note';
	String get hint => 'Enter customer note';
	String get helper => 'Additional note from the customer';
}

// Path: orders.fields.privateNote
class _StringsOrdersFieldsPrivateNoteEn {
	_StringsOrdersFieldsPrivateNoteEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Private Note';
	String get hint => 'Enter private note';
	String get helper => 'Internal note for the order';
}

// Path: orders.fields.shippingAddress
class _StringsOrdersFieldsShippingAddressEn {
	_StringsOrdersFieldsShippingAddressEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Shipping Address';
	String get hint => 'Enter shipping address';
	String get helper => 'The address for shipping the order';
}

// Path: orders.fields.shippingCity
class _StringsOrdersFieldsShippingCityEn {
	_StringsOrdersFieldsShippingCityEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Shipping City';
	String get hint => 'Select shipping city';
	String get helper => 'The city for shipping the order';
}

// Path: orders.fields.shippingState
class _StringsOrdersFieldsShippingStateEn {
	_StringsOrdersFieldsShippingStateEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Shipping State';
	String get hint => 'Select shipping state';
	String get helper => 'The state for shipping the order';
}

// Path: orders.fields.shippingMethodId
class _StringsOrdersFieldsShippingMethodIdEn {
	_StringsOrdersFieldsShippingMethodIdEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Shipping Method ID';
	String get hint => 'Enter shipping method ID';
	String get helper => 'The ID of the shipping method';
}

// Path: orders.fields.paymentMethodId
class _StringsOrdersFieldsPaymentMethodIdEn {
	_StringsOrdersFieldsPaymentMethodIdEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Payment Method ID';
	String get hint => 'Enter payment method ID';
	String get helper => 'The ID of the payment method';
}

// Path: orders.fields.items
class _StringsOrdersFieldsItemsEn {
	_StringsOrdersFieldsItemsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Items';
	String get hint => 'Select items';
	String get helper => 'The items in the order';
}

// Path: orders.fields.subtotal
class _StringsOrdersFieldsSubtotalEn {
	_StringsOrdersFieldsSubtotalEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Subtotal';
	String get hint => 'Enter subtotal';
	String get helper => 'The subtotal of the order';
}

// Path: orders.fields.shippingPrice
class _StringsOrdersFieldsShippingPriceEn {
	_StringsOrdersFieldsShippingPriceEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Shipping Price';
	String get hint => 'Enter shipping price';
	String get helper => 'The price for shipping the order';
}

// Path: orders.fields.discount
class _StringsOrdersFieldsDiscountEn {
	_StringsOrdersFieldsDiscountEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Discount';
	String get hint => 'Enter discount';
	String get helper => 'The discount applied to the order';
}

// Path: orders.fields.coupon
class _StringsOrdersFieldsCouponEn {
	_StringsOrdersFieldsCouponEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Coupon';
	String get hint => 'Enter coupon';
	String get helper => 'The coupon applied to the order';
}

// Path: orders.fields.storeId
class _StringsOrdersFieldsStoreIdEn {
	_StringsOrdersFieldsStoreIdEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Store ID';
	String get hint => 'Enter store ID';
	String get helper => 'The ID of the store';
}

// Path: orders.fields.metadata
class _StringsOrdersFieldsMetadataEn {
	_StringsOrdersFieldsMetadataEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Metadata';
	String get hint => 'Enter metadata';
	String get helper => 'Additional metadata for the order';
}

// Path: orders.fields.status
class _StringsOrdersFieldsStatusEn {
	_StringsOrdersFieldsStatusEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Status';
	String get hint => 'Select order status';
	String get helper => 'The status of the order';
}

// Path: orders.fields.paymentStatus
class _StringsOrdersFieldsPaymentStatusEn {
	_StringsOrdersFieldsPaymentStatusEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Payment Status';
	String get hint => 'Select payment status';
	String get helper => 'The payment status of the order';
}

// Path: orders.fields.deliveryStatus
class _StringsOrdersFieldsDeliveryStatusEn {
	_StringsOrdersFieldsDeliveryStatusEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Delivery Status';
	String get hint => 'Select delivery status';
	String get helper => 'The delivery status of the order';
}

// Path: orders.fields.createdAt
class _StringsOrdersFieldsCreatedAtEn {
	_StringsOrdersFieldsCreatedAtEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Created At';
	String get hint => 'Enter created at';
	String get helper => 'The date and time when the order was created';
}

// Path: orders.fields.updatedAt
class _StringsOrdersFieldsUpdatedAtEn {
	_StringsOrdersFieldsUpdatedAtEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Updated At';
	String get hint => 'Enter updated at';
	String get helper => 'The date and time when the order was last updated';
}

// Path: orders.fields.manualTotal
class _StringsOrdersFieldsManualTotalEn {
	_StringsOrdersFieldsManualTotalEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Manual Total';
	String get hint => 'Enter manual total';
	String get helper => 'The manually calculated total of the order';
}

// Path: orders.fields.calculatedTotal
class _StringsOrdersFieldsCalculatedTotalEn {
	_StringsOrdersFieldsCalculatedTotalEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Calculated Total';
	String get hint => 'Enter calculated total';
	String get helper => 'The automatically calculated total of the order';
}

// Path: orders.fields.total
class _StringsOrdersFieldsTotalEn {
	_StringsOrdersFieldsTotalEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Total';
	String get hint => 'Enter total';
	String get helper => 'The total amount of the order';
}

// Path: stores.fields.name
class _StringsStoresFieldsNameEn {
	_StringsStoresFieldsNameEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Name';
	String get hint => 'Enter store name';
	String get helper => 'The name of your store';
}

// Path: stores.fields.title
class _StringsStoresFieldsTitleEn {
	_StringsStoresFieldsTitleEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Title';
	String get hint => 'Enter store title';
	String get helper => 'The title of your store';
}

// Path: stores.fields.description
class _StringsStoresFieldsDescriptionEn {
	_StringsStoresFieldsDescriptionEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Description';
	String get hint => 'Enter store description';
	String get helper => 'The description of your store';
}

// Path: stores.fields.color
class _StringsStoresFieldsColorEn {
	_StringsStoresFieldsColorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Color';
	String get hint => 'Select store color';
	String get helper => 'The color of your store';
}

// Path: stores.fields.slug
class _StringsStoresFieldsSlugEn {
	_StringsStoresFieldsSlugEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Slug';
	String get hint => 'Enter store slug';
	String get helper => 'The slug is the subdomain of your store';
	String get validation => 'The slug must be in English and contain only lowercase letters, numbers, and hyphens';
}

// Path: dashboard.sections.overview
class _StringsDashboardSectionsOverviewEn {
	_StringsDashboardSectionsOverviewEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Overview';
	String get statistics => 'Statistics';
	late final _StringsDashboardSectionsOverviewQuickLinksEn quickLinks = _StringsDashboardSectionsOverviewQuickLinksEn._(_root);
	late final _StringsDashboardSectionsOverviewRecentOrdersEn recentOrders = _StringsDashboardSectionsOverviewRecentOrdersEn._(_root);
	late final _StringsDashboardSectionsOverviewRecentCustomersEn recentCustomers = _StringsDashboardSectionsOverviewRecentCustomersEn._(_root);
}

// Path: dashboard.sections.orders
class _StringsDashboardSectionsOrdersEn {
	_StringsDashboardSectionsOrdersEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Orders';
	String get search => 'Search Orders';
	String get addOrder => 'Add Order';
}

// Path: dashboard.sections.pos
class _StringsDashboardSectionsPosEn {
	_StringsDashboardSectionsPosEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'POS';
}

// Path: dashboard.sections.products
class _StringsDashboardSectionsProductsEn {
	_StringsDashboardSectionsProductsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Products';
	String get search => 'Search Products';
	String get addProduct => 'Add Product';
	String get product => 'Product';
	String get price => 'Price';
	String get quantity => 'Quantity';
	String get sales => 'Sales';
	String get views => 'Views';
	String get images => 'Images';
	late final _StringsDashboardSectionsProductsFormEn form = _StringsDashboardSectionsProductsFormEn._(_root);
}

// Path: dashboard.sections.customers
class _StringsDashboardSectionsCustomersEn {
	_StringsDashboardSectionsCustomersEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Customers';
	String get search => 'Search Customers';
	String get addCustomer => 'Add Customer';
}

// Path: dashboard.sections.theme
class _StringsDashboardSectionsThemeEn {
	_StringsDashboardSectionsThemeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Theme';
	String get customize => 'Customize';
	String get install => 'Install Theme';
	String get settings => 'Theme Settings';
}

// Path: dashboard.sections.shipping
class _StringsDashboardSectionsShippingEn {
	_StringsDashboardSectionsShippingEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Shipping';
	String get shippingPrices => 'Shipping Prices';
	late final _StringsDashboardSectionsShippingNoteEn note = _StringsDashboardSectionsShippingNoteEn._(_root);
	String get toDesk => 'To Desk';
	String get toHome => 'To Home';
	String get state => 'State';
	String get city => 'City';
}

// Path: dashboard.sections.integrations
class _StringsDashboardSectionsIntegrationsEn {
	_StringsDashboardSectionsIntegrationsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Integrations';
	String get paymentGateways => 'Payment Gateways';
	String get shippingProviders => 'Shipping Providers';
}

// Path: dashboard.sections.settings
class _StringsDashboardSectionsSettingsEn {
	_StringsDashboardSectionsSettingsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Settings';
	String get storeSettings => 'Store Settings';
	String get userSettings => 'User Settings';
	String get billing => 'Billing';
	String get plans => 'Plans';
}

// Path: products.fields.variants.types
class _StringsProductsFieldsVariantsTypesEn {
	_StringsProductsFieldsVariantsTypesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get text => 'Text';
	String get image => 'Image';
	String get color => 'Color';
}

// Path: dashboard.sections.overview.quickLinks
class _StringsDashboardSectionsOverviewQuickLinksEn {
	_StringsDashboardSectionsOverviewQuickLinksEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Quick Links';
	String get addProduct => 'Add Product';
	String get abandonedCarts => 'Abandoned Carts';
	String get changeTheme => 'Change Theme';
	String get storeSettings => 'Store Settings';
}

// Path: dashboard.sections.overview.recentOrders
class _StringsDashboardSectionsOverviewRecentOrdersEn {
	_StringsDashboardSectionsOverviewRecentOrdersEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Recent Orders';
	String get viewAll => 'View All';
}

// Path: dashboard.sections.overview.recentCustomers
class _StringsDashboardSectionsOverviewRecentCustomersEn {
	_StringsDashboardSectionsOverviewRecentCustomersEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Recent Customers';
	String get viewAll => 'View All';
}

// Path: dashboard.sections.products.form
class _StringsDashboardSectionsProductsFormEn {
	_StringsDashboardSectionsProductsFormEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _StringsDashboardSectionsProductsFormNameEn name = _StringsDashboardSectionsProductsFormNameEn._(_root);
	late final _StringsDashboardSectionsProductsFormTitleEn title = _StringsDashboardSectionsProductsFormTitleEn._(_root);
}

// Path: dashboard.sections.shipping.note
class _StringsDashboardSectionsShippingNoteEn {
	_StringsDashboardSectionsShippingNoteEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Pricing Guidelines';
	String get subtitle => 'Leaving the field empty means delivery is not available, and entering zero 0 means delivery is free.';
}

// Path: dashboard.sections.products.form.name
class _StringsDashboardSectionsProductsFormNameEn {
	_StringsDashboardSectionsProductsFormNameEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Name';
	String get hint => 'Enter product name';
}

// Path: dashboard.sections.products.form.title
class _StringsDashboardSectionsProductsFormTitleEn {
	_StringsDashboardSectionsProductsFormTitleEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Product Title';
	String get hint => 'The name known to customers, e.g., the name mentioned on the package or the car\'s name from the manufacturer.';
}

// Path: <root>
class _StringsAr implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsAr.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.ar,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ar>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	@override late final _StringsAr _root = this; // ignore: unused_field

	// Translations
	@override String get appName => 'تاجر فيف';
	@override String get all => 'الكل';
	@override String get loadMore => 'تحميل المزيد';
	@override String get soon => 'قريباً';
	@override late final _StringsGeneralAr general = _StringsGeneralAr._(_root);
	@override late final _StringsProductsAr products = _StringsProductsAr._(_root);
	@override late final _StringsAuthAr auth = _StringsAuthAr._(_root);
	@override late final _StringsUsersAr users = _StringsUsersAr._(_root);
	@override late final _StringsOrdersAr orders = _StringsOrdersAr._(_root);
	@override late final _StringsStoresAr stores = _StringsStoresAr._(_root);
	@override late final _StringsDashboardAr dashboard = _StringsDashboardAr._(_root);
	@override List<String> get states => [
		'أدرار',
		'الشلف',
		'الأغواط',
		'أم البواقي',
		'باتنة',
		'بجاية',
		'بسكرة',
		'بشار',
		'البليدة',
		'البويرة',
		'تمنراست',
		'تبسة',
		'تلمسان',
		'تيارت',
		'تيزي وزو',
		'الجزائر',
		'الجلفة',
		'جيجل',
		'سطيف',
		'سعيدة',
		'سكيكدة',
		'سيدي بلعباس',
		'عنابة',
		'قالمة',
		'قسنطينة',
		'المدية',
		'مستغانم',
		'المسيلة',
		'معسكر',
		'ورقلة',
		'وهران',
		'البيض',
		'اليزي',
		'برج بوعريريج',
		'بومرداس',
		'الطارف',
		'تندوف',
		'تيسمسيلت',
		'الوادي',
		'خنشلة',
		'سوق أهراس',
		'تيبازة',
		'ميلة',
		'عين الدفلى',
		'النعامة',
		'عين تموشنت',
		'غرداية',
		'غليزان',
		'تميمون',
		'برج بادية مختار',
		'أولاد جلال',
		'بني عباس',
		'إن صالح',
		'إن قزام',
		'تقارت',
		'جانت',
		'المقاير',
		'المنيعة',
	];
	@override List<List<String>> get cities => [
		[
			'أدرار',
			'أقابلي',
			'أولف',
			'بودة',
			'فنوجيل',
			'إن زغمير',
			'أولاد أحمد تيمي',
			'رقان',
			'سالي',
			'سبع',
			'تمنطيط',
			'تمست',
			'تيماكتين',
			'تِيت',
			'تسابيت',
			'زاوية كنتة',
		],
		[
			'أبو الحسن',
			'عين مران',
			'بنارية',
			'بني بوعتاب',
			'بني حواء',
			'بني راشد',
			'بوقادير',
			'بوزغاية',
			'بريحرة',
			'الشطية',
			'الشلف',
			'الظهرة',
			'الحجاج',
			'الكريمية',
			'المرسى',
			'حرشون',
			'هريفة',
			'الأبيض مجاجة',
			'مصدق',
			'وادي الفضة',
			'وادي قوسين',
			'وادي سلي',
			'أولاد عباس',
			'أولاد بن عبد القادر',
			'أولاد فارس',
			'أم الدروع',
			'سنجاس',
			'سيدي عبد الرحمن',
			'سيدي عكاشة',
			'صُبْحة',
			'تاجنة',
			'طلاس',
			'تاقرغريت',
			'تنَس',
			'زبوجة',
		],
		[
			'أفلو',
			'عين مهدي',
			'عين سيدي علي',
			'بيضاء',
			'بن ناصر بن شورة',
			'بريضة',
			'العصفية',
			'الغيشة',
			'الحويطة',
			'قلتة سيدي سعد',
			'حاج مشري',
			'حاسي دلاعة',
			'حاسي الرمل',
			'خنق',
			'قصر الحيران',
			'الأغواط',
			'وادي مزي',
			'وادي مرة',
			'سبقاق',
			'سيدي بوزيد',
			'سيدي مخلوف',
			'تاجموت',
			'تاجنونة',
			'تاويالة',
		],
		[
			'عين بابوش',
			'عين البيضاء',
			'عين ديس',
			'عين فكرون',
			'عين كرشة',
			'عين مليلة',
			'عين الزيتون',
			'بئر الشرقي',
			'بريش',
			'بئر الشهداء',
			'دلالة',
			'الأميرية',
			'البلالة',
			'الجازية',
			'الفجوج بوقرارة سعد',
			'الحرملية',
			'فكيرينة',
			'هنشير تومغاني',
			'قصر الصباحي',
			'مسكيانة',
			'وادي نيني',
			'أولاد قاسم',
			'أولاد حملة',
			'أولاد زواي',
			'أم البواقي',
			'راحية',
			'سيقوس',
			'سوق نعمان',
			'زروق',
		],
		[
			'عين جاسر',
			'عين توتة',
			'عين ياقوت',
			'آريس',
			'عزيل عبد القادر',
			'بريكة',
			'باتنة',
			'بني فوضالة الحقانية',
			'بيطام',
			'بولحيلات',
			'بومقر',
			'بومية',
			'بوزينة',
			'شمرة',
			'شير',
			'جرمة',
			'جزار',
			'الحاسي',
			'المعذر',
			'فسديس',
			'فم الطوب',
			'غسيرة',
			'قصر بوحمرة',
			'كسبات',
			'غيغبة',
			'حيذوسة',
			'إشمول',
			'إينوغيسن',
			'كيميل',
			'قصر بلزمة',
			'لاربعاء',
			'لازرو',
			'اليمسان',
			'مدوكال',
			'معافة',
			'منعة',
			'مروانة',
			'نقاوس',
			'وادي شعبة',
			'وادي الماء',
			'وادي الطاقة',
			'أولاد عمار',
			'أولاد عوف',
			'أولاد فاضل',
			'أولاد سلام',
			'أولاد سيدي سليمان',
			'عيون العصافير',
			'رحبات',
			'رأس العيون',
			'سفيان',
			'سقانة',
			'سريانة',
			'تكوت',
			'تالكهمت',
			'تاكسلانت',
			'تازولت',
			'تنَيت العابد',
			'تيغنمين',
			'تيغرغر',
			'تيلاتوة',
			'تيمقاد',
			'زانة البيضاء',
		],
		[
			'أدكار',
			'آيت رزين',
			'آيت إسماعيل',
			'أقبو',
			'أقافدوا',
			'أمالو',
			'أميزور',
			'أوقاس',
			'برباشة',
			'بجاية',
			'بني جليل',
			'بني كسيلة',
			'بني مليكش',
			'بني معوش',
			'بودجليل',
			'بوحمزة',
			'بوخليفة',
			'شلاتة',
			'شميني',
			'درقينة',
			'ذراع القايد',
			'القصور',
			'فناية الماثن',
			'فرعون',
			'إغيل علي',
			'إغرم',
			'كنديرة',
			'خراطة',
			'لفلاي',
			'ميسة',
			'ملبو',
			'وادي غير',
			'أوزلاقن',
			'صدوق',
			'سيدي عيش',
			'سيدي عياد',
			'سماعون',
			'سوق الاثنين',
			'سوق اوفلا',
			'تالة حمزة',
			'تمقرة',
			'تمريجت',
			'تاوريرت إغيل',
			'تاسكريوت',
			'تازمالت',
			'تيبان',
			'تيشي',
			'تيفرة',
			'تيمزريت',
			'تينبدار',
			'تيزي نبربر',
			'توجة',
		],
		[
			'عين ناقة',
			'عين زعطوط',
			'بسكرة',
			'برج بن عزوز',
			'بوشقرون',
			'برانس',
			'شتمة',
			'جمورة',
			'الفيض',
			'الغروس',
			'الحاجب',
			'الحوش',
			'القنطرة',
			'الوطاية',
			'فوغالة',
			'خنقة سيدي ناجي',
			'ليشانة',
			'ليوة',
			'مشونش',
			'مليلي',
			'مخادمة',
			'مزرعة',
			'أوماش',
			'أورلال',
			'سيدي عقبة',
			'طولقة',
			'زريبة الوادي',
		],
		[
			'عبادلة',
			'بشار',
			'بني ونيف',
			'بوقايس',
			'عرق فراج',
			'قنادسة',
			'لحمر',
			'مشرع الحاج بومدين',
			'مريجة',
			'مغول',
			'تاغيت',
		],
		[
			'عين الرومانة',
			'بني مراد',
			'بني تامو',
			'بن خليل',
			'البليدة',
			'بوعرفة',
			'بوفاريك',
			'بوقارة',
			'بوعينان',
			'الشبلي',
			'الشفة',
			'شريعة',
			'جبابرة',
			'العفرون',
			'قرواو',
			'حمام ملوان',
			'الأربعاء',
			'مفتاح',
			'موزاية',
			'واد جر',
			'واد العللوج',
			'أولاد سلامة',
			'أولاد يعيش',
			'سهان',
			'سومة',
		],
		[
			'أغبالو',
			'أهل القصر',
			'عين بسام',
			'عين الحجر',
			'عين لالوي',
			'عين ترك',
			'أيت لعزيز',
			'عمر',
			'بشلول',
			'بير غبالو',
			'برج أخريص',
			'بوضربالة',
			'البويرة',
			'بوكرام',
			'الشرفة',
			'الدشمية',
			'ديرة',
			'جباحية',
			'العجيبة',
			'الأصنام',
			'الحشيمية',
			'الحكيمية',
			'الخبوزية',
			'المقراني',
			'قرومة',
			'حجيرة زرقا',
			'حايزر',
			'حنيف',
			'القادرية',
			'لخضرية',
			'م شدالله',
			'معلى',
			'مامورة',
			'مزدور',
			'واد البردي',
			'أولاد راشد',
			'روراوة',
			'ريدان',
			'سحاريج',
			'سوق الخميس',
			'سور الغزلان',
			'تاغزوت',
			'تاغديت',
			'تاوريرت',
			'زبربر',
		],
		[
			'عبالسة',
			'عين أمقل',
			'إدلس',
			'تمنراست',
			'تازروك',
		],
		[
			'عين الزرقاء',
			'بجن',
			'بكارية',
			'بئر الذهب',
			'بئر العاتر',
			'بئر مقادم',
			'بوخضرة',
			'بولحاف دير',
			'الشريعة',
			'العوينات',
			'الحويجة بت',
			'الكويف',
			'الملابيود',
			'المريج',
			'المزيرعة',
			'العقلة',
			'العقلة المالحة',
			'فرقان',
			'جوريغير',
			'حماميت',
			'مرصوط',
			'نقرين',
			'وزان',
			'أم علي',
			'صفصف الوسرة',
			'ستة غنتيس',
			'تبسة',
			'تليجان',
		],
		[
			'عين فتاح',
			'عين فزة',
			'عين غرابة',
			'عين كبيرة',
			'عين نهالة',
			'عين تالوت',
			'عين يوسف',
			'أميور',
			'أزائل',
			'باب العسة',
			'بني بحدل',
			'بني بوسعيد',
			'بني خالد',
			'بني مستر',
			'بني ورسوس',
			'بني سميل',
			'بني سنوس',
			'بن سكران',
			'بوحلو',
			'بويحي',
			'شتوان',
			'دار ياغموراسين',
			'جبالة',
			'العريشة',
			'الفحول',
			'الجور',
			'فلاوسن',
			'غزاوت',
			'حمام بوغرارة',
			'الحناية',
			'الحنين',
			'مغنية',
			'منصورة',
			'مرسى بن مهيدي',
			'مسيردة فوقة',
			'ندرومة',
			'واد شولي',
			'أولاد ميمون',
			'أولاد رياح',
			'رمشي',
			'صبرة',
			'سبعة شيوخ',
			'سبدو',
			'سيدي عبد الله',
			'سيدي جلالي',
			'سيدي مجاهد',
			'سوحالية',
			'سواني',
			'سوق تلتة',
			'تيرني بني حديل',
			'تيانات',
			'تلمسان',
			'زناتة',
		],
		[
			'عين بوشقيف',
			'عين الدهب',
			'عين الحديد',
			'عين كرمس',
			'عين زريت',
			'بوقارة',
			'الشحايمة',
			'دحموني',
			'جبلت رصفة',
			'جلالي بن عمار',
			'فايجة',
			'فرندة',
			'قرطوفة',
			'حمادية',
			'قصر شلالة',
			'مدنة',
			'مهدية',
			'مشرع صفا',
			'مدريسة',
			'مدروسة',
			'مغيلة',
			'ملكو',
			'ناضورة',
			'نعيمة',
			'واد الليلي',
			'رحوية',
			'رشايقة',
			'سبعين',
			'سبت',
			'سرغين',
			'سي عبد الغني',
			'سيدي عبد الرحمن',
			'سيدي علي ملال',
			'سيدي بختي',
			'سيدي حسني',
			'سوقر',
			'تقدمت',
			'تخمارت',
			'تيارت',
			'تيدة',
			'توصنينة',
			'زمالة الأمير عبد القادر',
		],
		[
			'أبي يوسف',
			'أغريبس',
			'أغوني غغران',
			'عين الحمام',
			'عين زاوية',
			'أيت أغواشة',
			'أيت بوعدو',
			'أيت بومهدي',
			'أيت شفاء',
			'أيت خليلي',
			'أيت محمود',
			'أيت أومالو',
			'أيت تودرت',
			'أيت يحيى',
			'أيت يحيى موسى',
			'أكبيل',
			'أكرو',
			'عسي يوسف',
			'أزازقة',
			'أزفون',
			'بني عيسى',
			'بني دوالة',
			'بني يني',
			'بني زيكي',
			'بني زمنزر',
			'بوغني',
			'بودجيمة',
			'بونوح',
			'بوزقن',
			'جبل عيسى ميمون',
			'درع بن خدة',
			'درع الميزان',
			'فرحة',
			'فريقات',
			'إبودرارن',
			'إجدر',
			'إفرهونان',
			'إفيغا',
			'إفليسن',
			'إلليلتن',
			'إللولة أومالو',
			'إمسوحال',
			'إرجان',
			'لربا ناث إراثن',
			'لربا ناث إراثن',
			'مكيرة',
			'معتقة',
			'ماقدة',
			'مشتراص',
			'مكلا',
			'مزرانة',
			'واكيف',
			'واد حياس',
			'وادوس',
			'وقنون',
			'سيدي نعمان',
			'سوامع',
			'سوق الثنين',
			'تادمايت',
			'تيقزيرت',
			'تيميزارت',
			'ترميتين',
			'تيزي غنيف',
			'تيزي إنتلات',
			'تيزي وزو',
			'تيزي راشد',
			'ياكورين',
			'يتافن',
			'زكري',
		],
		[
			'عين بنيان',
			'عين الطاية',
			'الجزائر الوسطى',
			'باب الواد',
			'باب الزوار',
			'بابا حسن',
			'باش جراح',
			'الباينس الرومانس',
			'براكي',
			'بن عقنون',
			'بني مسوس',
			'بير مراد رايس',
			'بير توتة',
			'بيرخادم',
			'بولوغين إبنو زيري',
			'برج الباهري',
			'برج الكيفان',
			'بروبة',
			'بوزريعة',
			'القصبة',
			'الشراقة',
			'دار البيضاء',
			'دلي إبراهيم',
			'جسر قاسنطينة',
			'الدويرة',
			'الدرارية',
			'العشور',
			'البيار',
			'الحراش',
			'المدينة',
			'المغارية',
			'المرسى',
			'المرادية',
			'هراوة',
			'حسين داي',
			'الحيدرة',
			'الخرائصية',
			'القبة',
			'ليز أوكاليبتوس',
			'معالمة',
			'محمد بلوزداد',
			'محمديا',
			'واد كوريش',
			'واد سمار',
			'أولاد شبل',
			'أولاد فيت',
			'رحمانية',
			'رايس حميدو',
			'رغاية',
			'رويبة',
			'راحولا',
			'سحاولة',
			'ستاوالي',
			'سيدي محمد',
			'سيدي موسى',
			'سويدانية',
			'تسالة المرجة',
			'زرالدة',
		],
		[
			'عين الشهداء',
			'عين الإبل',
			'عين فكة',
			'عين معبد',
			'عين وسارة',
			'عمورة',
			'بن هر',
			'بني يعقوب',
			'بيرين',
			'بويرة الأحداب',
			'الشارف',
			'دار الشيوخ',
			'دلدو',
			'الجلفة',
			'دويس',
			'القديد',
			'الإدريسية',
			'الخميس',
			'فيض البطمة',
			'قرنيني',
			'قطارة',
			'حد الصحاري',
			'حاسي بحبح',
			'حاسي العش',
			'حاسي فدول',
			'مليلية',
			'مسعد',
			'مجبرة',
			'أم العظام',
			'سد رحال',
			'سلمانة',
			'سيدي بايزيد',
			'سيدي لعجل',
			'تادميت',
			'زعفران',
			'زاقر',
		],
		[
			'برج الطهر',
			'بودريعة بني ياجيس',
			'بوعراوي بلهادف',
			'بوسيف أولاد عسكر',
			'الشحنة',
			'الشقفة',
			'الجمعة بني حبيبي',
			'جيملة',
			'العنصر',
			'العوانة',
			'الكنار نشفي',
			'الميلية',
			'أمير عبد القادر',
			'راقنة',
			'غبالة',
			'جيجل',
			'خيري واد عجول',
			'كواعس',
			'وجانة',
			'أولاد رابح',
			'أولاد يحيى خدروش',
			'سلمة بن زياد',
			'ستارة',
			'سيدي عبد العزيز',
			'سيدي معروف',
			'الطاهر',
			'تاكسنة',
			'زيامة منصورية',
		],
		[
			'عين العباسة',
			'عين أرنات',
			'عين أزال',
			'عين الكبيرة',
			'عين لحجر',
			'عين لقراج',
			'عين والمان',
			'عين الروى',
			'عين السبت',
			'آيت نوال مزادة',
			'آيت تزي',
			'عمروش',
			'بابور',
			'بازر سكرة',
			'بيضاء برج',
			'بلاعة',
			'بني عزيز',
			'بني شبانة',
			'بني فودة',
			'بني موحلي',
			'بني ورتيلان',
			'بني وسين',
			'بير العرش',
			'بير حدادة',
			'بوأنڤادس',
			'بوقاعة',
			'بوسلام',
			'بوطالب',
			'دهامشة',
			'جميلة',
			'ذراع قبيلة',
			'العلمة',
			'الأوريسيا',
			'أولاد عدوان',
			'أولاد صباح',
			'أولاد صابر',
			'راس الفروج',
			'سدرج الغول',
			'سطيف',
			'تاخودة',
			'تالا إيفاسن',
			'ثاية',
			'تيلا',
			'تيزي نبشار',
		],
		[
			'عين الحجار',
			'عين سخونة',
			'عين السلطان',
			'دوار ثابث',
			'الحساسنة',
			'هونات',
			'معمورة',
			'مولاي العربي',
			'أولاد إبراهيم',
			'أولاد خالد',
			'سعيدة',
			'سيدي أحمد',
			'سيدي عمار',
			'سيدي بوبكر',
			'تيرسين',
			'يوب',
		],
		[
			'عين بوزيان',
			'عين شرشار',
			'عين قشرة',
			'عين زويت',
			'عزابة',
			'بكوش لخضر',
			'بن عزوز',
			'بني بشير',
			'بني ولبان',
			'بني زيد',
			'بين الويدان',
			'بوشطاطة',
			'الشرايع',
			'كوللو',
			'جندل سعدي محمد',
			'العروش',
			'الغدير',
			'الحدائق',
			'المرسى',
			'مجاز الدشيش',
			'السبت',
			'فلفلة',
			'حمادي كرومة',
			'كنوة',
			'كرقيرة',
			'خناق مايون',
			'واد زهور',
			'ولجة بولبلوط',
			'أولاد عطية',
			'أولاد حبابة',
			'أم الطوب',
			'رمضان جمال',
			'صالح بوشعور',
			'سيدي مزغيش',
			'سكيكدة',
			'تمالوس',
			'زردازة',
			'زيتونة',
		],
		[
			'عين الدفلى',
			'عين البرد',
			'عين قادة',
			'عين ثريد',
			'عين تندمين',
			'عمراص',
			'بدردين المقراني',
			'بلعربي',
			'بن باديس',
			'بنشيبة شليا',
			'بير الحمام',
			'بودجبة البرج',
			'بوخنافيس',
			'شتوان بلعيلا',
			'الضاية',
			'الحقيقة',
			'حاسي دهو',
			'حاسي زهانة',
			'لامتار',
			'مسيكدة',
			'مكادرة',
			'مرحوم',
			'مريين',
			'مزورة',
			'مصطفى بن إبراهيم',
			'مولاي سليسن',
			'واد سباع',
			'واد سفيون',
			'واد الطوريرة',
			'راس الماء',
			'رجم دموش',
			'سهالة ثاورة',
			'سفيزف',
			'سيدي علي بن يوب',
			'سيدي علي بوسيدي',
			'سيدي بلعباس',
			'سيدي إبراهيم',
			'سيدي شيب',
			'سيدي دهو الزاير',
			'سيدي حمادوش',
			'سيدي خالد',
			'سيدي لحسن',
			'سيدي يعقوب',
			'تابية',
			'تافسور',
			'تاودموت',
			'تغاليمت',
			'تلاغ',
			'تنيرة',
			'تسالة',
			'تلموني',
			'زرواة',
		],
		[
			'عين الباردة',
			'عنابة',
			'برحال',
			'شطايبي',
			'شرفاء',
			'البوني',
			'الحجار',
			'العلما',
			'واد العنب',
			'سرايدي',
			'سيدي عمار',
			'التريعات',
		],
		[
			'عين بن بيضاء',
			'عين الحساينية',
			'عين العربي',
			'عين مخلوق',
			'عين رقادة',
			'بلكي',
			'بن جراح',
			'بني مزلين',
			'برج صباط',
			'بو حشانة',
			'بو حمدان',
			'بوعاتي محمود',
			'بوشقوف',
			'بوحمرة أحمد',
			'دهوارة',
			'جبالة خميس',
			'الفجوج',
			'قلعة بوصبع',
			'قالمة',
			'حمام دباغ',
			'حمام النبائل',
			'هيليوبوليس',
			'خزارة',
			'مجاز عمار',
			'مجاز صفا',
			'نشميا',
			'واد الشحم',
			'واد فاغة',
			'واد زناتي',
			'راس العقبة',
			'ركنية',
			'سلاوة عنونة',
			'سيدي السندل',
			'تملوكة',
		],
		[
			'عين عبيد',
			'عين السمارة',
			'بن باديس',
			'بني حميدان',
			'قسنطينة',
			'ديدوش مراد',
			'الخروب',
			'حمّة بوزيان',
			'ابن زياد',
			'مسعود بوجريو',
			'أولاد رحموني',
			'زيغود يوسف',
		],
		[
			'عين بوسيف',
			'عين أوكسير',
			'عيساوية',
			'عزيز',
			'بعطة',
			'بن شيكاو',
			'بني سليمان',
			'برواقية',
			'بير بن لعبيد',
			'بوغار',
			'بوعيش',
			'بوعيشون',
			'بوشراهيل',
			'بوغزول',
			'بوسكان',
			'شبونية',
			'شلالة العذورة',
			'شنيقل',
			'داميات',
			'دراغ',
			'ديو باسان',
			'جواب',
			'ضرع الصمر',
			'العزيزية',
			'القلب الكبير',
			'الحمدانية',
			'العمارية',
			'الوينات',
			'حناشة',
			'كاف لخضر',
			'خمس جوامع',
			'قصر البخاري',
			'مغروة',
			'المدية',
			'مجبار',
			'مفتاحة',
			'مزرانة',
			'ميهوب',
			'وعمري',
			'واد حربيل',
			'أولاد عنتر',
			'أولاد بوعشرة',
			'أولاد إبراهيم',
			'أولاد الديد',
			'أولاد هلال',
			'أولاد معرف',
			'أم الجليل',
			'وزيرة',
			'رباعية',
			'صانق',
			'صدراية',
			'سقوان',
			'سي محجوب',
			'سيدي دامد',
			'سيدي النعمان',
			'سيدي رابي',
			'سيدي زهار',
			'سيدي زيان',
			'سواغي',
			'تابلات',
			'تافراوت',
			'تامغصيدة',
			'تلاتة الدوائر',
			'زوبيرية',
		],
		[
			'أشاشا',
			'عين بودينار',
			'عين نويسي',
			'عين سيدي الشريف',
			'عين تدلس',
			'بن عبد المالك رمضان',
			'بوقيراط',
			'فرناكة',
			'حجاج',
			'حاسي مامش',
			'الحسيان',
			'خضرة',
			'خير الدين',
			'المنصورة',
			'مزاغران',
			'مسرة',
			'مستغانم',
			'نكمارية',
			'واد الخير',
			'أولاد بوغالم',
			'أولاد معالح',
			'سفساف',
			'سيادة',
			'سيدي علي',
			'سيدي بلاطر',
			'سيدي لخضر',
			'سيرات',
			'سوافلية',
			'سور',
			'ستيديا',
			'تزقايت',
			'تواهرية',
		],
		[
			'عين الحاجل',
			'عين الملح',
			'عين فارس',
			'عين خضرا',
			'عين ريش',
			'بلعايبة',
			'بن سرور',
			'بني إلمان',
			'بنزوه',
			'برهوم',
			'بير فودة',
			'بو سعادة',
			'بوتي سايح',
			'شلال',
			'ديحانة',
			'جبل مسعد',
			'الحامل',
			'الحوامد',
			'حمام دالعة',
			'خطوطي سد الجير',
			'خبانة',
			'مسيف',
			'مسيلة',
			'مطرفة',
			'معديد',
			'معريف',
			'مقرى',
			'مجدل',
			'منعة',
			'محمد بوضياف',
			'وانوغة',
			'أولاد عدي غبالة',
			'أولاد دراج',
			'أولاد ماضي',
			'أولاد منصور',
			'أولاد سيدي إبراهيم',
			'أولاد سليمان',
			'أولتيم',
			'سيدي عيسى',
			'سيدي عمر',
			'سيدي حاجرس',
			'سيدي محمد',
			'سليم',
			'سوامع',
			'تامسة',
			'تارمونت',
			'زرزور',
		],
		[
			'عين فارس',
			'عين فكان',
			'عين فرح',
			'عين فراس',
			'العايمية',
			'عوف',
			'بنيان',
			'بو حني',
			'بوحنيفية',
			'شرفة',
			'البورج',
			'القعدة',
			'الغمري',
			'الغيتينة',
			'الحاشم',
			'الكورت',
			'المامونية',
			'المنور',
			'فراغويج',
			'فروها',
			'غروس',
			'غريس',
			'قرجوم',
			'حسين',
			'خلوية',
			'مخضة',
			'موسى',
			'معسكر',
			'ماطمور',
			'مكتة دوز',
			'محمدية',
			'نسموت',
			'أقاز',
			'وادي الأبطال',
			'وادي طارية',
			'رأس العين عميروش',
			'صجيرارة',
			'صهيلية',
			'سيدي عبد الجبار',
			'سيدي عبد المؤمن',
			'سيدي بوسعيد',
			'سيدي قادة',
			'سيغ',
			'تيغنيف',
			'تيزي',
			'زهانة',
			'زلامة',
		],
		[
			'عين البيضاء',
			'البرمة',
			'حاسي بن عبد الله',
			'حاسي مسعود',
			'نقوسة',
			'ورقلة',
			'رويسات',
			'سيدي خويلد',
		],
		[
			'عين بيا',
			'عين كرمة',
			'عين ترك',
			'أرزو',
			'بن فرحة',
			'بثيوة',
			'بئر الجير',
			'بوفاتيس',
			'بوصفر',
			'بوتليليس',
			'العنقار',
			'البراية',
			'الكرمة',
			'السانية',
			'قديل',
			'حاسي بن عقبة',
			'حاسي بونيف',
			'حاسي مفسوخ',
			'مرساط الحجاج',
			'مرس الكبير',
			'مسرغين',
			'وهران',
			'وادي تليلات',
			'سيدي بن يبقى',
			'سيدي شامي',
			'طفراوي',
		],
		[
			'عين العراق',
			'أرباوات',
			'بوجطوب',
			'بوسمغون',
			'بريزينة',
			'شقويق',
			'شلالة',
			'البياض',
			'البيض سيدي الشيخ',
			'البنود',
			'الخيثر',
			'المهرة',
			'غسول',
			'كف الأحمر',
			'كراكدة',
			'روقصة',
			'سيدي عمر',
			'سيدي سليمان',
			'سيدي تيفور',
			'ستيتن',
			'توسمولين',
		],
		[
			'بورج عمر إدريس',
			'دبدب',
			'إيليزي',
			'إن أمناس',
		],
		[
			'عين تغريت',
			'عين تسرة',
			'بليمور',
			'بن داود',
			'بئر قصدالي',
			'بورج بوعريريج',
			'بورج غدير',
			'بورج زمورة',
			'كولة',
			'جعافرة',
			'العاش',
			'العشير',
			'الأنصور',
			'الحمادية',
			'المحير',
			'المين',
			'غيلاسة',
			'حرازة',
			'حسناوة',
			'خليل',
			'قصور',
			'منصورة',
			'مجانة',
			'أولاد براهيم',
			'أولاد دحمان',
			'أولاد سيدي إبراهيم',
			'ربطة',
			'رأس الواد',
			'سيدي البارك',
			'تافريغ',
			'تاقليت',
			'تنيت النصر',
			'تسمارت',
			'تكستر',
		],
		[
			'عفير',
			'عمال',
			'بغلية',
			'بن شود',
			'بني عمران',
			'بورج منايل',
			'بودواو',
			'بودواو البحري',
			'بومرداس',
			'بوزقزة كدارة',
			'شعبة العامر',
			'كورسو',
			'دليس',
			'جينت',
			'الخروبة',
			'حميدي',
			'عيسر',
			'خميس الخشنة',
			'لارباتاش',
			'الغطاطش',
			'الناصرية',
			'أولاد عيسى',
			'أولاد هداج',
			'أولاد موسى',
			'سي مصطفى',
			'سيدي داود',
			'سوق الحاد',
			'تورجة',
			'الثنية',
			'تجلابين',
			'تيمزريت',
			'زموري',
		],
		[
			'عين بن خليل',
			'عين صفراء',
			'السلة',
			'جنيان بورزق',
			'البيود',
			'كاسدير',
			'مكمان بن عامر',
			'مشرية',
			'مغرار',
			'النعامة',
			'سفيصيفة',
			'تيوت',
		],
		[
			'أغلال',
			'عين الأربعاء',
			'عين كيحل',
			'عين تموشنت',
			'عين الطلبة',
			'أوبليل',
			'بني صاف',
			'بوزجار',
			'شعبة الحم',
			'شنتوف',
			'العامرية',
			'المالح',
			'المساعد',
			'أمير عبد القادر',
			'حمام بوحجر',
			'حساسنة',
			'حسي الغلا',
			'وادي بركش',
			'وادي صباح',
			'أولاد بوجمعة',
			'أولاد كيحل',
			'أولحاقة الغرابة',
			'سيدي بن عدة',
			'سيدي بومدين',
			'سيدي أورياش',
			'سيدي صافي',
			'تمزورة',
			'ترقا',
		],
		[
			'بريان',
			'بنورة',
			'ضياط بن ضهوة',
			'العطف',
			'الغرارة',
			'غرداية',
			'المنصورة',
			'متليلي',
			'سبسب',
			'زلفانة',
		],
		[
			'عين رحمة',
			'عين طارق',
			'أمي موسى',
			'بلعسل بوزقزة',
			'بن داود',
			'بني درقون',
			'بني زنتيس',
			'دار بن عبد الله',
			'جديوية',
			'القطار',
			'الحمادنة',
			'الحسي',
			'المطمر',
			'الولدجة',
			'هد الشكالة',
			'حمري',
			'قلعة',
			'الحلف',
			'مازونة',
			'مديونة',
			'مينديس',
			'مرجة سيدي عابد',
			'واريزان',
			'وادي الجمعة',
			'وادي السالم',
			'وادي الريو',
			'أولاد عيش',
			'أولاد سيدي ميهوب',
			'رمكة',
			'ريليزان',
			'سيدي خطاب',
			'سيدي لزرق',
			'سيدي محمد بن علي',
			'سيدي محمد بن عودة',
			'سيدي سعادة',
			'سوق الحد',
			'يلل',
			'زمورة',
		],
		[
			'أوقروت',
			'شاروين',
			'دلدول',
			'قصر قدور',
			'مطرفة',
			'أولاد عيسى',
			'أولاد سعيد',
			'تالمين',
			'تيميمون',
			'تينركوك',
		],
		[
			'برج بادجي مختار',
			'تيمياوين',
		],
		[
			'بسبس',
			'الشعيبة',
			'دوسان',
			'أولاد جلال',
			'رأس المياض',
			'سيدي خالد',
		],
		[
			'بني عباس',
			'بني إخليف',
			'الواطة',
			'إيغلي',
			'كرزاز',
			'كسابي',
			'أولاد خضير',
			'تابلبالة',
			'تمترت',
			'تيمودي',
		],
		[
			'فقارة الزاوية',
			'إن غار',
			'إن صالح',
		],
		[
			'إن قزام',
			'تين زواتين',
		],
		[
			'بن عاصور',
			'بليدة عامر',
			'العلية',
			'الحجيرة',
			'مقارين',
			'منقر',
			'النزلة',
			'سيدي سليمان',
			'تايبت',
			'تبسبست',
			'تماسين',
			'تقرت',
			'زاوية العابدية',
		],
		[
			'برج الحواس',
			'جانت',
		],
		[
			'جماعة',
			'المغير',
			'مرارة',
			'أم تويور',
			'سيدي عمران',
			'سيدي خليل',
			'ستيل',
			'تندلة',
		],
		[
			'المنيعة',
			'حاسي فيهال',
			'حاسي جرة',
		],
	];
}

// Path: general
class _StringsGeneralAr implements _StringsGeneralEn {
	_StringsGeneralAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get import => 'استيراد';
	@override String get export => 'تصدير';
	@override String get save => 'حفظ';
	@override String get cancel => 'إلغاء';
	@override String get edit => 'تعديل';
	@override String get preview => 'معاينة';
	@override String get update => 'تحديث';
	@override String get delete => 'حذف';
	@override String get add => 'إضافة';
	@override String get link => 'رابط';
	@override String get error => 'خطأ';
	@override String get refresh => 'تحديث';
	@override String get required => 'مطلوب';
	@override late final _StringsGeneralDefaultCurrencyAr defaultCurrency = _StringsGeneralDefaultCurrencyAr._(_root);
	@override String get confirm => 'تأكيد';
	@override String get done => 'تمت العملية بنجاح';
	@override String get failed => 'فشلت العملية';
	@override String get views => 'المشاهدات';
	@override String get visits => 'الزيارات';
	@override String get submit => 'إرسال';
	@override String get shipping => 'الشحن';
	@override String get total => 'المجموع';
	@override String get control => 'التحكم';
	@override String get empty => 'فارغة';
}

// Path: products
class _StringsProductsAr implements _StringsProductsEn {
	_StringsProductsAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'المنتجات';
	@override late final _StringsProductsFormAr form = _StringsProductsFormAr._(_root);
	@override late final _StringsProductsFieldsAr fields = _StringsProductsFieldsAr._(_root);
}

// Path: auth
class _StringsAuthAr implements _StringsAuthEn {
	_StringsAuthAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override late final _StringsAuthUserAr user = _StringsAuthUserAr._(_root);
	@override String get forgotPassword => 'نسيت كلمة المرور';
	@override String get resetPassword => 'إعادة تعيين كلمة المرور';
	@override String get signin => 'تسجيل الدخول';
	@override String get signup => 'التسجيل';
	@override String get signout => 'تسجيل الخروج';
	@override String get acceptTerms => 'بالتسجيل، توافق على شروط الخدمة وسياسة الخصوصية.';
	@override String get acceptTermsValidation => 'يجب قبول الشروط والأحكام.';
	@override String get dontHaveAnAccount => 'ليس لديك حساب؟';
	@override String get alreadyHaveAnAccount => 'لديك حساب بالفعل؟';
}

// Path: users
class _StringsUsersAr implements _StringsUsersEn {
	_StringsUsersAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'المستخدمين';
	@override late final _StringsUsersFormAr form = _StringsUsersFormAr._(_root);
	@override late final _StringsUsersFieldsAr fields = _StringsUsersFieldsAr._(_root);
}

// Path: orders
class _StringsOrdersAr implements _StringsOrdersEn {
	_StringsOrdersAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override late final _StringsOrdersStatusAr status = _StringsOrdersStatusAr._(_root);
	@override String get label => 'الطلبات';
	@override late final _StringsOrdersFormAr form = _StringsOrdersFormAr._(_root);
	@override late final _StringsOrdersFieldsAr fields = _StringsOrdersFieldsAr._(_root);
}

// Path: stores
class _StringsStoresAr implements _StringsStoresEn {
	_StringsStoresAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'المتاجر';
	@override String get myStores => 'متاجري';
	@override late final _StringsStoresFormAr form = _StringsStoresFormAr._(_root);
	@override late final _StringsStoresFieldsAr fields = _StringsStoresFieldsAr._(_root);
}

// Path: dashboard
class _StringsDashboardAr implements _StringsDashboardEn {
	_StringsDashboardAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get welcomeUser => 'مرحبا، ';
	@override String get title => 'لوحة التحكم';
	@override late final _StringsDashboardSectionsAr sections = _StringsDashboardSectionsAr._(_root);
}

// Path: general.defaultCurrency
class _StringsGeneralDefaultCurrencyAr implements _StringsGeneralDefaultCurrencyEn {
	_StringsGeneralDefaultCurrencyAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get code => 'دج';
	@override String get symbol => 'دج';
	@override String get name => 'دينار جزائري';
}

// Path: products.form
class _StringsProductsFormAr implements _StringsProductsFormEn {
	_StringsProductsFormAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get create => 'إنشاء منتج';
	@override late final _StringsProductsFormNameAr name = _StringsProductsFormNameAr._(_root);
	@override late final _StringsProductsFormTitleAr title = _StringsProductsFormTitleAr._(_root);
	@override late final _StringsProductsFormPriceAr price = _StringsProductsFormPriceAr._(_root);
	@override late final _StringsProductsFormQuantityAr quantity = _StringsProductsFormQuantityAr._(_root);
	@override late final _StringsProductsFormSalesAr sales = _StringsProductsFormSalesAr._(_root);
	@override late final _StringsProductsFormViewsAr views = _StringsProductsFormViewsAr._(_root);
	@override late final _StringsProductsFormImagesAr images = _StringsProductsFormImagesAr._(_root);
}

// Path: products.fields
class _StringsProductsFieldsAr implements _StringsProductsFieldsEn {
	_StringsProductsFieldsAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override late final _StringsProductsFieldsVariantsAr variants = _StringsProductsFieldsVariantsAr._(_root);
	@override late final _StringsProductsFieldsNameAr name = _StringsProductsFieldsNameAr._(_root);
	@override late final _StringsProductsFieldsTitleAr title = _StringsProductsFieldsTitleAr._(_root);
	@override late final _StringsProductsFieldsPriceAr price = _StringsProductsFieldsPriceAr._(_root);
	@override late final _StringsProductsFieldsQuantityAr quantity = _StringsProductsFieldsQuantityAr._(_root);
	@override late final _StringsProductsFieldsSalesAr sales = _StringsProductsFieldsSalesAr._(_root);
	@override late final _StringsProductsFieldsViewsAr views = _StringsProductsFieldsViewsAr._(_root);
	@override late final _StringsProductsFieldsImagesAr images = _StringsProductsFieldsImagesAr._(_root);
}

// Path: auth.user
class _StringsAuthUserAr implements _StringsAuthUserEn {
	_StringsAuthUserAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override late final _StringsAuthUserAlertAr alert = _StringsAuthUserAlertAr._(_root);
	@override String get personalInfo => 'المعلومات الشخصية';
	@override String get securityAndSignin => 'الأمان وتسجيل الدخول';
	@override String get signout => 'تسجيل الخروج';
}

// Path: users.form
class _StringsUsersFormAr implements _StringsUsersFormEn {
	_StringsUsersFormAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get create => 'إنشاء مستخدم';
	@override late final _StringsUsersFormNameAr name = _StringsUsersFormNameAr._(_root);
	@override late final _StringsUsersFormEmailAr email = _StringsUsersFormEmailAr._(_root);
	@override late final _StringsUsersFormPasswordAr password = _StringsUsersFormPasswordAr._(_root);
}

// Path: users.fields
class _StringsUsersFieldsAr implements _StringsUsersFieldsEn {
	_StringsUsersFieldsAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override late final _StringsUsersFieldsNameAr name = _StringsUsersFieldsNameAr._(_root);
	@override late final _StringsUsersFieldsEmailAr email = _StringsUsersFieldsEmailAr._(_root);
	@override late final _StringsUsersFieldsPhoneAr phone = _StringsUsersFieldsPhoneAr._(_root);
	@override late final _StringsUsersFieldsPasswordAr password = _StringsUsersFieldsPasswordAr._(_root);
}

// Path: orders.status
class _StringsOrdersStatusAr implements _StringsOrdersStatusEn {
	_StringsOrdersStatusAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get draft => 'مسودة';
	@override String get pending => 'قيد الانتظار';
	@override String get processing => 'قيد المعالجة';
	@override String get completed => 'مكتمل';
	@override String get cancelled => 'ملغى';
}

// Path: orders.form
class _StringsOrdersFormAr implements _StringsOrdersFormEn {
	_StringsOrdersFormAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get create => 'إنشاء طلب';
	@override late final _StringsOrdersFormCustomerAr customer = _StringsOrdersFormCustomerAr._(_root);
	@override late final _StringsOrdersFormProductsAr products = _StringsOrdersFormProductsAr._(_root);
	@override late final _StringsOrdersFormStatusAr status = _StringsOrdersFormStatusAr._(_root);
}

// Path: orders.fields
class _StringsOrdersFieldsAr implements _StringsOrdersFieldsEn {
	_StringsOrdersFieldsAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override late final _StringsOrdersFieldsCustomerNameAr customerName = _StringsOrdersFieldsCustomerNameAr._(_root);
	@override late final _StringsOrdersFieldsCustomerPhoneAr customerPhone = _StringsOrdersFieldsCustomerPhoneAr._(_root);
	@override late final _StringsOrdersFieldsCustomerIpAr customerIp = _StringsOrdersFieldsCustomerIpAr._(_root);
	@override late final _StringsOrdersFieldsCustomerNoteAr customerNote = _StringsOrdersFieldsCustomerNoteAr._(_root);
	@override late final _StringsOrdersFieldsPrivateNoteAr privateNote = _StringsOrdersFieldsPrivateNoteAr._(_root);
	@override late final _StringsOrdersFieldsShippingAddressAr shippingAddress = _StringsOrdersFieldsShippingAddressAr._(_root);
	@override late final _StringsOrdersFieldsShippingCityAr shippingCity = _StringsOrdersFieldsShippingCityAr._(_root);
	@override late final _StringsOrdersFieldsShippingStateAr shippingState = _StringsOrdersFieldsShippingStateAr._(_root);
	@override late final _StringsOrdersFieldsShippingMethodIdAr shippingMethodId = _StringsOrdersFieldsShippingMethodIdAr._(_root);
	@override late final _StringsOrdersFieldsPaymentMethodIdAr paymentMethodId = _StringsOrdersFieldsPaymentMethodIdAr._(_root);
	@override late final _StringsOrdersFieldsItemsAr items = _StringsOrdersFieldsItemsAr._(_root);
	@override late final _StringsOrdersFieldsSubtotalAr subtotal = _StringsOrdersFieldsSubtotalAr._(_root);
	@override late final _StringsOrdersFieldsShippingPriceAr shippingPrice = _StringsOrdersFieldsShippingPriceAr._(_root);
	@override late final _StringsOrdersFieldsDiscountAr discount = _StringsOrdersFieldsDiscountAr._(_root);
	@override late final _StringsOrdersFieldsCouponAr coupon = _StringsOrdersFieldsCouponAr._(_root);
	@override late final _StringsOrdersFieldsStoreIdAr storeId = _StringsOrdersFieldsStoreIdAr._(_root);
	@override late final _StringsOrdersFieldsMetadataAr metadata = _StringsOrdersFieldsMetadataAr._(_root);
	@override late final _StringsOrdersFieldsStatusAr status = _StringsOrdersFieldsStatusAr._(_root);
	@override late final _StringsOrdersFieldsPaymentStatusAr paymentStatus = _StringsOrdersFieldsPaymentStatusAr._(_root);
	@override late final _StringsOrdersFieldsDeliveryStatusAr deliveryStatus = _StringsOrdersFieldsDeliveryStatusAr._(_root);
	@override late final _StringsOrdersFieldsCreatedAtAr createdAt = _StringsOrdersFieldsCreatedAtAr._(_root);
	@override late final _StringsOrdersFieldsUpdatedAtAr updatedAt = _StringsOrdersFieldsUpdatedAtAr._(_root);
	@override late final _StringsOrdersFieldsManualTotalAr manualTotal = _StringsOrdersFieldsManualTotalAr._(_root);
	@override late final _StringsOrdersFieldsCalculatedTotalAr calculatedTotal = _StringsOrdersFieldsCalculatedTotalAr._(_root);
	@override late final _StringsOrdersFieldsTotalAr total = _StringsOrdersFieldsTotalAr._(_root);
}

// Path: stores.form
class _StringsStoresFormAr implements _StringsStoresFormEn {
	_StringsStoresFormAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get create => 'إنشاء متجر';
	@override String get storeNameExample => 'مثال: متجري';
}

// Path: stores.fields
class _StringsStoresFieldsAr implements _StringsStoresFieldsEn {
	_StringsStoresFieldsAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override late final _StringsStoresFieldsNameAr name = _StringsStoresFieldsNameAr._(_root);
	@override late final _StringsStoresFieldsTitleAr title = _StringsStoresFieldsTitleAr._(_root);
	@override late final _StringsStoresFieldsDescriptionAr description = _StringsStoresFieldsDescriptionAr._(_root);
	@override late final _StringsStoresFieldsColorAr color = _StringsStoresFieldsColorAr._(_root);
	@override late final _StringsStoresFieldsSlugAr slug = _StringsStoresFieldsSlugAr._(_root);
}

// Path: dashboard.sections
class _StringsDashboardSectionsAr implements _StringsDashboardSectionsEn {
	_StringsDashboardSectionsAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override late final _StringsDashboardSectionsOverviewAr overview = _StringsDashboardSectionsOverviewAr._(_root);
	@override late final _StringsDashboardSectionsOrdersAr orders = _StringsDashboardSectionsOrdersAr._(_root);
	@override late final _StringsDashboardSectionsPosAr pos = _StringsDashboardSectionsPosAr._(_root);
	@override late final _StringsDashboardSectionsProductsAr products = _StringsDashboardSectionsProductsAr._(_root);
	@override late final _StringsDashboardSectionsCustomersAr customers = _StringsDashboardSectionsCustomersAr._(_root);
	@override late final _StringsDashboardSectionsThemeAr theme = _StringsDashboardSectionsThemeAr._(_root);
	@override late final _StringsDashboardSectionsShippingAr shipping = _StringsDashboardSectionsShippingAr._(_root);
	@override late final _StringsDashboardSectionsIntegrationsAr integrations = _StringsDashboardSectionsIntegrationsAr._(_root);
	@override late final _StringsDashboardSectionsSettingsAr settings = _StringsDashboardSectionsSettingsAr._(_root);
	@override String get expandMenu => 'توسيع القائمة';
	@override String get collapseMenu => 'طي القائمة';
}

// Path: products.form.name
class _StringsProductsFormNameAr implements _StringsProductsFormNameEn {
	_StringsProductsFormNameAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'الاسم';
	@override String get hint => 'ادخل اسم المنتج';
}

// Path: products.form.title
class _StringsProductsFormTitleAr implements _StringsProductsFormTitleEn {
	_StringsProductsFormTitleAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'عنوان المنتج';
	@override String get hint => 'الاسم المعروف للعملاء، على سبيل المثال، الاسم المذكور على العبوة أو اسم السيارة من الشركة المصنعة.';
}

// Path: products.form.price
class _StringsProductsFormPriceAr implements _StringsProductsFormPriceEn {
	_StringsProductsFormPriceAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'السعر';
	@override String get hint => 'ادخل سعر المنتج';
}

// Path: products.form.quantity
class _StringsProductsFormQuantityAr implements _StringsProductsFormQuantityEn {
	_StringsProductsFormQuantityAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'الكمية';
	@override String get hint => 'ادخل كمية المنتج';
}

// Path: products.form.sales
class _StringsProductsFormSalesAr implements _StringsProductsFormSalesEn {
	_StringsProductsFormSalesAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'المبيعات';
	@override String get hint => 'ادخل مبيعات المنتج';
}

// Path: products.form.views
class _StringsProductsFormViewsAr implements _StringsProductsFormViewsEn {
	_StringsProductsFormViewsAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'المشاهدات';
	@override String get hint => 'ادخل مشاهدات المنتج';
}

// Path: products.form.images
class _StringsProductsFormImagesAr implements _StringsProductsFormImagesEn {
	_StringsProductsFormImagesAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'الصور';
	@override String get hint => 'تحميل صور المنتج';
}

// Path: products.fields.variants
class _StringsProductsFieldsVariantsAr implements _StringsProductsFieldsVariantsEn {
	_StringsProductsFieldsVariantsAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'المتغيرات';
	@override String get hint => 'إضافة متغيرات المنتج';
	@override String get helper => 'متغيرات المنتج';
	@override late final _StringsProductsFieldsVariantsTypesAr types = _StringsProductsFieldsVariantsTypesAr._(_root);
}

// Path: products.fields.name
class _StringsProductsFieldsNameAr implements _StringsProductsFieldsNameEn {
	_StringsProductsFieldsNameAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'الاسم';
	@override String get hint => 'ادخل اسم المنتج';
	@override String get helper => 'اسم المنتج';
}

// Path: products.fields.title
class _StringsProductsFieldsTitleAr implements _StringsProductsFieldsTitleEn {
	_StringsProductsFieldsTitleAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'عنوان المنتج';
	@override String get hint => 'الاسم المعروف للعملاء، على سبيل المثال، الاسم المذكور على العبوة أو اسم السيارة من الشركة المصنعة.';
	@override String get helper => 'عنوان المنتج';
}

// Path: products.fields.price
class _StringsProductsFieldsPriceAr implements _StringsProductsFieldsPriceEn {
	_StringsProductsFieldsPriceAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'السعر';
	@override String get hint => 'ادخل سعر المنتج';
	@override String get helper => 'سعر المنتج';
}

// Path: products.fields.quantity
class _StringsProductsFieldsQuantityAr implements _StringsProductsFieldsQuantityEn {
	_StringsProductsFieldsQuantityAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'الكمية';
	@override String get hint => 'ادخل كمية المنتج';
	@override String get helper => 'كمية المنتج';
}

// Path: products.fields.sales
class _StringsProductsFieldsSalesAr implements _StringsProductsFieldsSalesEn {
	_StringsProductsFieldsSalesAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'المبيعات';
	@override String get hint => 'ادخل مبيعات المنتج';
	@override String get helper => 'مبيعات المنتج';
}

// Path: products.fields.views
class _StringsProductsFieldsViewsAr implements _StringsProductsFieldsViewsEn {
	_StringsProductsFieldsViewsAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'المشاهدات';
	@override String get hint => 'ادخل مشاهدات المنتج';
	@override String get helper => 'مشاهدات المنتج';
}

// Path: products.fields.images
class _StringsProductsFieldsImagesAr implements _StringsProductsFieldsImagesEn {
	_StringsProductsFieldsImagesAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'الصور';
	@override String get hint => 'تحميل صور المنتج';
	@override String get helper => 'صور المنتج';
}

// Path: auth.user.alert
class _StringsAuthUserAlertAr implements _StringsAuthUserAlertEn {
	_StringsAuthUserAlertAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'الأمان والبيانات';
	@override String get subtitle => 'نلتزم بخصوصية بياناتك وأمانها في جميع عملياتنا.';
}

// Path: users.form.name
class _StringsUsersFormNameAr implements _StringsUsersFormNameEn {
	_StringsUsersFormNameAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'الاسم';
	@override String get hint => 'ادخل اسم المستخدم';
}

// Path: users.form.email
class _StringsUsersFormEmailAr implements _StringsUsersFormEmailEn {
	_StringsUsersFormEmailAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'البريد الإلكتروني';
	@override String get hint => 'ادخل بريد المستخدم';
}

// Path: users.form.password
class _StringsUsersFormPasswordAr implements _StringsUsersFormPasswordEn {
	_StringsUsersFormPasswordAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'كلمة المرور';
	@override String get hint => 'ادخل كلمة المرور للمستخدم';
}

// Path: users.fields.name
class _StringsUsersFieldsNameAr implements _StringsUsersFieldsNameEn {
	_StringsUsersFieldsNameAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'الاسم';
	@override String get hint => 'ادخل اسم المستخدم';
	@override String get helper => 'اسم المستخدم';
}

// Path: users.fields.email
class _StringsUsersFieldsEmailAr implements _StringsUsersFieldsEmailEn {
	_StringsUsersFieldsEmailAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'البريد الإلكتروني';
	@override String get hint => 'ادخل بريد المستخدم';
	@override String get helper => 'بريد المستخدم';
}

// Path: users.fields.phone
class _StringsUsersFieldsPhoneAr implements _StringsUsersFieldsPhoneEn {
	_StringsUsersFieldsPhoneAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'الهاتف';
	@override String get hint => 'ادخل هاتف المستخدم';
	@override String get helper => 'هاتف المستخدم';
}

// Path: users.fields.password
class _StringsUsersFieldsPasswordAr implements _StringsUsersFieldsPasswordEn {
	_StringsUsersFieldsPasswordAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'كلمة المرور';
	@override String get hint => 'ادخل كلمة المرور للمستخدم';
	@override String get helper => 'كلمة المرور للمستخدم';
}

// Path: orders.form.customer
class _StringsOrdersFormCustomerAr implements _StringsOrdersFormCustomerEn {
	_StringsOrdersFormCustomerAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'العميل';
	@override String get hint => 'اختر العميل';
}

// Path: orders.form.products
class _StringsOrdersFormProductsAr implements _StringsOrdersFormProductsEn {
	_StringsOrdersFormProductsAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'المنتجات';
	@override String get hint => 'اختر المنتجات';
}

// Path: orders.form.status
class _StringsOrdersFormStatusAr implements _StringsOrdersFormStatusEn {
	_StringsOrdersFormStatusAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'الحالة';
	@override String get hint => 'اختر حالة الطلب';
}

// Path: orders.fields.customerName
class _StringsOrdersFieldsCustomerNameAr implements _StringsOrdersFieldsCustomerNameEn {
	_StringsOrdersFieldsCustomerNameAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'اسم العميل';
	@override String get hint => 'أدخل اسم العميل';
	@override String get helper => 'اسم العميل';
}

// Path: orders.fields.customerPhone
class _StringsOrdersFieldsCustomerPhoneAr implements _StringsOrdersFieldsCustomerPhoneEn {
	_StringsOrdersFieldsCustomerPhoneAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'هاتف العميل';
	@override String get hint => 'أدخل هاتف العميل';
	@override String get helper => 'رقم هاتف العميل';
}

// Path: orders.fields.customerIp
class _StringsOrdersFieldsCustomerIpAr implements _StringsOrdersFieldsCustomerIpEn {
	_StringsOrdersFieldsCustomerIpAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'IP العميل';
	@override String get hint => 'أدخل IP العميل';
	@override String get helper => 'عنوان IP الخاص بالعميل';
}

// Path: orders.fields.customerNote
class _StringsOrdersFieldsCustomerNoteAr implements _StringsOrdersFieldsCustomerNoteEn {
	_StringsOrdersFieldsCustomerNoteAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'ملاحظة العميل';
	@override String get hint => 'أدخل ملاحظة العميل';
	@override String get helper => 'ملاحظة إضافية من العميل';
}

// Path: orders.fields.privateNote
class _StringsOrdersFieldsPrivateNoteAr implements _StringsOrdersFieldsPrivateNoteEn {
	_StringsOrdersFieldsPrivateNoteAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'ملاحظة خاصة';
	@override String get hint => 'أدخل ملاحظة خاصة';
	@override String get helper => 'ملاحظة داخلية للطلب';
}

// Path: orders.fields.shippingAddress
class _StringsOrdersFieldsShippingAddressAr implements _StringsOrdersFieldsShippingAddressEn {
	_StringsOrdersFieldsShippingAddressAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'عنوان الشحن';
	@override String get hint => 'أدخل عنوان الشحن';
	@override String get helper => 'العنوان لشحن الطلب';
}

// Path: orders.fields.shippingCity
class _StringsOrdersFieldsShippingCityAr implements _StringsOrdersFieldsShippingCityEn {
	_StringsOrdersFieldsShippingCityAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'مدينة الشحن';
	@override String get hint => 'اختر مدينة الشحن';
	@override String get helper => 'المدينة لشحن الطلب';
}

// Path: orders.fields.shippingState
class _StringsOrdersFieldsShippingStateAr implements _StringsOrdersFieldsShippingStateEn {
	_StringsOrdersFieldsShippingStateAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'ولاية الشحن';
	@override String get hint => 'اختر ولاية الشحن';
	@override String get helper => 'الولاية لشحن الطلب';
}

// Path: orders.fields.shippingMethodId
class _StringsOrdersFieldsShippingMethodIdAr implements _StringsOrdersFieldsShippingMethodIdEn {
	_StringsOrdersFieldsShippingMethodIdAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'معرف طريقة الشحن';
	@override String get hint => 'أدخل معرف طريقة الشحن';
	@override String get helper => 'معرف طريقة الشحن';
}

// Path: orders.fields.paymentMethodId
class _StringsOrdersFieldsPaymentMethodIdAr implements _StringsOrdersFieldsPaymentMethodIdEn {
	_StringsOrdersFieldsPaymentMethodIdAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'معرف طريقة الدفع';
	@override String get hint => 'أدخل معرف طريقة الدفع';
	@override String get helper => 'معرف طريقة الدفع';
}

// Path: orders.fields.items
class _StringsOrdersFieldsItemsAr implements _StringsOrdersFieldsItemsEn {
	_StringsOrdersFieldsItemsAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'العناصر';
	@override String get hint => 'اختر العناصر';
	@override String get helper => 'العناصر في الطلب';
}

// Path: orders.fields.subtotal
class _StringsOrdersFieldsSubtotalAr implements _StringsOrdersFieldsSubtotalEn {
	_StringsOrdersFieldsSubtotalAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'المجموع الفرعي';
	@override String get hint => 'أدخل المجموع الفرعي';
	@override String get helper => 'المجموع الفرعي للطلب';
}

// Path: orders.fields.shippingPrice
class _StringsOrdersFieldsShippingPriceAr implements _StringsOrdersFieldsShippingPriceEn {
	_StringsOrdersFieldsShippingPriceAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'سعر الشحن';
	@override String get hint => 'أدخل سعر الشحن';
	@override String get helper => 'سعر شحن الطلب';
}

// Path: orders.fields.discount
class _StringsOrdersFieldsDiscountAr implements _StringsOrdersFieldsDiscountEn {
	_StringsOrdersFieldsDiscountAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'الخصم';
	@override String get hint => 'أدخل الخصم';
	@override String get helper => 'الخصم المطبق على الطلب';
}

// Path: orders.fields.coupon
class _StringsOrdersFieldsCouponAr implements _StringsOrdersFieldsCouponEn {
	_StringsOrdersFieldsCouponAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'القسيمة';
	@override String get hint => 'أدخل القسيمة';
	@override String get helper => 'القسيمة المطبقة على الطلب';
}

// Path: orders.fields.storeId
class _StringsOrdersFieldsStoreIdAr implements _StringsOrdersFieldsStoreIdEn {
	_StringsOrdersFieldsStoreIdAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'معرف المتجر';
	@override String get hint => 'أدخل معرف المتجر';
	@override String get helper => 'معرف المتجر';
}

// Path: orders.fields.metadata
class _StringsOrdersFieldsMetadataAr implements _StringsOrdersFieldsMetadataEn {
	_StringsOrdersFieldsMetadataAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'البيانات الوصفية';
	@override String get hint => 'أدخل البيانات الوصفية';
	@override String get helper => 'البيانات الوصفية الإضافية للطلب';
}

// Path: orders.fields.status
class _StringsOrdersFieldsStatusAr implements _StringsOrdersFieldsStatusEn {
	_StringsOrdersFieldsStatusAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'الحالة';
	@override String get hint => 'اختر حالة الطلب';
	@override String get helper => 'حالة الطلب';
}

// Path: orders.fields.paymentStatus
class _StringsOrdersFieldsPaymentStatusAr implements _StringsOrdersFieldsPaymentStatusEn {
	_StringsOrdersFieldsPaymentStatusAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'حالة الدفع';
	@override String get hint => 'اختر حالة الدفع';
	@override String get helper => 'حالة الدفع للطلب';
}

// Path: orders.fields.deliveryStatus
class _StringsOrdersFieldsDeliveryStatusAr implements _StringsOrdersFieldsDeliveryStatusEn {
	_StringsOrdersFieldsDeliveryStatusAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'حالة التسليم';
	@override String get hint => 'اختر حالة التسليم';
	@override String get helper => 'حالة تسليم الطلب';
}

// Path: orders.fields.createdAt
class _StringsOrdersFieldsCreatedAtAr implements _StringsOrdersFieldsCreatedAtEn {
	_StringsOrdersFieldsCreatedAtAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'تاريخ الإنشاء';
	@override String get hint => 'أدخل تاريخ الإنشاء';
	@override String get helper => 'تاريخ ووقت إنشاء الطلب';
}

// Path: orders.fields.updatedAt
class _StringsOrdersFieldsUpdatedAtAr implements _StringsOrdersFieldsUpdatedAtEn {
	_StringsOrdersFieldsUpdatedAtAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'تاريخ التحديث';
	@override String get hint => 'أدخل تاريخ التحديث';
	@override String get helper => 'تاريخ ووقت آخر تحديث للطلب';
}

// Path: orders.fields.manualTotal
class _StringsOrdersFieldsManualTotalAr implements _StringsOrdersFieldsManualTotalEn {
	_StringsOrdersFieldsManualTotalAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'المجموع اليدوي';
	@override String get hint => 'أدخل المجموع اليدوي';
	@override String get helper => 'المجموع المحسوب يدويًا للطلب';
}

// Path: orders.fields.calculatedTotal
class _StringsOrdersFieldsCalculatedTotalAr implements _StringsOrdersFieldsCalculatedTotalEn {
	_StringsOrdersFieldsCalculatedTotalAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'المجموع المحسوب';
	@override String get hint => 'أدخل المجموع المحسوب';
	@override String get helper => 'المجموع المحسوب تلقائيًا للطلب';
}

// Path: orders.fields.total
class _StringsOrdersFieldsTotalAr implements _StringsOrdersFieldsTotalEn {
	_StringsOrdersFieldsTotalAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'المجموع';
	@override String get hint => 'أدخل المجموع';
	@override String get helper => 'المجموع الكلي للطلب';
}

// Path: stores.fields.name
class _StringsStoresFieldsNameAr implements _StringsStoresFieldsNameEn {
	_StringsStoresFieldsNameAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'الاسم';
	@override String get hint => 'ادخل اسم المتجر';
	@override String get helper => 'اسم متجرك';
}

// Path: stores.fields.title
class _StringsStoresFieldsTitleAr implements _StringsStoresFieldsTitleEn {
	_StringsStoresFieldsTitleAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'العنوان';
	@override String get hint => 'ادخل عنوان المتجر';
	@override String get helper => 'عنوان متجرك';
}

// Path: stores.fields.description
class _StringsStoresFieldsDescriptionAr implements _StringsStoresFieldsDescriptionEn {
	_StringsStoresFieldsDescriptionAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'الوصف';
	@override String get hint => 'ادخل وصف المتجر';
	@override String get helper => 'وصف متجرك';
}

// Path: stores.fields.color
class _StringsStoresFieldsColorAr implements _StringsStoresFieldsColorEn {
	_StringsStoresFieldsColorAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'اللون';
	@override String get hint => 'اختر لون المتجر';
	@override String get helper => 'لون متجرك';
}

// Path: stores.fields.slug
class _StringsStoresFieldsSlugAr implements _StringsStoresFieldsSlugEn {
	_StringsStoresFieldsSlugAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'الرابط';
	@override String get hint => 'ادخل رابط المتجر';
	@override String get helper => 'الرابط هو الجزء الفرعي من متجرك';
	@override String get validation => 'يجب أن يكون الرابط باللغة الإنجليزية ويحتوي فقط على حروف صغيرة وأرقام وشرطات';
}

// Path: dashboard.sections.overview
class _StringsDashboardSectionsOverviewAr implements _StringsDashboardSectionsOverviewEn {
	_StringsDashboardSectionsOverviewAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'نظرة عامة';
	@override String get statistics => 'إحصائيات';
	@override late final _StringsDashboardSectionsOverviewQuickLinksAr quickLinks = _StringsDashboardSectionsOverviewQuickLinksAr._(_root);
	@override late final _StringsDashboardSectionsOverviewRecentOrdersAr recentOrders = _StringsDashboardSectionsOverviewRecentOrdersAr._(_root);
	@override late final _StringsDashboardSectionsOverviewRecentCustomersAr recentCustomers = _StringsDashboardSectionsOverviewRecentCustomersAr._(_root);
}

// Path: dashboard.sections.orders
class _StringsDashboardSectionsOrdersAr implements _StringsDashboardSectionsOrdersEn {
	_StringsDashboardSectionsOrdersAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'الطلبات';
	@override String get search => 'بحث الطلبات';
	@override String get addOrder => 'إضافة طلب';
}

// Path: dashboard.sections.pos
class _StringsDashboardSectionsPosAr implements _StringsDashboardSectionsPosEn {
	_StringsDashboardSectionsPosAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'نقطة البيع';
}

// Path: dashboard.sections.products
class _StringsDashboardSectionsProductsAr implements _StringsDashboardSectionsProductsEn {
	_StringsDashboardSectionsProductsAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'المنتجات';
	@override String get search => 'بحث المنتجات';
	@override String get addProduct => 'إضافة منتج';
	@override String get product => 'المنتج';
	@override String get price => 'السعر';
	@override String get quantity => 'الكمية';
	@override String get sales => 'المبيعات';
	@override String get views => 'المشاهدات';
	@override String get images => 'الصور';
	@override late final _StringsDashboardSectionsProductsFormAr form = _StringsDashboardSectionsProductsFormAr._(_root);
}

// Path: dashboard.sections.customers
class _StringsDashboardSectionsCustomersAr implements _StringsDashboardSectionsCustomersEn {
	_StringsDashboardSectionsCustomersAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'العملاء';
	@override String get search => 'بحث العملاء';
	@override String get addCustomer => 'إضافة عميل';
}

// Path: dashboard.sections.theme
class _StringsDashboardSectionsThemeAr implements _StringsDashboardSectionsThemeEn {
	_StringsDashboardSectionsThemeAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'السمة';
	@override String get customize => 'تخصيص';
	@override String get install => 'تثبيت السمة';
	@override String get settings => 'إعدادات السمة';
}

// Path: dashboard.sections.shipping
class _StringsDashboardSectionsShippingAr implements _StringsDashboardSectionsShippingEn {
	_StringsDashboardSectionsShippingAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'الشحن';
	@override String get shippingPrices => 'أسعار الشحن';
	@override late final _StringsDashboardSectionsShippingNoteAr note = _StringsDashboardSectionsShippingNoteAr._(_root);
	@override String get toDesk => 'إلى المكتب';
	@override String get toHome => 'إلى المنزل';
	@override String get state => 'الولاية';
	@override String get city => 'المدينة';
}

// Path: dashboard.sections.integrations
class _StringsDashboardSectionsIntegrationsAr implements _StringsDashboardSectionsIntegrationsEn {
	_StringsDashboardSectionsIntegrationsAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'التكاملات';
	@override String get paymentGateways => 'بوابات الدفع';
	@override String get shippingProviders => 'مزودي الشحن';
}

// Path: dashboard.sections.settings
class _StringsDashboardSectionsSettingsAr implements _StringsDashboardSectionsSettingsEn {
	_StringsDashboardSectionsSettingsAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'الإعدادات';
	@override String get storeSettings => 'إعدادات المتجر';
	@override String get userSettings => 'إعدادات المستخدم';
	@override String get billing => 'الفوترة';
	@override String get plans => 'الخطط';
}

// Path: products.fields.variants.types
class _StringsProductsFieldsVariantsTypesAr implements _StringsProductsFieldsVariantsTypesEn {
	_StringsProductsFieldsVariantsTypesAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get text => 'نص';
	@override String get image => 'صورة';
	@override String get color => 'لون';
}

// Path: dashboard.sections.overview.quickLinks
class _StringsDashboardSectionsOverviewQuickLinksAr implements _StringsDashboardSectionsOverviewQuickLinksEn {
	_StringsDashboardSectionsOverviewQuickLinksAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'روابط سريعة';
	@override String get addProduct => 'إضافة منتج';
	@override String get abandonedCarts => 'سلات مهجورة';
	@override String get changeTheme => 'تغيير السمة';
	@override String get storeSettings => 'إعدادات المتجر';
}

// Path: dashboard.sections.overview.recentOrders
class _StringsDashboardSectionsOverviewRecentOrdersAr implements _StringsDashboardSectionsOverviewRecentOrdersEn {
	_StringsDashboardSectionsOverviewRecentOrdersAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'الطلبات الأخيرة';
	@override String get viewAll => 'عرض الكل';
}

// Path: dashboard.sections.overview.recentCustomers
class _StringsDashboardSectionsOverviewRecentCustomersAr implements _StringsDashboardSectionsOverviewRecentCustomersEn {
	_StringsDashboardSectionsOverviewRecentCustomersAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'العملاء الأخيرين';
	@override String get viewAll => 'عرض الكل';
}

// Path: dashboard.sections.products.form
class _StringsDashboardSectionsProductsFormAr implements _StringsDashboardSectionsProductsFormEn {
	_StringsDashboardSectionsProductsFormAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override late final _StringsDashboardSectionsProductsFormNameAr name = _StringsDashboardSectionsProductsFormNameAr._(_root);
	@override late final _StringsDashboardSectionsProductsFormTitleAr title = _StringsDashboardSectionsProductsFormTitleAr._(_root);
}

// Path: dashboard.sections.shipping.note
class _StringsDashboardSectionsShippingNoteAr implements _StringsDashboardSectionsShippingNoteEn {
	_StringsDashboardSectionsShippingNoteAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'إرشادات التسعير';
	@override String get subtitle => 'ترك الحقل فارغًا يعني عدم توفر التوصيل، وإدخال الرقم صفر 0 يعني التوصيل مجاني.';
}

// Path: dashboard.sections.products.form.name
class _StringsDashboardSectionsProductsFormNameAr implements _StringsDashboardSectionsProductsFormNameEn {
	_StringsDashboardSectionsProductsFormNameAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'الاسم';
	@override String get hint => 'ادخل اسم المنتج';
}

// Path: dashboard.sections.products.form.title
class _StringsDashboardSectionsProductsFormTitleAr implements _StringsDashboardSectionsProductsFormTitleEn {
	_StringsDashboardSectionsProductsFormTitleAr._(this._root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get label => 'عنوان المنتج';
	@override String get hint => 'الاسم المعروف للعملاء، مثل الاسم المذكور على العبوة أو اسم السيارة من الشركة المصنعة.';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'appName': return 'feeef marchant';
			case 'all': return 'All';
			case 'loadMore': return 'Load More';
			case 'soon': return 'Coming Soon';
			case 'general.import': return 'Import';
			case 'general.export': return 'Export';
			case 'general.save': return 'Save';
			case 'general.cancel': return 'Cancel';
			case 'general.edit': return 'Edit';
			case 'general.preview': return 'Preview';
			case 'general.update': return 'Update';
			case 'general.delete': return 'Delete';
			case 'general.add': return 'Add';
			case 'general.link': return 'Link';
			case 'general.error': return 'Error';
			case 'general.refresh': return 'Refresh';
			case 'general.required': return 'Required';
			case 'general.defaultCurrency.code': return 'DZD';
			case 'general.defaultCurrency.symbol': return 'دج';
			case 'general.defaultCurrency.name': return 'دينار جزائري';
			case 'general.confirm': return 'Confirm';
			case 'general.done': return 'operation successful';
			case 'general.failed': return 'operation failed';
			case 'general.views': return 'Views';
			case 'general.visits': return 'Visits';
			case 'general.submit': return 'submit';
			case 'general.shipping': return 'Shipping';
			case 'general.total': return 'Total';
			case 'general.control': return 'Control';
			case 'general.empty': return 'Empty';
			case 'auth.user.alert.title': return 'Security and Data';
			case 'auth.user.alert.subtitle': return 'We are committed to your data privacy and security in all our operations.';
			case 'auth.user.personalInfo': return 'Personal Info';
			case 'auth.user.securityAndSignin': return 'Security and Sign In';
			case 'auth.user.signout': return 'Sign Out';
			case 'auth.forgotPassword': return 'Forgot Password';
			case 'auth.resetPassword': return 'Reset Password';
			case 'auth.signin': return 'Sign In';
			case 'auth.signup': return 'Sign Up';
			case 'auth.signout': return 'Sign Out';
			case 'auth.acceptTerms': return 'By signing up, you agree to our Terms of Service and Privacy Policy.';
			case 'auth.acceptTermsValidation': return 'You must accept the terms and conditions.';
			case 'auth.dontHaveAnAccount': return 'Don\'t have an account?';
			case 'auth.alreadyHaveAnAccount': return 'Already have an account?';
			case 'products.label': return 'Products';
			case 'products.form.create': return 'Create Product';
			case 'products.form.name.label': return 'Name';
			case 'products.form.name.hint': return 'Enter product name';
			case 'products.form.title.label': return 'Product Title';
			case 'products.form.title.hint': return 'The name known to customers, e.g., the name mentioned on the package or the car\'s name from the manufacturer.';
			case 'products.form.price.label': return 'Price';
			case 'products.form.price.hint': return 'Enter product price';
			case 'products.form.quantity.label': return 'Quantity';
			case 'products.form.quantity.hint': return 'Enter product quantity';
			case 'products.form.sales.label': return 'Sales';
			case 'products.form.sales.hint': return 'Enter product sales';
			case 'products.form.views.label': return 'Views';
			case 'products.form.views.hint': return 'Enter product views';
			case 'products.form.images.label': return 'Images';
			case 'products.form.images.hint': return 'Upload product images';
			case 'products.fields.variants.label': return 'Variants';
			case 'products.fields.variants.hint': return 'Add product variants';
			case 'products.fields.variants.helper': return 'The variants of the product';
			case 'products.fields.variants.types.text': return 'Text';
			case 'products.fields.variants.types.image': return 'Image';
			case 'products.fields.variants.types.color': return 'Color';
			case 'products.fields.name.label': return 'Name';
			case 'products.fields.name.hint': return 'Enter product name';
			case 'products.fields.name.helper': return 'The name of the product';
			case 'products.fields.title.label': return 'Product Title';
			case 'products.fields.title.hint': return 'The name known to customers, e.g., the name mentioned on the package or the car\'s name from the manufacturer.';
			case 'products.fields.title.helper': return 'The title of the product';
			case 'products.fields.price.label': return 'Price';
			case 'products.fields.price.hint': return 'Enter product price';
			case 'products.fields.price.helper': return 'The price of the product';
			case 'products.fields.quantity.label': return 'Quantity';
			case 'products.fields.quantity.hint': return 'Enter product quantity';
			case 'products.fields.quantity.helper': return 'The quantity of the product';
			case 'products.fields.sales.label': return 'Sales';
			case 'products.fields.sales.hint': return 'Enter product sales';
			case 'products.fields.sales.helper': return 'The sales of the product';
			case 'products.fields.views.label': return 'Views';
			case 'products.fields.views.hint': return 'Enter product views';
			case 'products.fields.views.helper': return 'The views of the product';
			case 'products.fields.images.label': return 'Images';
			case 'products.fields.images.hint': return 'Upload product images';
			case 'products.fields.images.helper': return 'The images of the product';
			case 'users.label': return 'Users';
			case 'users.form.create': return 'Create User';
			case 'users.form.name.label': return 'Name';
			case 'users.form.name.hint': return 'Enter user name';
			case 'users.form.email.label': return 'Email';
			case 'users.form.email.hint': return 'Enter user email';
			case 'users.form.password.label': return 'Password';
			case 'users.form.password.hint': return 'Enter user password';
			case 'users.fields.name.label': return 'Name';
			case 'users.fields.name.hint': return 'Enter user name';
			case 'users.fields.name.helper': return 'The name of the user';
			case 'users.fields.email.label': return 'Email';
			case 'users.fields.email.hint': return 'Enter user email';
			case 'users.fields.email.helper': return 'The email of the user';
			case 'users.fields.phone.label': return 'Phone';
			case 'users.fields.phone.hint': return 'Enter user phone';
			case 'users.fields.phone.helper': return 'The phone of the user';
			case 'users.fields.password.label': return 'Password';
			case 'users.fields.password.hint': return 'Enter user password';
			case 'users.fields.password.helper': return 'The password of the user';
			case 'orders.status.draft': return 'Draft';
			case 'orders.status.pending': return 'Pending';
			case 'orders.status.processing': return 'Processing';
			case 'orders.status.completed': return 'Completed';
			case 'orders.status.cancelled': return 'Cancelled';
			case 'orders.label': return 'Orders';
			case 'orders.form.create': return 'Create Order';
			case 'orders.form.customer.label': return 'Customer';
			case 'orders.form.customer.hint': return 'Select customer';
			case 'orders.form.products.label': return 'Products';
			case 'orders.form.products.hint': return 'Select products';
			case 'orders.form.status.label': return 'Status';
			case 'orders.form.status.hint': return 'Select order status';
			case 'orders.fields.customerName.label': return 'Customer Name';
			case 'orders.fields.customerName.hint': return 'Enter customer name';
			case 'orders.fields.customerName.helper': return 'The name of the customer';
			case 'orders.fields.customerPhone.label': return 'Customer Phone';
			case 'orders.fields.customerPhone.hint': return 'Enter customer phone';
			case 'orders.fields.customerPhone.helper': return 'The phone number of the customer';
			case 'orders.fields.customerIp.label': return 'Customer IP';
			case 'orders.fields.customerIp.hint': return 'Enter customer IP';
			case 'orders.fields.customerIp.helper': return 'The IP address of the customer';
			case 'orders.fields.customerNote.label': return 'Customer Note';
			case 'orders.fields.customerNote.hint': return 'Enter customer note';
			case 'orders.fields.customerNote.helper': return 'Additional note from the customer';
			case 'orders.fields.privateNote.label': return 'Private Note';
			case 'orders.fields.privateNote.hint': return 'Enter private note';
			case 'orders.fields.privateNote.helper': return 'Internal note for the order';
			case 'orders.fields.shippingAddress.label': return 'Shipping Address';
			case 'orders.fields.shippingAddress.hint': return 'Enter shipping address';
			case 'orders.fields.shippingAddress.helper': return 'The address for shipping the order';
			case 'orders.fields.shippingCity.label': return 'Shipping City';
			case 'orders.fields.shippingCity.hint': return 'Select shipping city';
			case 'orders.fields.shippingCity.helper': return 'The city for shipping the order';
			case 'orders.fields.shippingState.label': return 'Shipping State';
			case 'orders.fields.shippingState.hint': return 'Select shipping state';
			case 'orders.fields.shippingState.helper': return 'The state for shipping the order';
			case 'orders.fields.shippingMethodId.label': return 'Shipping Method ID';
			case 'orders.fields.shippingMethodId.hint': return 'Enter shipping method ID';
			case 'orders.fields.shippingMethodId.helper': return 'The ID of the shipping method';
			case 'orders.fields.paymentMethodId.label': return 'Payment Method ID';
			case 'orders.fields.paymentMethodId.hint': return 'Enter payment method ID';
			case 'orders.fields.paymentMethodId.helper': return 'The ID of the payment method';
			case 'orders.fields.items.label': return 'Items';
			case 'orders.fields.items.hint': return 'Select items';
			case 'orders.fields.items.helper': return 'The items in the order';
			case 'orders.fields.subtotal.label': return 'Subtotal';
			case 'orders.fields.subtotal.hint': return 'Enter subtotal';
			case 'orders.fields.subtotal.helper': return 'The subtotal of the order';
			case 'orders.fields.shippingPrice.label': return 'Shipping Price';
			case 'orders.fields.shippingPrice.hint': return 'Enter shipping price';
			case 'orders.fields.shippingPrice.helper': return 'The price for shipping the order';
			case 'orders.fields.discount.label': return 'Discount';
			case 'orders.fields.discount.hint': return 'Enter discount';
			case 'orders.fields.discount.helper': return 'The discount applied to the order';
			case 'orders.fields.coupon.label': return 'Coupon';
			case 'orders.fields.coupon.hint': return 'Enter coupon';
			case 'orders.fields.coupon.helper': return 'The coupon applied to the order';
			case 'orders.fields.storeId.label': return 'Store ID';
			case 'orders.fields.storeId.hint': return 'Enter store ID';
			case 'orders.fields.storeId.helper': return 'The ID of the store';
			case 'orders.fields.metadata.label': return 'Metadata';
			case 'orders.fields.metadata.hint': return 'Enter metadata';
			case 'orders.fields.metadata.helper': return 'Additional metadata for the order';
			case 'orders.fields.status.label': return 'Status';
			case 'orders.fields.status.hint': return 'Select order status';
			case 'orders.fields.status.helper': return 'The status of the order';
			case 'orders.fields.paymentStatus.label': return 'Payment Status';
			case 'orders.fields.paymentStatus.hint': return 'Select payment status';
			case 'orders.fields.paymentStatus.helper': return 'The payment status of the order';
			case 'orders.fields.deliveryStatus.label': return 'Delivery Status';
			case 'orders.fields.deliveryStatus.hint': return 'Select delivery status';
			case 'orders.fields.deliveryStatus.helper': return 'The delivery status of the order';
			case 'orders.fields.createdAt.label': return 'Created At';
			case 'orders.fields.createdAt.hint': return 'Enter created at';
			case 'orders.fields.createdAt.helper': return 'The date and time when the order was created';
			case 'orders.fields.updatedAt.label': return 'Updated At';
			case 'orders.fields.updatedAt.hint': return 'Enter updated at';
			case 'orders.fields.updatedAt.helper': return 'The date and time when the order was last updated';
			case 'orders.fields.manualTotal.label': return 'Manual Total';
			case 'orders.fields.manualTotal.hint': return 'Enter manual total';
			case 'orders.fields.manualTotal.helper': return 'The manually calculated total of the order';
			case 'orders.fields.calculatedTotal.label': return 'Calculated Total';
			case 'orders.fields.calculatedTotal.hint': return 'Enter calculated total';
			case 'orders.fields.calculatedTotal.helper': return 'The automatically calculated total of the order';
			case 'orders.fields.total.label': return 'Total';
			case 'orders.fields.total.hint': return 'Enter total';
			case 'orders.fields.total.helper': return 'The total amount of the order';
			case 'stores.label': return 'Stores';
			case 'stores.myStores': return 'My Stores';
			case 'stores.form.create': return 'Create Store';
			case 'stores.form.storeNameExample': return 'e.g., My Store';
			case 'stores.fields.name.label': return 'Name';
			case 'stores.fields.name.hint': return 'Enter store name';
			case 'stores.fields.name.helper': return 'The name of your store';
			case 'stores.fields.title.label': return 'Title';
			case 'stores.fields.title.hint': return 'Enter store title';
			case 'stores.fields.title.helper': return 'The title of your store';
			case 'stores.fields.description.label': return 'Description';
			case 'stores.fields.description.hint': return 'Enter store description';
			case 'stores.fields.description.helper': return 'The description of your store';
			case 'stores.fields.color.label': return 'Color';
			case 'stores.fields.color.hint': return 'Select store color';
			case 'stores.fields.color.helper': return 'The color of your store';
			case 'stores.fields.slug.label': return 'Slug';
			case 'stores.fields.slug.hint': return 'Enter store slug';
			case 'stores.fields.slug.helper': return 'The slug is the subdomain of your store';
			case 'stores.fields.slug.validation': return 'The slug must be in English and contain only lowercase letters, numbers, and hyphens';
			case 'dashboard.welcomeUser': return 'Welcome, ';
			case 'dashboard.title': return 'Dashboard';
			case 'dashboard.sections.overview.label': return 'Overview';
			case 'dashboard.sections.overview.statistics': return 'Statistics';
			case 'dashboard.sections.overview.quickLinks.label': return 'Quick Links';
			case 'dashboard.sections.overview.quickLinks.addProduct': return 'Add Product';
			case 'dashboard.sections.overview.quickLinks.abandonedCarts': return 'Abandoned Carts';
			case 'dashboard.sections.overview.quickLinks.changeTheme': return 'Change Theme';
			case 'dashboard.sections.overview.quickLinks.storeSettings': return 'Store Settings';
			case 'dashboard.sections.overview.recentOrders.label': return 'Recent Orders';
			case 'dashboard.sections.overview.recentOrders.viewAll': return 'View All';
			case 'dashboard.sections.overview.recentCustomers.label': return 'Recent Customers';
			case 'dashboard.sections.overview.recentCustomers.viewAll': return 'View All';
			case 'dashboard.sections.orders.label': return 'Orders';
			case 'dashboard.sections.orders.search': return 'Search Orders';
			case 'dashboard.sections.orders.addOrder': return 'Add Order';
			case 'dashboard.sections.pos.label': return 'POS';
			case 'dashboard.sections.products.label': return 'Products';
			case 'dashboard.sections.products.search': return 'Search Products';
			case 'dashboard.sections.products.addProduct': return 'Add Product';
			case 'dashboard.sections.products.product': return 'Product';
			case 'dashboard.sections.products.price': return 'Price';
			case 'dashboard.sections.products.quantity': return 'Quantity';
			case 'dashboard.sections.products.sales': return 'Sales';
			case 'dashboard.sections.products.views': return 'Views';
			case 'dashboard.sections.products.images': return 'Images';
			case 'dashboard.sections.products.form.name.label': return 'Name';
			case 'dashboard.sections.products.form.name.hint': return 'Enter product name';
			case 'dashboard.sections.products.form.title.label': return 'Product Title';
			case 'dashboard.sections.products.form.title.hint': return 'The name known to customers, e.g., the name mentioned on the package or the car\'s name from the manufacturer.';
			case 'dashboard.sections.customers.label': return 'Customers';
			case 'dashboard.sections.customers.search': return 'Search Customers';
			case 'dashboard.sections.customers.addCustomer': return 'Add Customer';
			case 'dashboard.sections.theme.label': return 'Theme';
			case 'dashboard.sections.theme.customize': return 'Customize';
			case 'dashboard.sections.theme.install': return 'Install Theme';
			case 'dashboard.sections.theme.settings': return 'Theme Settings';
			case 'dashboard.sections.shipping.label': return 'Shipping';
			case 'dashboard.sections.shipping.shippingPrices': return 'Shipping Prices';
			case 'dashboard.sections.shipping.note.title': return 'Pricing Guidelines';
			case 'dashboard.sections.shipping.note.subtitle': return 'Leaving the field empty means delivery is not available, and entering zero 0 means delivery is free.';
			case 'dashboard.sections.shipping.toDesk': return 'To Desk';
			case 'dashboard.sections.shipping.toHome': return 'To Home';
			case 'dashboard.sections.shipping.state': return 'State';
			case 'dashboard.sections.shipping.city': return 'City';
			case 'dashboard.sections.integrations.label': return 'Integrations';
			case 'dashboard.sections.integrations.paymentGateways': return 'Payment Gateways';
			case 'dashboard.sections.integrations.shippingProviders': return 'Shipping Providers';
			case 'dashboard.sections.settings.label': return 'Settings';
			case 'dashboard.sections.settings.storeSettings': return 'Store Settings';
			case 'dashboard.sections.settings.userSettings': return 'User Settings';
			case 'dashboard.sections.settings.billing': return 'Billing';
			case 'dashboard.sections.settings.plans': return 'Plans';
			case 'dashboard.sections.expandMenu': return 'Expand Menu';
			case 'dashboard.sections.collapseMenu': return 'Collapse Menu';
			case 'states.0': return 'Adrar';
			case 'states.1': return 'Chlef';
			case 'states.2': return 'Laghouat';
			case 'states.3': return 'Oum el bouaghi';
			case 'states.4': return 'Batna';
			case 'states.5': return 'Bejaia';
			case 'states.6': return 'Biskra';
			case 'states.7': return 'Bechar';
			case 'states.8': return 'Blida';
			case 'states.9': return 'Bouira';
			case 'states.10': return 'Tamanrasset';
			case 'states.11': return 'Tebessa';
			case 'states.12': return 'Tlemcen';
			case 'states.13': return 'Tiaret';
			case 'states.14': return 'Tizi ouzou';
			case 'states.15': return 'Alger';
			case 'states.16': return 'Djelfa';
			case 'states.17': return 'Jijel';
			case 'states.18': return 'Setif';
			case 'states.19': return 'Saida';
			case 'states.20': return 'Skikda';
			case 'states.21': return 'Sidi bel abbes';
			case 'states.22': return 'Annaba';
			case 'states.23': return 'Guelma';
			case 'states.24': return 'Constantine';
			case 'states.25': return 'Medea';
			case 'states.26': return 'Mostaganem';
			case 'states.27': return 'Msila';
			case 'states.28': return 'Mascara';
			case 'states.29': return 'Ouargla';
			case 'states.30': return 'Oran';
			case 'states.31': return 'El bayadh';
			case 'states.32': return 'Illizi';
			case 'states.33': return 'Bordj bou arreridj';
			case 'states.34': return 'Boumerdes';
			case 'states.35': return 'El tarf';
			case 'states.36': return 'Tindouf';
			case 'states.37': return 'Tissemsilt';
			case 'states.38': return 'El oued';
			case 'states.39': return 'Khenchela';
			case 'states.40': return 'Souk ahras';
			case 'states.41': return 'Tipaza';
			case 'states.42': return 'Mila';
			case 'states.43': return 'Ain defla';
			case 'states.44': return 'Naama';
			case 'states.45': return 'Ain temouchent';
			case 'states.46': return 'Ghardaia';
			case 'states.47': return 'Relizane';
			case 'states.48': return 'Timimoun';
			case 'states.49': return 'Bordj badji mokhtar';
			case 'states.50': return 'Ouled djellal';
			case 'states.51': return 'Beni abbes';
			case 'states.52': return 'In salah';
			case 'states.53': return 'In guezzam';
			case 'states.54': return 'Touggourt';
			case 'states.55': return 'Djanet';
			case 'states.56': return 'El meghaier';
			case 'states.57': return 'El menia';
			case 'cities.0.0': return 'Adrar';
			case 'cities.0.1': return 'Akabli';
			case 'cities.0.2': return 'Aoulef';
			case 'cities.0.3': return 'Bouda';
			case 'cities.0.4': return 'Fenoughil';
			case 'cities.0.5': return 'In Zghmir';
			case 'cities.0.6': return 'Ouled Ahmed Timmi';
			case 'cities.0.7': return 'Reggane';
			case 'cities.0.8': return 'Sali';
			case 'cities.0.9': return 'Sebaa';
			case 'cities.0.10': return 'Tamantit';
			case 'cities.0.11': return 'Tamest';
			case 'cities.0.12': return 'Timekten';
			case 'cities.0.13': return 'Tit';
			case 'cities.0.14': return 'Tsabit';
			case 'cities.0.15': return 'Zaouiet Kounta';
			case 'cities.1.0': return 'Abou El Hassan';
			case 'cities.1.1': return 'Ain Merane';
			case 'cities.1.2': return 'Benairia';
			case 'cities.1.3': return 'Beni Bouattab';
			case 'cities.1.4': return 'Beni Haoua';
			case 'cities.1.5': return 'Beni Rached';
			case 'cities.1.6': return 'Boukadir';
			case 'cities.1.7': return 'Bouzeghaia';
			case 'cities.1.8': return 'Breira';
			case 'cities.1.9': return 'Chettia';
			case 'cities.1.10': return 'Chlef';
			case 'cities.1.11': return 'Dahra';
			case 'cities.1.12': return 'El Hadjadj';
			case 'cities.1.13': return 'El Karimia';
			case 'cities.1.14': return 'El Marsa';
			case 'cities.1.15': return 'Harchoun';
			case 'cities.1.16': return 'Herenfa';
			case 'cities.1.17': return 'Labiod Medjadja';
			case 'cities.1.18': return 'Moussadek';
			case 'cities.1.19': return 'Oued Fodda';
			case 'cities.1.20': return 'Oued Goussine';
			case 'cities.1.21': return 'Oued Sly';
			case 'cities.1.22': return 'Ouled Abbes';
			case 'cities.1.23': return 'Ouled Ben Abdelkader';
			case 'cities.1.24': return 'Ouled Fares';
			case 'cities.1.25': return 'Oum Drou';
			case 'cities.1.26': return 'Sendjas';
			case 'cities.1.27': return 'Sidi Abderrahmane';
			case 'cities.1.28': return 'Sidi Akkacha';
			case 'cities.1.29': return 'Sobha';
			case 'cities.1.30': return 'Tadjena';
			case 'cities.1.31': return 'Talassa';
			case 'cities.1.32': return 'Taougrite';
			case 'cities.1.33': return 'Tenes';
			case 'cities.1.34': return 'Zeboudja';
			case 'cities.2.0': return 'Aflou';
			case 'cities.2.1': return 'Ain Mahdi';
			case 'cities.2.2': return 'Ain Sidi Ali';
			case 'cities.2.3': return 'Beidha';
			case 'cities.2.4': return 'Benacer Benchohra';
			case 'cities.2.5': return 'Brida';
			case 'cities.2.6': return 'El Assafia';
			case 'cities.2.7': return 'El Ghicha';
			case 'cities.2.8': return 'El Haouaita';
			case 'cities.2.9': return 'Gueltat Sidi Saad';
			case 'cities.2.10': return 'Hadj Mechri';
			case 'cities.2.11': return 'Hassi Delaa';
			case 'cities.2.12': return 'Hassi R\'mel';
			case 'cities.2.13': return 'Kheneg';
			case 'cities.2.14': return 'Ksar El Hirane';
			case 'cities.2.15': return 'Laghouat';
			case 'cities.2.16': return 'Oued M\'zi';
			case 'cities.2.17': return 'Oued Morra';
			case 'cities.2.18': return 'Sebgag';
			case 'cities.2.19': return 'Sidi Bouzid';
			case 'cities.2.20': return 'Sidi Makhlouf';
			case 'cities.2.21': return 'Tadjemout';
			case 'cities.2.22': return 'Tadjrouna';
			case 'cities.2.23': return 'Taouiala';
			case 'cities.3.0': return 'Ain Babouche';
			case 'cities.3.1': return 'Ain Beida';
			case 'cities.3.2': return 'Ain Diss';
			case 'cities.3.3': return 'Ain Fekroune';
			case 'cities.3.4': return 'Ain Kercha';
			case 'cities.3.5': return 'Ain M\'lila';
			case 'cities.3.6': return 'Ain Zitoun';
			case 'cities.3.7': return 'Behir Chergui';
			case 'cities.3.8': return 'Berriche';
			case 'cities.3.9': return 'Bir Chouhada';
			case 'cities.3.10': return 'Dhala';
			case 'cities.3.11': return 'El Amiria';
			case 'cities.3.12': return 'El Belala';
			case 'cities.3.13': return 'El Djazia';
			case 'cities.3.14': return 'El Fedjoudj Boughrara Sa';
			case 'cities.3.15': return 'El Harmilia';
			case 'cities.3.16': return 'Fkirina';
			case 'cities.3.17': return 'Hanchir Toumghani';
			case 'cities.3.18': return 'Ksar Sbahi';
			case 'cities.3.19': return 'Meskiana';
			case 'cities.3.20': return 'Oued Nini';
			case 'cities.3.21': return 'Ouled Gacem';
			case 'cities.3.22': return 'Ouled Hamla';
			case 'cities.3.23': return 'Ouled Zouai';
			case 'cities.3.24': return 'Oum El Bouaghi';
			case 'cities.3.25': return 'Rahia';
			case 'cities.3.26': return 'Sigus';
			case 'cities.3.27': return 'Souk Naamane';
			case 'cities.3.28': return 'Zorg';
			case 'cities.4.0': return 'Ain Djasser';
			case 'cities.4.1': return 'Ain Touta';
			case 'cities.4.2': return 'Ain Yagout';
			case 'cities.4.3': return 'Arris';
			case 'cities.4.4': return 'Azil Abedelkader';
			case 'cities.4.5': return 'Barika';
			case 'cities.4.6': return 'Batna';
			case 'cities.4.7': return 'Beni Foudhala El Hakania';
			case 'cities.4.8': return 'Bitam';
			case 'cities.4.9': return 'Boulhilat';
			case 'cities.4.10': return 'Boumagueur';
			case 'cities.4.11': return 'Boumia';
			case 'cities.4.12': return 'Bouzina';
			case 'cities.4.13': return 'Chemora';
			case 'cities.4.14': return 'Chir';
			case 'cities.4.15': return 'Djerma';
			case 'cities.4.16': return 'Djezzar';
			case 'cities.4.17': return 'El Hassi';
			case 'cities.4.18': return 'El Madher';
			case 'cities.4.19': return 'Fesdis';
			case 'cities.4.20': return 'Foum Toub';
			case 'cities.4.21': return 'Ghassira';
			case 'cities.4.22': return 'Gosbat';
			case 'cities.4.23': return 'Guigba';
			case 'cities.4.24': return 'Hidoussa';
			case 'cities.4.25': return 'Ichmoul';
			case 'cities.4.26': return 'Inoughissen';
			case 'cities.4.27': return 'Kimmel';
			case 'cities.4.28': return 'Ksar Bellezma';
			case 'cities.4.29': return 'Larbaa';
			case 'cities.4.30': return 'Lazrou';
			case 'cities.4.31': return 'Lemsane';
			case 'cities.4.32': return 'M Doukal';
			case 'cities.4.33': return 'Maafa';
			case 'cities.4.34': return 'Menaa';
			case 'cities.4.35': return 'Merouana';
			case 'cities.4.36': return 'N Gaous';
			case 'cities.4.37': return 'Oued Chaaba';
			case 'cities.4.38': return 'Oued El Ma';
			case 'cities.4.39': return 'Oued Taga';
			case 'cities.4.40': return 'Ouled Ammar';
			case 'cities.4.41': return 'Ouled Aouf';
			case 'cities.4.42': return 'Ouled Fadel';
			case 'cities.4.43': return 'Ouled Sellem';
			case 'cities.4.44': return 'Ouled Si Slimane';
			case 'cities.4.45': return 'Ouyoun El Assafir';
			case 'cities.4.46': return 'Rahbat';
			case 'cities.4.47': return 'Ras El Aioun';
			case 'cities.4.48': return 'Sefiane';
			case 'cities.4.49': return 'Seggana';
			case 'cities.4.50': return 'Seriana';
			case 'cities.4.51': return 'T Kout';
			case 'cities.4.52': return 'Talkhamt';
			case 'cities.4.53': return 'Taxlent';
			case 'cities.4.54': return 'Tazoult';
			case 'cities.4.55': return 'Teniet El Abed';
			case 'cities.4.56': return 'Tighanimine';
			case 'cities.4.57': return 'Tigharghar';
			case 'cities.4.58': return 'Tilatou';
			case 'cities.4.59': return 'Timgad';
			case 'cities.4.60': return 'Zanet El Beida';
			case 'cities.5.0': return 'Adekar';
			case 'cities.5.1': return 'Ait R\'zine';
			case 'cities.5.2': return 'Ait Smail';
			case 'cities.5.3': return 'Akbou';
			case 'cities.5.4': return 'Akfadou';
			case 'cities.5.5': return 'Amalou';
			case 'cities.5.6': return 'Amizour';
			case 'cities.5.7': return 'Aokas';
			case 'cities.5.8': return 'Barbacha';
			case 'cities.5.9': return 'Bejaia';
			case 'cities.5.10': return 'Beni Dejllil';
			case 'cities.5.11': return 'Beni K\'sila';
			case 'cities.5.12': return 'Beni Mallikeche';
			case 'cities.5.13': return 'Benimaouche';
			case 'cities.5.14': return 'Boudjellil';
			case 'cities.5.15': return 'Bouhamza';
			case 'cities.5.16': return 'Boukhelifa';
			case 'cities.5.17': return 'Chellata';
			case 'cities.5.18': return 'Chemini';
			case 'cities.5.19': return 'Darghina';
			case 'cities.5.20': return 'Dra El Caid';
			case 'cities.5.21': return 'El Kseur';
			case 'cities.5.22': return 'Fenaia Il Maten';
			case 'cities.5.23': return 'Feraoun';
			case 'cities.5.24': return 'Ighil Ali';
			case 'cities.5.25': return 'Ighram';
			case 'cities.5.26': return 'Kendira';
			case 'cities.5.27': return 'Kherrata';
			case 'cities.5.28': return 'Leflaye';
			case 'cities.5.29': return 'M\'cisna';
			case 'cities.5.30': return 'Melbou';
			case 'cities.5.31': return 'Oued Ghir';
			case 'cities.5.32': return 'Ouzellaguene';
			case 'cities.5.33': return 'Seddouk';
			case 'cities.5.34': return 'Sidi Aich';
			case 'cities.5.35': return 'Sidi Ayad';
			case 'cities.5.36': return 'Smaoun';
			case 'cities.5.37': return 'Souk El Tenine';
			case 'cities.5.38': return 'Souk Oufella';
			case 'cities.5.39': return 'Tala Hamza';
			case 'cities.5.40': return 'Tamokra';
			case 'cities.5.41': return 'Tamridjet';
			case 'cities.5.42': return 'Taourit Ighil';
			case 'cities.5.43': return 'Taskriout';
			case 'cities.5.44': return 'Tazmalt';
			case 'cities.5.45': return 'Tibane';
			case 'cities.5.46': return 'Tichy';
			case 'cities.5.47': return 'Tifra';
			case 'cities.5.48': return 'Timezrit';
			case 'cities.5.49': return 'Tinebdar';
			case 'cities.5.50': return 'Tizi N\'berber';
			case 'cities.5.51': return 'Toudja';
			case 'cities.6.0': return 'Ain Naga';
			case 'cities.6.1': return 'Ain Zaatout';
			case 'cities.6.2': return 'Biskra';
			case 'cities.6.3': return 'Bordj Ben Azzouz';
			case 'cities.6.4': return 'Bouchagroun';
			case 'cities.6.5': return 'Branis';
			case 'cities.6.6': return 'Chetma';
			case 'cities.6.7': return 'Djemorah';
			case 'cities.6.8': return 'El Feidh';
			case 'cities.6.9': return 'El Ghrous';
			case 'cities.6.10': return 'El Hadjab';
			case 'cities.6.11': return 'El Haouch';
			case 'cities.6.12': return 'El Kantara';
			case 'cities.6.13': return 'El Outaya';
			case 'cities.6.14': return 'Foughala';
			case 'cities.6.15': return 'Khenguet Sidi Nadji';
			case 'cities.6.16': return 'Lichana';
			case 'cities.6.17': return 'Lioua';
			case 'cities.6.18': return 'M\'chouneche';
			case 'cities.6.19': return 'M\'lili';
			case 'cities.6.20': return 'Mekhadma';
			case 'cities.6.21': return 'Meziraa';
			case 'cities.6.22': return 'Oumache';
			case 'cities.6.23': return 'Ourlal';
			case 'cities.6.24': return 'Sidi Okba';
			case 'cities.6.25': return 'Tolga';
			case 'cities.6.26': return 'Zeribet El Oued';
			case 'cities.7.0': return 'Abadla';
			case 'cities.7.1': return 'Bechar';
			case 'cities.7.2': return 'Beni Ounif';
			case 'cities.7.3': return 'Boukais';
			case 'cities.7.4': return 'Erg Ferradj';
			case 'cities.7.5': return 'Kenadsa';
			case 'cities.7.6': return 'Lahmar';
			case 'cities.7.7': return 'Mechraa H.boumediene';
			case 'cities.7.8': return 'Meridja';
			case 'cities.7.9': return 'Mogheul';
			case 'cities.7.10': return 'Taghit';
			case 'cities.8.0': return 'Ain Romana';
			case 'cities.8.1': return 'Beni Mered';
			case 'cities.8.2': return 'Beni Tamou';
			case 'cities.8.3': return 'Benkhelil';
			case 'cities.8.4': return 'Blida';
			case 'cities.8.5': return 'Bouarfa';
			case 'cities.8.6': return 'Boufarik';
			case 'cities.8.7': return 'Bougara';
			case 'cities.8.8': return 'Bouinan';
			case 'cities.8.9': return 'Chebli';
			case 'cities.8.10': return 'Chiffa';
			case 'cities.8.11': return 'Chrea';
			case 'cities.8.12': return 'Djebabra';
			case 'cities.8.13': return 'El Affroun';
			case 'cities.8.14': return 'Guerrouaou';
			case 'cities.8.15': return 'Hammam Melouane';
			case 'cities.8.16': return 'Larbaa';
			case 'cities.8.17': return 'Meftah';
			case 'cities.8.18': return 'Mouzaia';
			case 'cities.8.19': return 'Oued Djer';
			case 'cities.8.20': return 'Oued El Alleug';
			case 'cities.8.21': return 'Ouled Slama';
			case 'cities.8.22': return 'Ouled Yaich';
			case 'cities.8.23': return 'Souhane';
			case 'cities.8.24': return 'Souma';
			case 'cities.9.0': return 'Aghbalou';
			case 'cities.9.1': return 'Ahl El Ksar';
			case 'cities.9.2': return 'Ain Bessem';
			case 'cities.9.3': return 'Ain El Hadjar';
			case 'cities.9.4': return 'Ain Laloui';
			case 'cities.9.5': return 'Ain Turk';
			case 'cities.9.6': return 'Ait Laaziz';
			case 'cities.9.7': return 'Aomar';
			case 'cities.9.8': return 'Bechloul';
			case 'cities.9.9': return 'Bir Ghbalou';
			case 'cities.9.10': return 'Bordj Okhriss';
			case 'cities.9.11': return 'Bouderbala';
			case 'cities.9.12': return 'Bouira';
			case 'cities.9.13': return 'Boukram';
			case 'cities.9.14': return 'Chorfa';
			case 'cities.9.15': return 'Dechmia';
			case 'cities.9.16': return 'Dirah';
			case 'cities.9.17': return 'Djebahia';
			case 'cities.9.18': return 'El Adjiba';
			case 'cities.9.19': return 'El Asnam';
			case 'cities.9.20': return 'El Hachimia';
			case 'cities.9.21': return 'El Hakimia';
			case 'cities.9.22': return 'El Khabouzia';
			case 'cities.9.23': return 'El Mokrani';
			case 'cities.9.24': return 'Guerrouma';
			case 'cities.9.25': return 'Hadjera Zerga';
			case 'cities.9.26': return 'Haizer';
			case 'cities.9.27': return 'Hanif';
			case 'cities.9.28': return 'Kadiria';
			case 'cities.9.29': return 'Lakhdaria';
			case 'cities.9.30': return 'M Chedallah';
			case 'cities.9.31': return 'Maala';
			case 'cities.9.32': return 'Mamora';
			case 'cities.9.33': return 'Mezdour';
			case 'cities.9.34': return 'Oued El Berdi';
			case 'cities.9.35': return 'Ouled Rached';
			case 'cities.9.36': return 'Raouraoua';
			case 'cities.9.37': return 'Ridane';
			case 'cities.9.38': return 'Saharidj';
			case 'cities.9.39': return 'Souk El Khemis';
			case 'cities.9.40': return 'Sour El Ghozlane';
			case 'cities.9.41': return 'Taghzout';
			case 'cities.9.42': return 'Taguedite';
			case 'cities.9.43': return 'Taourirt';
			case 'cities.9.44': return 'Z\'barbar';
			case 'cities.10.0': return 'Abalessa';
			case 'cities.10.1': return 'Ain Amguel';
			case 'cities.10.2': return 'Idles';
			case 'cities.10.3': return 'Tamanrasset';
			case 'cities.10.4': return 'Tazrouk';
			case 'cities.11.0': return 'Ain Zerga';
			case 'cities.11.1': return 'Bedjene';
			case 'cities.11.2': return 'Bekkaria';
			case 'cities.11.3': return 'Bir Dheheb';
			case 'cities.11.4': return 'Bir El Ater';
			case 'cities.11.5': return 'Bir Mokkadem';
			case 'cities.11.6': return 'Boukhadra';
			case 'cities.11.7': return 'Boulhaf Dyr';
			case 'cities.11.8': return 'Cheria';
			case 'cities.11.9': return 'El Aouinet';
			case 'cities.11.10': return 'El Houidjbet';
			case 'cities.11.11': return 'El Kouif';
			case 'cities.11.12': return 'El Malabiod';
			case 'cities.11.13': return 'El Meridj';
			case 'cities.11.14': return 'El Mezeraa';
			case 'cities.11.15': return 'El Ogla';
			case 'cities.11.16': return 'El Ogla El Malha';
			case 'cities.11.17': return 'Ferkane';
			case 'cities.11.18': return 'Guorriguer';
			case 'cities.11.19': return 'Hammamet';
			case 'cities.11.20': return 'Morssot';
			case 'cities.11.21': return 'Negrine';
			case 'cities.11.22': return 'Ouenza';
			case 'cities.11.23': return 'Oum Ali';
			case 'cities.11.24': return 'Saf Saf El Ouesra';
			case 'cities.11.25': return 'Stah Guentis';
			case 'cities.11.26': return 'Tebessa';
			case 'cities.11.27': return 'Telidjen';
			case 'cities.12.0': return 'Ain Fettah';
			case 'cities.12.1': return 'Ain Fezza';
			case 'cities.12.2': return 'Ain Ghoraba';
			case 'cities.12.3': return 'Ain Kebira';
			case 'cities.12.4': return 'Ain Nehala';
			case 'cities.12.5': return 'Ain Tallout';
			case 'cities.12.6': return 'Ain Youcef';
			case 'cities.12.7': return 'Amieur';
			case 'cities.12.8': return 'Azails';
			case 'cities.12.9': return 'Bab El Assa';
			case 'cities.12.10': return 'Beni Bahdel';
			case 'cities.12.11': return 'Beni Boussaid';
			case 'cities.12.12': return 'Beni Khaled';
			case 'cities.12.13': return 'Beni Mester';
			case 'cities.12.14': return 'Beni Ouarsous';
			case 'cities.12.15': return 'Beni Smiel';
			case 'cities.12.16': return 'Beni Snous';
			case 'cities.12.17': return 'Bensekrane';
			case 'cities.12.18': return 'Bouhlou';
			case 'cities.12.19': return 'Bouihi';
			case 'cities.12.20': return 'Chetouane';
			case 'cities.12.21': return 'Dar Yaghmouracene';
			case 'cities.12.22': return 'Djebala';
			case 'cities.12.23': return 'El Aricha';
			case 'cities.12.24': return 'El Fehoul';
			case 'cities.12.25': return 'El Gor';
			case 'cities.12.26': return 'Fellaoucene';
			case 'cities.12.27': return 'Ghazaouet';
			case 'cities.12.28': return 'Hammam Boughrara';
			case 'cities.12.29': return 'Hennaya';
			case 'cities.12.30': return 'Honaine';
			case 'cities.12.31': return 'Maghnia';
			case 'cities.12.32': return 'Mansourah';
			case 'cities.12.33': return 'Marsa Ben M\'hidi';
			case 'cities.12.34': return 'Msirda Fouaga';
			case 'cities.12.35': return 'Nedroma';
			case 'cities.12.36': return 'Oued Chouly';
			case 'cities.12.37': return 'Ouled Mimoun';
			case 'cities.12.38': return 'Ouled Riyah';
			case 'cities.12.39': return 'Remchi';
			case 'cities.12.40': return 'Sabra';
			case 'cities.12.41': return 'Sebbaa Chioukh';
			case 'cities.12.42': return 'Sebdou';
			case 'cities.12.43': return 'Sidi Abdelli';
			case 'cities.12.44': return 'Sidi Djilali';
			case 'cities.12.45': return 'Sidi Medjahed';
			case 'cities.12.46': return 'Souahlia';
			case 'cities.12.47': return 'Souani';
			case 'cities.12.48': return 'Souk Tleta';
			case 'cities.12.49': return 'Terny Beni Hediel';
			case 'cities.12.50': return 'Tianet';
			case 'cities.12.51': return 'Tlemcen';
			case 'cities.12.52': return 'Zenata';
			case 'cities.13.0': return 'Ain Bouchekif';
			case 'cities.13.1': return 'Ain Deheb';
			case 'cities.13.2': return 'Ain El Hadid';
			case 'cities.13.3': return 'Ain Kermes';
			case 'cities.13.4': return 'Ain Zarit';
			case 'cities.13.5': return 'Bougara';
			case 'cities.13.6': return 'Chehaima';
			case 'cities.13.7': return 'Dahmouni';
			case 'cities.13.8': return 'Djebilet Rosfa';
			case 'cities.13.9': return 'Djillali Ben Amar';
			case 'cities.13.10': return 'Faidja';
			case 'cities.13.11': return 'Frenda';
			case 'cities.13.12': return 'Guertoufa';
			case 'cities.13.13': return 'Hamadia';
			case 'cities.13.14': return 'Ksar Chellala';
			case 'cities.13.15': return 'Madna';
			case 'cities.13.16': return 'Mahdia';
			case 'cities.13.17': return 'Mechraa Safa';
			case 'cities.13.18': return 'Medrissa';
			case 'cities.13.19': return 'Medroussa';
			case 'cities.13.20': return 'Meghila';
			case 'cities.13.21': return 'Mellakou';
			case 'cities.13.22': return 'Nadorah';
			case 'cities.13.23': return 'Naima';
			case 'cities.13.24': return 'Oued Lilli';
			case 'cities.13.25': return 'Rahouia';
			case 'cities.13.26': return 'Rechaiga';
			case 'cities.13.27': return 'Sebaine';
			case 'cities.13.28': return 'Sebt';
			case 'cities.13.29': return 'Serghine';
			case 'cities.13.30': return 'Si Abdelghani';
			case 'cities.13.31': return 'Sidi Abderrahmane';
			case 'cities.13.32': return 'Sidi Ali Mellal';
			case 'cities.13.33': return 'Sidi Bakhti';
			case 'cities.13.34': return 'Sidi Hosni';
			case 'cities.13.35': return 'Sougueur';
			case 'cities.13.36': return 'Tagdemt';
			case 'cities.13.37': return 'Takhemaret';
			case 'cities.13.38': return 'Tiaret';
			case 'cities.13.39': return 'Tidda';
			case 'cities.13.40': return 'Tousnina';
			case 'cities.13.41': return 'Zmalet El Emir Abdelkade';
			case 'cities.14.0': return 'Abi Youcef';
			case 'cities.14.1': return 'Aghribs';
			case 'cities.14.2': return 'Agouni Gueghrane';
			case 'cities.14.3': return 'Ain El Hammam';
			case 'cities.14.4': return 'Ain Zaouia';
			case 'cities.14.5': return 'Ait Aggouacha';
			case 'cities.14.6': return 'Ait Bouaddou';
			case 'cities.14.7': return 'Ait Boumehdi';
			case 'cities.14.8': return 'Ait Chafaa';
			case 'cities.14.9': return 'Ait Khellili';
			case 'cities.14.10': return 'Ait Mahmoud';
			case 'cities.14.11': return 'Ait Oumalou';
			case 'cities.14.12': return 'Ait Toudert';
			case 'cities.14.13': return 'Ait Yahia';
			case 'cities.14.14': return 'Ait Yahia Moussa';
			case 'cities.14.15': return 'Akbil';
			case 'cities.14.16': return 'Akerrou';
			case 'cities.14.17': return 'Assi Youcef';
			case 'cities.14.18': return 'Azazga';
			case 'cities.14.19': return 'Azeffoun';
			case 'cities.14.20': return 'Beni Aissi';
			case 'cities.14.21': return 'Beni Douala';
			case 'cities.14.22': return 'Beni Yenni';
			case 'cities.14.23': return 'Beni Zikki';
			case 'cities.14.24': return 'Beni Zmenzer';
			case 'cities.14.25': return 'Boghni';
			case 'cities.14.26': return 'Boudjima';
			case 'cities.14.27': return 'Bounouh';
			case 'cities.14.28': return 'Bouzeguene';
			case 'cities.14.29': return 'Djebel Aissa Mimoun';
			case 'cities.14.30': return 'Draa Ben Khedda';
			case 'cities.14.31': return 'Draa El Mizan';
			case 'cities.14.32': return 'Freha';
			case 'cities.14.33': return 'Frikat';
			case 'cities.14.34': return 'Iboudrarene';
			case 'cities.14.35': return 'Idjeur';
			case 'cities.14.36': return 'Iferhounene';
			case 'cities.14.37': return 'Ifigha';
			case 'cities.14.38': return 'Iflissen';
			case 'cities.14.39': return 'Illilten';
			case 'cities.14.40': return 'Illoula Oumalou';
			case 'cities.14.41': return 'Imsouhal';
			case 'cities.14.42': return 'Irdjen';
			case 'cities.14.43': return 'Larba Nath Irathen';
			case 'cities.14.44': return 'Larbaa Nath Irathen';
			case 'cities.14.45': return 'M\'kira';
			case 'cities.14.46': return 'Maatkas';
			case 'cities.14.47': return 'Makouda';
			case 'cities.14.48': return 'Mechtras';
			case 'cities.14.49': return 'Mekla';
			case 'cities.14.50': return 'Mizrana';
			case 'cities.14.51': return 'Ouacif';
			case 'cities.14.52': return 'Ouadhias';
			case 'cities.14.53': return 'Ouaguenoune';
			case 'cities.14.54': return 'Sidi Naamane';
			case 'cities.14.55': return 'Souamaa';
			case 'cities.14.56': return 'Souk El Thenine';
			case 'cities.14.57': return 'Tadmait';
			case 'cities.14.58': return 'Tigzirt';
			case 'cities.14.59': return 'Timizart';
			case 'cities.14.60': return 'Tirmitine';
			case 'cities.14.61': return 'Tizi Ghenif';
			case 'cities.14.62': return 'Tizi N\'tleta';
			case 'cities.14.63': return 'Tizi Ouzou';
			case 'cities.14.64': return 'Tizi Rached';
			case 'cities.14.65': return 'Yakourene';
			case 'cities.14.66': return 'Yatafene';
			case 'cities.14.67': return 'Zekri';
			case 'cities.15.0': return 'Ain Benian';
			case 'cities.15.1': return 'Ain Taya';
			case 'cities.15.2': return 'Alger Centre';
			case 'cities.15.3': return 'Bab El Oued';
			case 'cities.15.4': return 'Bab Ezzouar';
			case 'cities.15.5': return 'Baba Hesen';
			case 'cities.15.6': return 'Bachedjerah';
			case 'cities.15.7': return 'Bains Romains';
			case 'cities.15.8': return 'Baraki';
			case 'cities.15.9': return 'Ben Aknoun';
			case 'cities.15.10': return 'Beni Messous';
			case 'cities.15.11': return 'Bir Mourad Rais';
			case 'cities.15.12': return 'Bir Touta';
			case 'cities.15.13': return 'Birkhadem';
			case 'cities.15.14': return 'Bologhine Ibnou Ziri';
			case 'cities.15.15': return 'Bordj El Bahri';
			case 'cities.15.16': return 'Bordj El Kiffan';
			case 'cities.15.17': return 'Bourouba';
			case 'cities.15.18': return 'Bouzareah';
			case 'cities.15.19': return 'Casbah';
			case 'cities.15.20': return 'Cheraga';
			case 'cities.15.21': return 'Dar El Beida';
			case 'cities.15.22': return 'Dely Ibrahim';
			case 'cities.15.23': return 'Djasr Kasentina';
			case 'cities.15.24': return 'Douira';
			case 'cities.15.25': return 'Draria';
			case 'cities.15.26': return 'El Achour';
			case 'cities.15.27': return 'El Biar';
			case 'cities.15.28': return 'El Harrach';
			case 'cities.15.29': return 'El Madania';
			case 'cities.15.30': return 'El Magharia';
			case 'cities.15.31': return 'El Merssa';
			case 'cities.15.32': return 'El Mouradia';
			case 'cities.15.33': return 'Herraoua';
			case 'cities.15.34': return 'Hussein Dey';
			case 'cities.15.35': return 'Hydra';
			case 'cities.15.36': return 'Kheraisia';
			case 'cities.15.37': return 'Kouba';
			case 'cities.15.38': return 'Les Eucalyptus';
			case 'cities.15.39': return 'Maalma';
			case 'cities.15.40': return 'Mohamed Belouzdad';
			case 'cities.15.41': return 'Mohammadia';
			case 'cities.15.42': return 'Oued Koriche';
			case 'cities.15.43': return 'Oued Smar';
			case 'cities.15.44': return 'Ouled Chebel';
			case 'cities.15.45': return 'Ouled Fayet';
			case 'cities.15.46': return 'Rahmania';
			case 'cities.15.47': return 'Rais Hamidou';
			case 'cities.15.48': return 'Reghaia';
			case 'cities.15.49': return 'Rouiba';
			case 'cities.15.50': return 'Sehaoula';
			case 'cities.15.51': return 'Setaouali';
			case 'cities.15.52': return 'Sidi M\'hamed';
			case 'cities.15.53': return 'Sidi Moussa';
			case 'cities.15.54': return 'Souidania';
			case 'cities.15.55': return 'Tessala El Merdja';
			case 'cities.15.56': return 'Zeralda';
			case 'cities.16.0': return 'Ain Chouhada';
			case 'cities.16.1': return 'Ain El Ibel';
			case 'cities.16.2': return 'Ain Fekka';
			case 'cities.16.3': return 'Ain Maabed';
			case 'cities.16.4': return 'Ain Oussera';
			case 'cities.16.5': return 'Amourah';
			case 'cities.16.6': return 'Benhar';
			case 'cities.16.7': return 'Benyagoub';
			case 'cities.16.8': return 'Birine';
			case 'cities.16.9': return 'Bouira Lahdab';
			case 'cities.16.10': return 'Charef';
			case 'cities.16.11': return 'Dar Chioukh';
			case 'cities.16.12': return 'Deldoul';
			case 'cities.16.13': return 'Djelfa';
			case 'cities.16.14': return 'Douis';
			case 'cities.16.15': return 'El Guedid';
			case 'cities.16.16': return 'El Idrissia';
			case 'cities.16.17': return 'El Khemis';
			case 'cities.16.18': return 'Faidh El Botma';
			case 'cities.16.19': return 'Guernini';
			case 'cities.16.20': return 'Guettara';
			case 'cities.16.21': return 'Had Sahary';
			case 'cities.16.22': return 'Hassi Bahbah';
			case 'cities.16.23': return 'Hassi El Euch';
			case 'cities.16.24': return 'Hassi Fedoul';
			case 'cities.16.25': return 'M Liliha';
			case 'cities.16.26': return 'Messaad';
			case 'cities.16.27': return 'Moudjebara';
			case 'cities.16.28': return 'Oum Laadham';
			case 'cities.16.29': return 'Sed Rahal';
			case 'cities.16.30': return 'Selmana';
			case 'cities.16.31': return 'Sidi Baizid';
			case 'cities.16.32': return 'Sidi Ladjel';
			case 'cities.16.33': return 'Tadmit';
			case 'cities.16.34': return 'Zaafrane';
			case 'cities.16.35': return 'Zaccar';
			case 'cities.17.0': return 'Bordj Tahar';
			case 'cities.17.1': return 'Boudria Beniyadjis';
			case 'cities.17.2': return 'Bouraoui Belhadef';
			case 'cities.17.3': return 'Boussif Ouled Askeur';
			case 'cities.17.4': return 'Chahna';
			case 'cities.17.5': return 'Chekfa';
			case 'cities.17.6': return 'Djemaa Beni Habibi';
			case 'cities.17.7': return 'Djimla';
			case 'cities.17.8': return 'El Ancer';
			case 'cities.17.9': return 'El Aouana';
			case 'cities.17.10': return 'El Kennar Nouchfi';
			case 'cities.17.11': return 'El Milia';
			case 'cities.17.12': return 'Emir Abdelkader';
			case 'cities.17.13': return 'Erraguene';
			case 'cities.17.14': return 'Ghebala';
			case 'cities.17.15': return 'Jijel';
			case 'cities.17.16': return 'Khiri Oued Adjoul';
			case 'cities.17.17': return 'Kouas';
			case 'cities.17.18': return 'Oudjana';
			case 'cities.17.19': return 'Ouled Rabah';
			case 'cities.17.20': return 'Ouled Yahia Khadrouch';
			case 'cities.17.21': return 'Selma Benziada';
			case 'cities.17.22': return 'Settara';
			case 'cities.17.23': return 'Sidi Abdelaziz';
			case 'cities.17.24': return 'Sidi Marouf';
			case 'cities.17.25': return 'Taher';
			case 'cities.17.26': return 'Texena';
			case 'cities.17.27': return 'Ziama Mansouria';
			case 'cities.18.0': return 'Ain Abessa';
			case 'cities.18.1': return 'Ain Arnat';
			case 'cities.18.2': return 'Ain Azel';
			case 'cities.18.3': return 'Ain El Kebira';
			case 'cities.18.4': return 'Ain Lahdjar';
			case 'cities.18.5': return 'Ain Legradj';
			case 'cities.18.6': return 'Ain Oulmane';
			case 'cities.18.7': return 'Ain Roua';
			case 'cities.18.8': return 'Ain Sebt';
			case 'cities.18.9': return 'Ait Naoual Mezada';
			case 'cities.18.10': return 'Ait Tizi';
			case 'cities.18.11': return 'Amoucha';
			case 'cities.18.12': return 'Babor';
			case 'cities.18.13': return 'Bazer Sakra';
			case 'cities.18.14': return 'Beidha Bordj';
			case 'cities.18.15': return 'Bellaa';
			case 'cities.18.16': return 'Beni Aziz';
			case 'cities.18.17': return 'Beni Chebana';
			case 'cities.18.18': return 'Beni Fouda';
			case 'cities.18.19': return 'Beni Mouhli';
			case 'cities.18.20': return 'Beni Ouartilane';
			case 'cities.18.21': return 'Beni Oussine';
			case 'cities.18.22': return 'Bir El Arch';
			case 'cities.18.23': return 'Bir Haddada';
			case 'cities.18.24': return 'Bouandas';
			case 'cities.18.25': return 'Bougaa';
			case 'cities.18.26': return 'Bousselam';
			case 'cities.18.27': return 'Boutaleb';
			case 'cities.18.28': return 'Dehamcha';
			case 'cities.18.29': return 'Djemila';
			case 'cities.18.30': return 'Draa Kebila';
			case 'cities.18.31': return 'El Eulma';
			case 'cities.18.32': return 'El Ouldja';
			case 'cities.18.33': return 'El Ouricia';
			case 'cities.18.34': return 'Guellal';
			case 'cities.18.35': return 'Guelta Zerka';
			case 'cities.18.36': return 'Guenzet';
			case 'cities.18.37': return 'Guidjel';
			case 'cities.18.38': return 'Hamam Soukhna';
			case 'cities.18.39': return 'Hamma';
			case 'cities.18.40': return 'Hammam Guergour';
			case 'cities.18.41': return 'Harbil';
			case 'cities.18.42': return 'Ksar El Abtal';
			case 'cities.18.43': return 'Maaouia';
			case 'cities.18.44': return 'Maouaklane';
			case 'cities.18.45': return 'Mezloug';
			case 'cities.18.46': return 'Oued El Barad';
			case 'cities.18.47': return 'Ouled Addouane';
			case 'cities.18.48': return 'Ouled Sabor';
			case 'cities.18.49': return 'Ouled Si Ahmed';
			case 'cities.18.50': return 'Ouled Tebben';
			case 'cities.18.51': return 'Rosfa';
			case 'cities.18.52': return 'Salah Bey';
			case 'cities.18.53': return 'Serdj El Ghoul';
			case 'cities.18.54': return 'Setif';
			case 'cities.18.55': return 'Tachouda';
			case 'cities.18.56': return 'Tala Ifacene';
			case 'cities.18.57': return 'Taya';
			case 'cities.18.58': return 'Tella';
			case 'cities.18.59': return 'Tizi N\'bechar';
			case 'cities.19.0': return 'Ain El Hadjar';
			case 'cities.19.1': return 'Ain Sekhouna';
			case 'cities.19.2': return 'Ain Soltane';
			case 'cities.19.3': return 'Doui Thabet';
			case 'cities.19.4': return 'El Hassasna';
			case 'cities.19.5': return 'Hounet';
			case 'cities.19.6': return 'Maamora';
			case 'cities.19.7': return 'Moulay Larbi';
			case 'cities.19.8': return 'Ouled Brahim';
			case 'cities.19.9': return 'Ouled Khaled';
			case 'cities.19.10': return 'Saida';
			case 'cities.19.11': return 'Sidi Ahmed';
			case 'cities.19.12': return 'Sidi Amar';
			case 'cities.19.13': return 'Sidi Boubekeur';
			case 'cities.19.14': return 'Tircine';
			case 'cities.19.15': return 'Youb';
			case 'cities.20.0': return 'Ain Bouziane';
			case 'cities.20.1': return 'Ain Charchar';
			case 'cities.20.2': return 'Ain Kechera';
			case 'cities.20.3': return 'Ain Zouit';
			case 'cities.20.4': return 'Azzaba';
			case 'cities.20.5': return 'Bekkouche Lakhdar';
			case 'cities.20.6': return 'Ben Azzouz';
			case 'cities.20.7': return 'Beni Bechir';
			case 'cities.20.8': return 'Beni Oulbane';
			case 'cities.20.9': return 'Beni Zid';
			case 'cities.20.10': return 'Bin El Ouiden';
			case 'cities.20.11': return 'Bouchetata';
			case 'cities.20.12': return 'Cheraia';
			case 'cities.20.13': return 'Collo';
			case 'cities.20.14': return 'Djendel Saadi Mohamed';
			case 'cities.20.15': return 'El Arrouch';
			case 'cities.20.16': return 'El Ghedir';
			case 'cities.20.17': return 'El Hadaiek';
			case 'cities.20.18': return 'El Marsa';
			case 'cities.20.19': return 'Emjez Edchich';
			case 'cities.20.20': return 'Es Sebt';
			case 'cities.20.21': return 'Filfila';
			case 'cities.20.22': return 'Hamadi Krouma';
			case 'cities.20.23': return 'Kanoua';
			case 'cities.20.24': return 'Kerkera';
			case 'cities.20.25': return 'Khenag Mayoum';
			case 'cities.20.26': return 'Oued Zhour';
			case 'cities.20.27': return 'Ouldja Boulbalout';
			case 'cities.20.28': return 'Ouled Attia';
			case 'cities.20.29': return 'Ouled Habbeba';
			case 'cities.20.30': return 'Oum Toub';
			case 'cities.20.31': return 'Ramdane Djamel';
			case 'cities.20.32': return 'Salah Bouchaour';
			case 'cities.20.33': return 'Sidi Mezghiche';
			case 'cities.20.34': return 'Skikda';
			case 'cities.20.35': return 'Tamalous';
			case 'cities.20.36': return 'Zerdezas';
			case 'cities.20.37': return 'Zitouna';
			case 'cities.21.0': return 'Ain Adden';
			case 'cities.21.1': return 'Ain El Berd';
			case 'cities.21.2': return 'Ain Kada';
			case 'cities.21.3': return 'Ain Thrid';
			case 'cities.21.4': return 'Ain Tindamine';
			case 'cities.21.5': return 'Amarnas';
			case 'cities.21.6': return 'Badredine El Mokrani';
			case 'cities.21.7': return 'Belarbi';
			case 'cities.21.8': return 'Ben Badis';
			case 'cities.21.9': return 'Benachiba Chelia';
			case 'cities.21.10': return 'Bir El Hammam';
			case 'cities.21.11': return 'Boudjebaa El Bordj';
			case 'cities.21.12': return 'Boukhanafis';
			case 'cities.21.13': return 'Chetouane Belaila';
			case 'cities.21.14': return 'Dhaya';
			case 'cities.21.15': return 'El Hacaiba';
			case 'cities.21.16': return 'Hassi Dahou';
			case 'cities.21.17': return 'Hassi Zahana';
			case 'cities.21.18': return 'Lamtar';
			case 'cities.21.19': return 'M\'cid';
			case 'cities.21.20': return 'Makedra';
			case 'cities.21.21': return 'Marhoum';
			case 'cities.21.22': return 'Merine';
			case 'cities.21.23': return 'Mezaourou';
			case 'cities.21.24': return 'Mostefa Ben Brahim';
			case 'cities.21.25': return 'Moulay Slissen';
			case 'cities.21.26': return 'Oued Sebaa';
			case 'cities.21.27': return 'Oued Sefioun';
			case 'cities.21.28': return 'Oued Taourira';
			case 'cities.21.29': return 'Ras El Ma';
			case 'cities.21.30': return 'Redjem Demouche';
			case 'cities.21.31': return 'Sehala Thaoura';
			case 'cities.21.32': return 'Sfissef';
			case 'cities.21.33': return 'Sidi Ali Benyoub';
			case 'cities.21.34': return 'Sidi Ali Boussidi';
			case 'cities.21.35': return 'Sidi Bel Abbes';
			case 'cities.21.36': return 'Sidi Brahim';
			case 'cities.21.37': return 'Sidi Chaib';
			case 'cities.21.38': return 'Sidi Dahou Zairs';
			case 'cities.21.39': return 'Sidi Hamadouche';
			case 'cities.21.40': return 'Sidi Khaled';
			case 'cities.21.41': return 'Sidi Lahcene';
			case 'cities.21.42': return 'Sidi Yacoub';
			case 'cities.21.43': return 'Tabia';
			case 'cities.21.44': return 'Tafissour';
			case 'cities.21.45': return 'Taoudmout';
			case 'cities.21.46': return 'Teghalimet';
			case 'cities.21.47': return 'Telagh';
			case 'cities.21.48': return 'Tenira';
			case 'cities.21.49': return 'Tessala';
			case 'cities.21.50': return 'Tilmouni';
			case 'cities.21.51': return 'Zerouala';
			case 'cities.22.0': return 'Ain Berda';
			case 'cities.22.1': return 'Annaba';
			case 'cities.22.2': return 'Berrahel';
			case 'cities.22.3': return 'Chetaibi';
			case 'cities.22.4': return 'Cheurfa';
			case 'cities.22.5': return 'El Bouni';
			case 'cities.22.6': return 'El Hadjar';
			case 'cities.22.7': return 'Eulma';
			case 'cities.22.8': return 'Oued El Aneb';
			case 'cities.22.9': return 'Seraidi';
			case 'cities.22.10': return 'Sidi Amar';
			case 'cities.22.11': return 'Treat';
			case 'cities.23.0': return 'Ain Ben Beida';
			case 'cities.23.1': return 'Ain Hessania';
			case 'cities.23.2': return 'Ain Larbi';
			case 'cities.23.3': return 'Ain Makhlouf';
			case 'cities.23.4': return 'Ain Reggada';
			case 'cities.23.5': return 'Belkheir';
			case 'cities.23.6': return 'Ben Djarah';
			case 'cities.23.7': return 'Beni Mezline';
			case 'cities.23.8': return 'Bordj Sabat';
			case 'cities.23.9': return 'Bou Hachana';
			case 'cities.23.10': return 'Bou Hamdane';
			case 'cities.23.11': return 'Bouati Mahmoud';
			case 'cities.23.12': return 'Bouchegouf';
			case 'cities.23.13': return 'Bouhamra Ahmed';
			case 'cities.23.14': return 'Dahouara';
			case 'cities.23.15': return 'Djeballah Khemissi';
			case 'cities.23.16': return 'El Fedjoudj';
			case 'cities.23.17': return 'Guelaat Bou Sbaa';
			case 'cities.23.18': return 'Guelma';
			case 'cities.23.19': return 'Hamam Debagh';
			case 'cities.23.20': return 'Hammam N\'bail';
			case 'cities.23.21': return 'Heliopolis';
			case 'cities.23.22': return 'Khezara';
			case 'cities.23.23': return 'Medjez Amar';
			case 'cities.23.24': return 'Medjez Sfa';
			case 'cities.23.25': return 'Nechmaya';
			case 'cities.23.26': return 'Oued Cheham';
			case 'cities.23.27': return 'Oued Fragha';
			case 'cities.23.28': return 'Oued Zenati';
			case 'cities.23.29': return 'Ras El Agba';
			case 'cities.23.30': return 'Roknia';
			case 'cities.23.31': return 'Sellaoua Announa';
			case 'cities.23.32': return 'Sidi Sandel';
			case 'cities.23.33': return 'Tamlouka';
			case 'cities.24.0': return 'Ain Abid';
			case 'cities.24.1': return 'Ain Smara';
			case 'cities.24.2': return 'Ben Badis';
			case 'cities.24.3': return 'Beni Hamidene';
			case 'cities.24.4': return 'Constantine';
			case 'cities.24.5': return 'Didouche Mourad';
			case 'cities.24.6': return 'El Khroub';
			case 'cities.24.7': return 'Hamma Bouziane';
			case 'cities.24.8': return 'Ibn Ziad';
			case 'cities.24.9': return 'Messaoud Boujeriou';
			case 'cities.24.10': return 'Ouled Rahmouni';
			case 'cities.24.11': return 'Zighoud Youcef';
			case 'cities.25.0': return 'Ain Boucif';
			case 'cities.25.1': return 'Ain Ouksir';
			case 'cities.25.2': return 'Aissaouia';
			case 'cities.25.3': return 'Aziz';
			case 'cities.25.4': return 'Baata';
			case 'cities.25.5': return 'Ben Chicao';
			case 'cities.25.6': return 'Beni Slimane';
			case 'cities.25.7': return 'Berrouaghia';
			case 'cities.25.8': return 'Bir Ben Laabed';
			case 'cities.25.9': return 'Boghar';
			case 'cities.25.10': return 'Bouaiche';
			case 'cities.25.11': return 'Bouaichoune';
			case 'cities.25.12': return 'Bouchrahil';
			case 'cities.25.13': return 'Boughzoul';
			case 'cities.25.14': return 'Bouskene';
			case 'cities.25.15': return 'Chabounia';
			case 'cities.25.16': return 'Chelalet El Adhaoura';
			case 'cities.25.17': return 'Cheniguel';
			case 'cities.25.18': return 'Damiat';
			case 'cities.25.19': return 'Derrag';
			case 'cities.25.20': return 'Deux Bassins';
			case 'cities.25.21': return 'Djouab';
			case 'cities.25.22': return 'Draa Essamar';
			case 'cities.25.23': return 'El Azizia';
			case 'cities.25.24': return 'El Guelbelkebir';
			case 'cities.25.25': return 'El Hamdania';
			case 'cities.25.26': return 'El Omaria';
			case 'cities.25.27': return 'El Ouinet';
			case 'cities.25.28': return 'Hannacha';
			case 'cities.25.29': return 'Kef Lakhdar';
			case 'cities.25.30': return 'Khams Djouamaa';
			case 'cities.25.31': return 'Ksar El Boukhari';
			case 'cities.25.32': return 'Maghraoua';
			case 'cities.25.33': return 'Medea';
			case 'cities.25.34': return 'Medjebar';
			case 'cities.25.35': return 'Meftaha';
			case 'cities.25.36': return 'Mezerana';
			case 'cities.25.37': return 'Mihoub';
			case 'cities.25.38': return 'Ouamri';
			case 'cities.25.39': return 'Oued Harbil';
			case 'cities.25.40': return 'Ouled Antar';
			case 'cities.25.41': return 'Ouled Bouachra';
			case 'cities.25.42': return 'Ouled Brahim';
			case 'cities.25.43': return 'Ouled Deid';
			case 'cities.25.44': return 'Ouled Hellal';
			case 'cities.25.45': return 'Ouled Maaref';
			case 'cities.25.46': return 'Oum El Djellil';
			case 'cities.25.47': return 'Ouzera';
			case 'cities.25.48': return 'Rebaia';
			case 'cities.25.49': return 'Saneg';
			case 'cities.25.50': return 'Sedraya';
			case 'cities.25.51': return 'Seghouane';
			case 'cities.25.52': return 'Si Mahdjoub';
			case 'cities.25.53': return 'Sidi Demed';
			case 'cities.25.54': return 'Sidi Naamane';
			case 'cities.25.55': return 'Sidi Rabie';
			case 'cities.25.56': return 'Sidi Zahar';
			case 'cities.25.57': return 'Sidi Ziane';
			case 'cities.25.58': return 'Souagui';
			case 'cities.25.59': return 'Tablat';
			case 'cities.25.60': return 'Tafraout';
			case 'cities.25.61': return 'Tamesguida';
			case 'cities.25.62': return 'Tletat Ed Douair';
			case 'cities.25.63': return 'Zoubiria';
			case 'cities.26.0': return 'Achaacha';
			case 'cities.26.1': return 'Ain Boudinar';
			case 'cities.26.2': return 'Ain Nouissy';
			case 'cities.26.3': return 'Ain Sidi Cherif';
			case 'cities.26.4': return 'Ain Tedles';
			case 'cities.26.5': return 'Benabdelmalek Ramdane';
			case 'cities.26.6': return 'Bouguirat';
			case 'cities.26.7': return 'Fornaka';
			case 'cities.26.8': return 'Hadjadj';
			case 'cities.26.9': return 'Hassi Mameche';
			case 'cities.26.10': return 'Hassiane';
			case 'cities.26.11': return 'Khadra';
			case 'cities.26.12': return 'Kheir Eddine';
			case 'cities.26.13': return 'Mansourah';
			case 'cities.26.14': return 'Mazagran';
			case 'cities.26.15': return 'Mesra';
			case 'cities.26.16': return 'Mostaganem';
			case 'cities.26.17': return 'Nekmaria';
			case 'cities.26.18': return 'Oued El Kheir';
			case 'cities.26.19': return 'Ouled Boughalem';
			case 'cities.26.20': return 'Ouled Maalah';
			case 'cities.26.21': return 'Safsaf';
			case 'cities.26.22': return 'Sayada';
			case 'cities.26.23': return 'Sidi Ali';
			case 'cities.26.24': return 'Sidi Belaattar';
			case 'cities.26.25': return 'Sidi Lakhdar';
			case 'cities.26.26': return 'Sirat';
			case 'cities.26.27': return 'Souaflia';
			case 'cities.26.28': return 'Sour';
			case 'cities.26.29': return 'Stidia';
			case 'cities.26.30': return 'Tazgait';
			case 'cities.26.31': return 'Touahria';
			case 'cities.27.0': return 'Ain El Hadjel';
			case 'cities.27.1': return 'Ain El Melh';
			case 'cities.27.2': return 'Ain Fares';
			case 'cities.27.3': return 'Ain Khadra';
			case 'cities.27.4': return 'Ain Rich';
			case 'cities.27.5': return 'Belaiba';
			case 'cities.27.6': return 'Ben Srour';
			case 'cities.27.7': return 'Beni Ilmane';
			case 'cities.27.8': return 'Benzouh';
			case 'cities.27.9': return 'Berhoum';
			case 'cities.27.10': return 'Bir Foda';
			case 'cities.27.11': return 'Bou Saada';
			case 'cities.27.12': return 'Bouti Sayeh';
			case 'cities.27.13': return 'Chellal';
			case 'cities.27.14': return 'Dehahna';
			case 'cities.27.15': return 'Djebel Messaad';
			case 'cities.27.16': return 'El Hamel';
			case 'cities.27.17': return 'El Houamed';
			case 'cities.27.18': return 'Hammam Dalaa';
			case 'cities.27.19': return 'Khettouti Sed El Jir';
			case 'cities.27.20': return 'Khoubana';
			case 'cities.27.21': return 'M\'cif';
			case 'cities.27.22': return 'M\'sila';
			case 'cities.27.23': return 'M\'tarfa';
			case 'cities.27.24': return 'Maadid';
			case 'cities.27.25': return 'Maarif';
			case 'cities.27.26': return 'Magra';
			case 'cities.27.27': return 'Medjedel';
			case 'cities.27.28': return 'Menaa';
			case 'cities.27.29': return 'Mohamed Boudiaf';
			case 'cities.27.30': return 'Ouanougha';
			case 'cities.27.31': return 'Ouled Addi Guebala';
			case 'cities.27.32': return 'Ouled Derradj';
			case 'cities.27.33': return 'Ouled Madhi';
			case 'cities.27.34': return 'Ouled Mansour';
			case 'cities.27.35': return 'Ouled Sidi Brahim';
			case 'cities.27.36': return 'Ouled Slimane';
			case 'cities.27.37': return 'Oulteme';
			case 'cities.27.38': return 'Sidi Aissa';
			case 'cities.27.39': return 'Sidi Ameur';
			case 'cities.27.40': return 'Sidi Hadjeres';
			case 'cities.27.41': return 'Sidi M\'hamed';
			case 'cities.27.42': return 'Slim';
			case 'cities.27.43': return 'Souamaa';
			case 'cities.27.44': return 'Tamsa';
			case 'cities.27.45': return 'Tarmount';
			case 'cities.27.46': return 'Zarzour';
			case 'cities.28.0': return 'Ain Fares';
			case 'cities.28.1': return 'Ain Fekan';
			case 'cities.28.2': return 'Ain Ferah';
			case 'cities.28.3': return 'Ain Frass';
			case 'cities.28.4': return 'Alaimia';
			case 'cities.28.5': return 'Aouf';
			case 'cities.28.6': return 'Benian';
			case 'cities.28.7': return 'Bou Henni';
			case 'cities.28.8': return 'Bouhanifia';
			case 'cities.28.9': return 'Chorfa';
			case 'cities.28.10': return 'El Bordj';
			case 'cities.28.11': return 'El Gaada';
			case 'cities.28.12': return 'El Ghomri';
			case 'cities.28.13': return 'El Gueitena';
			case 'cities.28.14': return 'El Hachem';
			case 'cities.28.15': return 'El Keurt';
			case 'cities.28.16': return 'El Mamounia';
			case 'cities.28.17': return 'El Menaouer';
			case 'cities.28.18': return 'Ferraguig';
			case 'cities.28.19': return 'Froha';
			case 'cities.28.20': return 'Gharrous';
			case 'cities.28.21': return 'Ghriss';
			case 'cities.28.22': return 'Guerdjoum';
			case 'cities.28.23': return 'Hacine';
			case 'cities.28.24': return 'Khalouia';
			case 'cities.28.25': return 'Makhda';
			case 'cities.28.26': return 'Maoussa';
			case 'cities.28.27': return 'Mascara';
			case 'cities.28.28': return 'Matemore';
			case 'cities.28.29': return 'Mocta Douz';
			case 'cities.28.30': return 'Mohammadia';
			case 'cities.28.31': return 'Nesmot';
			case 'cities.28.32': return 'Oggaz';
			case 'cities.28.33': return 'Oued El Abtal';
			case 'cities.28.34': return 'Oued Taria';
			case 'cities.28.35': return 'Ras El Ain Amirouche';
			case 'cities.28.36': return 'Sedjerara';
			case 'cities.28.37': return 'Sehailia';
			case 'cities.28.38': return 'Sidi Abdeldjebar';
			case 'cities.28.39': return 'Sidi Abdelmoumene';
			case 'cities.28.40': return 'Sidi Boussaid';
			case 'cities.28.41': return 'Sidi Kada';
			case 'cities.28.42': return 'Sig';
			case 'cities.28.43': return 'Tighennif';
			case 'cities.28.44': return 'Tizi';
			case 'cities.28.45': return 'Zahana';
			case 'cities.28.46': return 'Zelamta';
			case 'cities.29.0': return 'Ain Beida';
			case 'cities.29.1': return 'El Borma';
			case 'cities.29.2': return 'Hassi Ben Abdellah';
			case 'cities.29.3': return 'Hassi Messaoud';
			case 'cities.29.4': return 'N\'goussa';
			case 'cities.29.5': return 'Ouargla';
			case 'cities.29.6': return 'Rouissat';
			case 'cities.29.7': return 'Sidi Khouiled';
			case 'cities.30.0': return 'Ain Biya';
			case 'cities.30.1': return 'Ain Kerma';
			case 'cities.30.2': return 'Ain Turk';
			case 'cities.30.3': return 'Arzew';
			case 'cities.30.4': return 'Ben Freha';
			case 'cities.30.5': return 'Bethioua';
			case 'cities.30.6': return 'Bir El Djir';
			case 'cities.30.7': return 'Boufatis';
			case 'cities.30.8': return 'Bousfer';
			case 'cities.30.9': return 'Boutlelis';
			case 'cities.30.10': return 'El Ancar';
			case 'cities.30.11': return 'El Braya';
			case 'cities.30.12': return 'El Kerma';
			case 'cities.30.13': return 'Es Senia';
			case 'cities.30.14': return 'Gdyel';
			case 'cities.30.15': return 'Hassi Ben Okba';
			case 'cities.30.16': return 'Hassi Bounif';
			case 'cities.30.17': return 'Hassi Mefsoukh';
			case 'cities.30.18': return 'Marsat El Hadjadj';
			case 'cities.30.19': return 'Mers El Kebir';
			case 'cities.30.20': return 'Messerghin';
			case 'cities.30.21': return 'Oran';
			case 'cities.30.22': return 'Oued Tlelat';
			case 'cities.30.23': return 'Sidi Ben Yebka';
			case 'cities.30.24': return 'Sidi Chami';
			case 'cities.30.25': return 'Tafraoui';
			case 'cities.31.0': return 'Ain El Orak';
			case 'cities.31.1': return 'Arbaouat';
			case 'cities.31.2': return 'Boualem';
			case 'cities.31.3': return 'Bougtoub';
			case 'cities.31.4': return 'Boussemghoun';
			case 'cities.31.5': return 'Brezina';
			case 'cities.31.6': return 'Cheguig';
			case 'cities.31.7': return 'Chellala';
			case 'cities.31.8': return 'El Bayadh';
			case 'cities.31.9': return 'El Biodh Sidi Cheikh';
			case 'cities.31.10': return 'El Bnoud';
			case 'cities.31.11': return 'El Kheither';
			case 'cities.31.12': return 'El Mehara';
			case 'cities.31.13': return 'Ghassoul';
			case 'cities.31.14': return 'Kef El Ahmar';
			case 'cities.31.15': return 'Krakda';
			case 'cities.31.16': return 'Rogassa';
			case 'cities.31.17': return 'Sidi Ameur';
			case 'cities.31.18': return 'Sidi Slimane';
			case 'cities.31.19': return 'Sidi Tifour';
			case 'cities.31.20': return 'Stitten';
			case 'cities.31.21': return 'Tousmouline';
			case 'cities.32.0': return 'Bordj Omar Driss';
			case 'cities.32.1': return 'Debdeb';
			case 'cities.32.2': return 'Illizi';
			case 'cities.32.3': return 'In Amenas';
			case 'cities.33.0': return 'Ain Taghrout';
			case 'cities.33.1': return 'Ain Tesra';
			case 'cities.33.2': return 'Belimour';
			case 'cities.33.3': return 'Ben Daoud';
			case 'cities.33.4': return 'Bir Kasdali';
			case 'cities.33.5': return 'Bordj Bou Arreridj';
			case 'cities.33.6': return 'Bordj Ghdir';
			case 'cities.33.7': return 'Bordj Zemora';
			case 'cities.33.8': return 'Colla';
			case 'cities.33.9': return 'Djaafra';
			case 'cities.33.10': return 'El Ach';
			case 'cities.33.11': return 'El Achir';
			case 'cities.33.12': return 'El Anseur';
			case 'cities.33.13': return 'El Hamadia';
			case 'cities.33.14': return 'El M\'hir';
			case 'cities.33.15': return 'El Main';
			case 'cities.33.16': return 'Ghilassa';
			case 'cities.33.17': return 'Haraza';
			case 'cities.33.18': return 'Hasnaoua';
			case 'cities.33.19': return 'Khelil';
			case 'cities.33.20': return 'Ksour';
			case 'cities.33.21': return 'Mansoura';
			case 'cities.33.22': return 'Medjana';
			case 'cities.33.23': return 'Ouled Brahem';
			case 'cities.33.24': return 'Ouled Dahmane';
			case 'cities.33.25': return 'Ouled Sidi Brahim';
			case 'cities.33.26': return 'Rabta';
			case 'cities.33.27': return 'Ras El Oued';
			case 'cities.33.28': return 'Sidi Embarek';
			case 'cities.33.29': return 'Tafreg';
			case 'cities.33.30': return 'Taglait';
			case 'cities.33.31': return 'Teniet En Nasr';
			case 'cities.33.32': return 'Tesmart';
			case 'cities.33.33': return 'Tixter';
			case 'cities.34.0': return 'Afir';
			case 'cities.34.1': return 'Ammal';
			case 'cities.34.2': return 'Baghlia';
			case 'cities.34.3': return 'Ben Choud';
			case 'cities.34.4': return 'Beni Amrane';
			case 'cities.34.5': return 'Bordj Menaiel';
			case 'cities.34.6': return 'Boudouaou';
			case 'cities.34.7': return 'Boudouaou El Bahri';
			case 'cities.34.8': return 'Boumerdes';
			case 'cities.34.9': return 'Bouzegza Keddara';
			case 'cities.34.10': return 'Chabet El Ameur';
			case 'cities.34.11': return 'Corso';
			case 'cities.34.12': return 'Dellys';
			case 'cities.34.13': return 'Djinet';
			case 'cities.34.14': return 'El Kharrouba';
			case 'cities.34.15': return 'Hammedi';
			case 'cities.34.16': return 'Isser';
			case 'cities.34.17': return 'Khemis El Khechna';
			case 'cities.34.18': return 'Larbatache';
			case 'cities.34.19': return 'Leghata';
			case 'cities.34.20': return 'Naciria';
			case 'cities.34.21': return 'Ouled Aissa';
			case 'cities.34.22': return 'Ouled Hedadj';
			case 'cities.34.23': return 'Ouled Moussa';
			case 'cities.34.24': return 'Si Mustapha';
			case 'cities.34.25': return 'Sidi Daoud';
			case 'cities.34.26': return 'Souk El Haad';
			case 'cities.34.27': return 'Taourga';
			case 'cities.34.28': return 'Thenia';
			case 'cities.34.29': return 'Tidjelabine';
			case 'cities.34.30': return 'Timezrit';
			case 'cities.34.31': return 'Zemmouri';
			case 'cities.35.0': return 'Ain El Assel';
			case 'cities.35.1': return 'Ain Kerma';
			case 'cities.35.2': return 'Asfour';
			case 'cities.35.3': return 'Ben M Hidi';
			case 'cities.35.4': return 'Berrihane';
			case 'cities.35.5': return 'Besbes';
			case 'cities.35.6': return 'Bougous';
			case 'cities.35.7': return 'Bouhadjar';
			case 'cities.35.8': return 'Bouteldja';
			case 'cities.35.9': return 'Chebaita Mokhtar';
			case 'cities.35.10': return 'Chefia';
			case 'cities.35.11': return 'Chihani';
			case 'cities.35.12': return 'Drean';
			case 'cities.35.13': return 'Echatt';
			case 'cities.35.14': return 'El Aioun';
			case 'cities.35.15': return 'El Kala';
			case 'cities.35.16': return 'El Tarf';
			case 'cities.35.17': return 'Hammam Beni Salah';
			case 'cities.35.18': return 'Lac Des Oiseaux';
			case 'cities.35.19': return 'Oued Zitoun';
			case 'cities.35.20': return 'Raml Souk';
			case 'cities.35.21': return 'Souarekh';
			case 'cities.35.22': return 'Zerizer';
			case 'cities.35.23': return 'Zitouna';
			case 'cities.36.0': return 'Oum El Assel';
			case 'cities.36.1': return 'Tindouf';
			case 'cities.37.0': return 'Ammari';
			case 'cities.37.1': return 'Beni Chaib';
			case 'cities.37.2': return 'Beni Lahcene';
			case 'cities.37.3': return 'Bordj Bounaama';
			case 'cities.37.4': return 'Bordj El Emir Abdelkader';
			case 'cities.37.5': return 'Bou Caid';
			case 'cities.37.6': return 'Khemisti';
			case 'cities.37.7': return 'Larbaa';
			case 'cities.37.8': return 'Lardjem';
			case 'cities.37.9': return 'Layoune';
			case 'cities.37.10': return 'Lazharia';
			case 'cities.37.11': return 'Maacem';
			case 'cities.37.12': return 'Melaab';
			case 'cities.37.13': return 'Ouled Bessem';
			case 'cities.37.14': return 'Sidi Abed';
			case 'cities.37.15': return 'Sidi Boutouchent';
			case 'cities.37.16': return 'Sidi Lantri';
			case 'cities.37.17': return 'Sidi Slimane';
			case 'cities.37.18': return 'Tamellalet';
			case 'cities.37.19': return 'Theniet El Had';
			case 'cities.37.20': return 'Tissemsilt';
			case 'cities.37.21': return 'Youssoufia';
			case 'cities.38.0': return 'Bayadha';
			case 'cities.38.1': return 'Ben Guecha';
			case 'cities.38.2': return 'Debila';
			case 'cities.38.3': return 'Douar El Maa';
			case 'cities.38.4': return 'El Ogla';
			case 'cities.38.5': return 'El Oued';
			case 'cities.38.6': return 'Guemar';
			case 'cities.38.7': return 'Hamraia';
			case 'cities.38.8': return 'Hassani Abdelkrim';
			case 'cities.38.9': return 'Hassi Khalifa';
			case 'cities.38.10': return 'Kouinine';
			case 'cities.38.11': return 'Magrane';
			case 'cities.38.12': return 'Mih Ouansa';
			case 'cities.38.13': return 'Nakhla';
			case 'cities.38.14': return 'Oued El Alenda';
			case 'cities.38.15': return 'Ourmes';
			case 'cities.38.16': return 'Reguiba';
			case 'cities.38.17': return 'Robbah';
			case 'cities.38.18': return 'Sidi Aoun';
			case 'cities.38.19': return 'Taghzout';
			case 'cities.38.20': return 'Taleb Larbi';
			case 'cities.38.21': return 'Trifaoui';
			case 'cities.39.0': return 'Ain Touila';
			case 'cities.39.1': return 'Babar';
			case 'cities.39.2': return 'Baghai';
			case 'cities.39.3': return 'Bouhmama';
			case 'cities.39.4': return 'Chelia';
			case 'cities.39.5': return 'Cherchar';
			case 'cities.39.6': return 'Djellal';
			case 'cities.39.7': return 'El Hamma';
			case 'cities.39.8': return 'El Mahmal';
			case 'cities.39.9': return 'El Oueldja';
			case 'cities.39.10': return 'Ensigha';
			case 'cities.39.11': return 'Kais';
			case 'cities.39.12': return 'Khenchela';
			case 'cities.39.13': return 'Khirane';
			case 'cities.39.14': return 'M\'sara';
			case 'cities.39.15': return 'M\'toussa';
			case 'cities.39.16': return 'Ouled Rechache';
			case 'cities.39.17': return 'Remila';
			case 'cities.39.18': return 'Tamza';
			case 'cities.39.19': return 'Taouzianat';
			case 'cities.39.20': return 'Yabous';
			case 'cities.40.0': return 'Ain Soltane';
			case 'cities.40.1': return 'Ain Zana';
			case 'cities.40.2': return 'Bir Bouhouche';
			case 'cities.40.3': return 'Drea';
			case 'cities.40.4': return 'Haddada';
			case 'cities.40.5': return 'Hanencha';
			case 'cities.40.6': return 'Khedara';
			case 'cities.40.7': return 'Khemissa';
			case 'cities.40.8': return 'M\'daourouche';
			case 'cities.40.9': return 'Machroha';
			case 'cities.40.10': return 'Merahna';
			case 'cities.40.11': return 'Oued Kebrit';
			case 'cities.40.12': return 'Ouled Driss';
			case 'cities.40.13': return 'Ouled Moumen';
			case 'cities.40.14': return 'Oum El Adhaim';
			case 'cities.40.15': return 'Quillen';
			case 'cities.40.16': return 'Ragouba';
			case 'cities.40.17': return 'Safel El Ouiden';
			case 'cities.40.18': return 'Sedrata';
			case 'cities.40.19': return 'Sidi Fredj';
			case 'cities.40.20': return 'Souk Ahras';
			case 'cities.40.21': return 'Taoura';
			case 'cities.40.22': return 'Terraguelt';
			case 'cities.40.23': return 'Tiffech';
			case 'cities.40.24': return 'Zaarouria';
			case 'cities.40.25': return 'Zouabi';
			case 'cities.41.0': return 'Aghbal';
			case 'cities.41.1': return 'Ahmer El Ain';
			case 'cities.41.2': return 'Ain Tagourait';
			case 'cities.41.3': return 'Attatba';
			case 'cities.41.4': return 'Beni Mileuk';
			case 'cities.41.5': return 'Bou Haroun';
			case 'cities.41.6': return 'Bou Ismail';
			case 'cities.41.7': return 'Bourkika';
			case 'cities.41.8': return 'Chaiba';
			case 'cities.41.9': return 'Cherchell';
			case 'cities.41.10': return 'Damous';
			case 'cities.41.11': return 'Douaouda';
			case 'cities.41.12': return 'Fouka';
			case 'cities.41.13': return 'Gouraya';
			case 'cities.41.14': return 'Hadjout';
			case 'cities.41.15': return 'Hadjret Ennous';
			case 'cities.41.16': return 'Khemisti';
			case 'cities.41.17': return 'Kolea';
			case 'cities.41.18': return 'Larhat';
			case 'cities.41.19': return 'Menaceur';
			case 'cities.41.20': return 'Merad';
			case 'cities.41.21': return 'Messelmoun';
			case 'cities.41.22': return 'Nador';
			case 'cities.41.23': return 'Sidi Amar';
			case 'cities.41.24': return 'Sidi Ghiles';
			case 'cities.41.25': return 'Sidi Rached';
			case 'cities.41.26': return 'Sidi Semiane';
			case 'cities.41.27': return 'Tipaza';
			case 'cities.42.0': return 'Ahmed Rachedi';
			case 'cities.42.1': return 'Ain Beida Harriche';
			case 'cities.42.2': return 'Ain Mellouk';
			case 'cities.42.3': return 'Ain Tine';
			case 'cities.42.4': return 'Amira Arres';
			case 'cities.42.5': return 'Benyahia Abderrahmane';
			case 'cities.42.6': return 'Bouhatem';
			case 'cities.42.7': return 'Chelghoum Laid';
			case 'cities.42.8': return 'Chigara';
			case 'cities.42.9': return 'Derrahi Bousselah';
			case 'cities.42.10': return 'El Mechira';
			case 'cities.42.11': return 'Elayadi Barbes';
			case 'cities.42.12': return 'Ferdjioua';
			case 'cities.42.13': return 'Grarem Gouga';
			case 'cities.42.14': return 'Hamala';
			case 'cities.42.15': return 'Mila';
			case 'cities.42.16': return 'Minar Zarza';
			case 'cities.42.17': return 'Oued Athmenia';
			case 'cities.42.18': return 'Oued Endja';
			case 'cities.42.19': return 'Oued Seguen';
			case 'cities.42.20': return 'Ouled Khalouf';
			case 'cities.42.21': return 'Rouached';
			case 'cities.42.22': return 'Sidi Khelifa';
			case 'cities.42.23': return 'Sidi Merouane';
			case 'cities.42.24': return 'Tadjenanet';
			case 'cities.42.25': return 'Tassadane Haddada';
			case 'cities.42.26': return 'Teleghma';
			case 'cities.42.27': return 'Terrai Bainem';
			case 'cities.42.28': return 'Tessala';
			case 'cities.42.29': return 'Tiberguent';
			case 'cities.42.30': return 'Yahia Beniguecha';
			case 'cities.42.31': return 'Zeghaia';
			case 'cities.43.0': return 'Ain Benian';
			case 'cities.43.1': return 'Ain Bouyahia';
			case 'cities.43.2': return 'Ain Defla';
			case 'cities.43.3': return 'Ain Lechiakh';
			case 'cities.43.4': return 'Ain Soltane';
			case 'cities.43.5': return 'Ain Tork';
			case 'cities.43.6': return 'Arib';
			case 'cities.43.7': return 'Barbouche';
			case 'cities.43.8': return 'Bathia';
			case 'cities.43.9': return 'Belaas';
			case 'cities.43.10': return 'Ben Allal';
			case 'cities.43.11': return 'Bir Ould Khelifa';
			case 'cities.43.12': return 'Bordj Emir Khaled';
			case 'cities.43.13': return 'Boumedfaa';
			case 'cities.43.14': return 'Bourached';
			case 'cities.43.15': return 'Djelida';
			case 'cities.43.16': return 'Djemaa Ouled Cheikh';
			case 'cities.43.17': return 'Djendel';
			case 'cities.43.18': return 'El Abadia';
			case 'cities.43.19': return 'El Amra';
			case 'cities.43.20': return 'El Attaf';
			case 'cities.43.21': return 'El Maine';
			case 'cities.43.22': return 'Hammam Righa';
			case 'cities.43.23': return 'Hassania';
			case 'cities.43.24': return 'Hoceinia';
			case 'cities.43.25': return 'Khemis Miliana';
			case 'cities.43.26': return 'Mekhatria';
			case 'cities.43.27': return 'Miliana';
			case 'cities.43.28': return 'Oued Chorfa';
			case 'cities.43.29': return 'Oued Djemaa';
			case 'cities.43.30': return 'Rouina';
			case 'cities.43.31': return 'Sidi Lakhdar';
			case 'cities.43.32': return 'Tacheta Zegagha';
			case 'cities.43.33': return 'Tarik Ibn Ziad';
			case 'cities.43.34': return 'Tiberkanine';
			case 'cities.43.35': return 'Zeddine';
			case 'cities.44.0': return 'Ain Ben Khelil';
			case 'cities.44.1': return 'Ain Safra';
			case 'cities.44.2': return 'Assela';
			case 'cities.44.3': return 'Djeniane Bourzeg';
			case 'cities.44.4': return 'El Biod';
			case 'cities.44.5': return 'Kasdir';
			case 'cities.44.6': return 'Makman Ben Amer';
			case 'cities.44.7': return 'Mecheria';
			case 'cities.44.8': return 'Moghrar';
			case 'cities.44.9': return 'Naama';
			case 'cities.44.10': return 'Sfissifa';
			case 'cities.44.11': return 'Tiout';
			case 'cities.45.0': return 'Aghlal';
			case 'cities.45.1': return 'Ain El Arbaa';
			case 'cities.45.2': return 'Ain Kihal';
			case 'cities.45.3': return 'Ain Temouchent';
			case 'cities.45.4': return 'Ain Tolba';
			case 'cities.45.5': return 'Aoubellil';
			case 'cities.45.6': return 'Beni Saf';
			case 'cities.45.7': return 'Bouzedjar';
			case 'cities.45.8': return 'Chaabat El Ham';
			case 'cities.45.9': return 'Chentouf';
			case 'cities.45.10': return 'El Amria';
			case 'cities.45.11': return 'El Malah';
			case 'cities.45.12': return 'El Messaid';
			case 'cities.45.13': return 'Emir Abdelkader';
			case 'cities.45.14': return 'Hammam Bouhadjar';
			case 'cities.45.15': return 'Hassasna';
			case 'cities.45.16': return 'Hassi El Ghella';
			case 'cities.45.17': return 'Oued Berkeche';
			case 'cities.45.18': return 'Oued Sebbah';
			case 'cities.45.19': return 'Ouled Boudjemaa';
			case 'cities.45.20': return 'Ouled Kihal';
			case 'cities.45.21': return 'Oulhaca El Gheraba';
			case 'cities.45.22': return 'Sidi Ben Adda';
			case 'cities.45.23': return 'Sidi Boumediene';
			case 'cities.45.24': return 'Sidi Ouriache';
			case 'cities.45.25': return 'Sidi Safi';
			case 'cities.45.26': return 'Tamzoura';
			case 'cities.45.27': return 'Terga';
			case 'cities.46.0': return 'Berriane';
			case 'cities.46.1': return 'Bounoura';
			case 'cities.46.2': return 'Dhayet Bendhahoua';
			case 'cities.46.3': return 'El Atteuf';
			case 'cities.46.4': return 'El Guerrara';
			case 'cities.46.5': return 'Ghardaia';
			case 'cities.46.6': return 'Mansoura';
			case 'cities.46.7': return 'Metlili';
			case 'cities.46.8': return 'Sebseb';
			case 'cities.46.9': return 'Zelfana';
			case 'cities.47.0': return 'Ain Rahma';
			case 'cities.47.1': return 'Ain Tarek';
			case 'cities.47.2': return 'Ammi Moussa';
			case 'cities.47.3': return 'Belaassel Bouzagza';
			case 'cities.47.4': return 'Bendaoud';
			case 'cities.47.5': return 'Beni Dergoun';
			case 'cities.47.6': return 'Beni Zentis';
			case 'cities.47.7': return 'Dar Ben Abdelah';
			case 'cities.47.8': return 'Djidiouia';
			case 'cities.47.9': return 'El Guettar';
			case 'cities.47.10': return 'El H\'madna';
			case 'cities.47.11': return 'El Hassi';
			case 'cities.47.12': return 'El Matmar';
			case 'cities.47.13': return 'El Ouldja';
			case 'cities.47.14': return 'Had Echkalla';
			case 'cities.47.15': return 'Hamri';
			case 'cities.47.16': return 'Kalaa';
			case 'cities.47.17': return 'Lahlef';
			case 'cities.47.18': return 'Mazouna';
			case 'cities.47.19': return 'Mediouna';
			case 'cities.47.20': return 'Mendes';
			case 'cities.47.21': return 'Merdja Sidi Abed';
			case 'cities.47.22': return 'Ouarizane';
			case 'cities.47.23': return 'Oued El Djemaa';
			case 'cities.47.24': return 'Oued Essalem';
			case 'cities.47.25': return 'Oued Rhiou';
			case 'cities.47.26': return 'Ouled Aiche';
			case 'cities.47.27': return 'Ouled Sidi Mihoub';
			case 'cities.47.28': return 'Ramka';
			case 'cities.47.29': return 'Relizane';
			case 'cities.47.30': return 'Sidi Khettab';
			case 'cities.47.31': return 'Sidi Lazreg';
			case 'cities.47.32': return 'Sidi M\'hamed Benali';
			case 'cities.47.33': return 'Sidi M\'hamed Benaouda';
			case 'cities.47.34': return 'Sidi Saada';
			case 'cities.47.35': return 'Souk El Had';
			case 'cities.47.36': return 'Yellel';
			case 'cities.47.37': return 'Zemmoura';
			case 'cities.48.0': return 'Aougrout';
			case 'cities.48.1': return 'Charouine';
			case 'cities.48.2': return 'Deldoul';
			case 'cities.48.3': return 'Ksar Kaddour';
			case 'cities.48.4': return 'Metarfa';
			case 'cities.48.5': return 'Ouled Aissa';
			case 'cities.48.6': return 'Ouled Said';
			case 'cities.48.7': return 'Talmine';
			case 'cities.48.8': return 'Timimoun';
			case 'cities.48.9': return 'Tinerkouk';
			case 'cities.49.0': return 'Bordj Badji Mokhtar';
			case 'cities.49.1': return 'Timiaouine';
			case 'cities.50.0': return 'Besbes';
			case 'cities.50.1': return 'Chaiba';
			case 'cities.50.2': return 'Doucen';
			case 'cities.50.3': return 'Ouled Djellal';
			case 'cities.50.4': return 'Ras El Miad';
			case 'cities.50.5': return 'Sidi Khaled';
			case 'cities.51.0': return 'Beni Abbes';
			case 'cities.51.1': return 'Beni Ikhlef';
			case 'cities.51.2': return 'El Ouata';
			case 'cities.51.3': return 'Igli';
			case 'cities.51.4': return 'Kerzaz';
			case 'cities.51.5': return 'Ksabi';
			case 'cities.51.6': return 'Ouled Khoudir';
			case 'cities.51.7': return 'Tabelbala';
			case 'cities.51.8': return 'Tamtert';
			case 'cities.51.9': return 'Timoudi';
			case 'cities.52.0': return 'Foggaret Azzaouia';
			case 'cities.52.1': return 'In Ghar';
			case 'cities.52.2': return 'In Salah';
			case 'cities.53.0': return 'In Guezzam';
			case 'cities.53.1': return 'Tin Zouatine';
			case 'cities.54.0': return 'Benaceur';
			case 'cities.54.1': return 'Blidet Amor';
			case 'cities.54.2': return 'El Alia';
			case 'cities.54.3': return 'El Hadjira';
			case 'cities.54.4': return 'Megarine';
			case 'cities.54.5': return 'Mnaguer';
			case 'cities.54.6': return 'Nezla';
			case 'cities.54.7': return 'Sidi Slimane';
			case 'cities.54.8': return 'Taibet';
			case 'cities.54.9': return 'Tebesbest';
			case 'cities.54.10': return 'Temacine';
			case 'cities.54.11': return 'Touggourt';
			case 'cities.54.12': return 'Zaouia El Abidia';
			case 'cities.55.0': return 'Bordj El Haouasse';
			case 'cities.55.1': return 'Djanet';
			case 'cities.56.0': return 'Djamaa';
			case 'cities.56.1': return 'El M\'ghair';
			case 'cities.56.2': return 'Mrara';
			case 'cities.56.3': return 'Oum Touyour';
			case 'cities.56.4': return 'Sidi Amrane';
			case 'cities.56.5': return 'Sidi Khelil';
			case 'cities.56.6': return 'Still';
			case 'cities.56.7': return 'Tenedla';
			case 'cities.57.0': return 'El Meniaa';
			case 'cities.57.1': return 'Hassi Fehal';
			case 'cities.57.2': return 'Hassi Gara';
			default: return null;
		}
	}
}

extension on _StringsAr {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'appName': return 'تاجر فيف';
			case 'all': return 'الكل';
			case 'loadMore': return 'تحميل المزيد';
			case 'soon': return 'قريباً';
			case 'general.import': return 'استيراد';
			case 'general.export': return 'تصدير';
			case 'general.save': return 'حفظ';
			case 'general.cancel': return 'إلغاء';
			case 'general.edit': return 'تعديل';
			case 'general.preview': return 'معاينة';
			case 'general.update': return 'تحديث';
			case 'general.delete': return 'حذف';
			case 'general.add': return 'إضافة';
			case 'general.link': return 'رابط';
			case 'general.error': return 'خطأ';
			case 'general.refresh': return 'تحديث';
			case 'general.required': return 'مطلوب';
			case 'general.defaultCurrency.code': return 'دج';
			case 'general.defaultCurrency.symbol': return 'دج';
			case 'general.defaultCurrency.name': return 'دينار جزائري';
			case 'general.confirm': return 'تأكيد';
			case 'general.done': return 'تمت العملية بنجاح';
			case 'general.failed': return 'فشلت العملية';
			case 'general.views': return 'المشاهدات';
			case 'general.visits': return 'الزيارات';
			case 'general.submit': return 'إرسال';
			case 'general.shipping': return 'الشحن';
			case 'general.total': return 'المجموع';
			case 'general.control': return 'التحكم';
			case 'general.empty': return 'فارغة';
			case 'products.label': return 'المنتجات';
			case 'products.form.create': return 'إنشاء منتج';
			case 'products.form.name.label': return 'الاسم';
			case 'products.form.name.hint': return 'ادخل اسم المنتج';
			case 'products.form.title.label': return 'عنوان المنتج';
			case 'products.form.title.hint': return 'الاسم المعروف للعملاء، على سبيل المثال، الاسم المذكور على العبوة أو اسم السيارة من الشركة المصنعة.';
			case 'products.form.price.label': return 'السعر';
			case 'products.form.price.hint': return 'ادخل سعر المنتج';
			case 'products.form.quantity.label': return 'الكمية';
			case 'products.form.quantity.hint': return 'ادخل كمية المنتج';
			case 'products.form.sales.label': return 'المبيعات';
			case 'products.form.sales.hint': return 'ادخل مبيعات المنتج';
			case 'products.form.views.label': return 'المشاهدات';
			case 'products.form.views.hint': return 'ادخل مشاهدات المنتج';
			case 'products.form.images.label': return 'الصور';
			case 'products.form.images.hint': return 'تحميل صور المنتج';
			case 'products.fields.variants.label': return 'المتغيرات';
			case 'products.fields.variants.hint': return 'إضافة متغيرات المنتج';
			case 'products.fields.variants.helper': return 'متغيرات المنتج';
			case 'products.fields.variants.types.text': return 'نص';
			case 'products.fields.variants.types.image': return 'صورة';
			case 'products.fields.variants.types.color': return 'لون';
			case 'products.fields.name.label': return 'الاسم';
			case 'products.fields.name.hint': return 'ادخل اسم المنتج';
			case 'products.fields.name.helper': return 'اسم المنتج';
			case 'products.fields.title.label': return 'عنوان المنتج';
			case 'products.fields.title.hint': return 'الاسم المعروف للعملاء، على سبيل المثال، الاسم المذكور على العبوة أو اسم السيارة من الشركة المصنعة.';
			case 'products.fields.title.helper': return 'عنوان المنتج';
			case 'products.fields.price.label': return 'السعر';
			case 'products.fields.price.hint': return 'ادخل سعر المنتج';
			case 'products.fields.price.helper': return 'سعر المنتج';
			case 'products.fields.quantity.label': return 'الكمية';
			case 'products.fields.quantity.hint': return 'ادخل كمية المنتج';
			case 'products.fields.quantity.helper': return 'كمية المنتج';
			case 'products.fields.sales.label': return 'المبيعات';
			case 'products.fields.sales.hint': return 'ادخل مبيعات المنتج';
			case 'products.fields.sales.helper': return 'مبيعات المنتج';
			case 'products.fields.views.label': return 'المشاهدات';
			case 'products.fields.views.hint': return 'ادخل مشاهدات المنتج';
			case 'products.fields.views.helper': return 'مشاهدات المنتج';
			case 'products.fields.images.label': return 'الصور';
			case 'products.fields.images.hint': return 'تحميل صور المنتج';
			case 'products.fields.images.helper': return 'صور المنتج';
			case 'auth.user.alert.title': return 'الأمان والبيانات';
			case 'auth.user.alert.subtitle': return 'نلتزم بخصوصية بياناتك وأمانها في جميع عملياتنا.';
			case 'auth.user.personalInfo': return 'المعلومات الشخصية';
			case 'auth.user.securityAndSignin': return 'الأمان وتسجيل الدخول';
			case 'auth.user.signout': return 'تسجيل الخروج';
			case 'auth.forgotPassword': return 'نسيت كلمة المرور';
			case 'auth.resetPassword': return 'إعادة تعيين كلمة المرور';
			case 'auth.signin': return 'تسجيل الدخول';
			case 'auth.signup': return 'التسجيل';
			case 'auth.signout': return 'تسجيل الخروج';
			case 'auth.acceptTerms': return 'بالتسجيل، توافق على شروط الخدمة وسياسة الخصوصية.';
			case 'auth.acceptTermsValidation': return 'يجب قبول الشروط والأحكام.';
			case 'auth.dontHaveAnAccount': return 'ليس لديك حساب؟';
			case 'auth.alreadyHaveAnAccount': return 'لديك حساب بالفعل؟';
			case 'users.label': return 'المستخدمين';
			case 'users.form.create': return 'إنشاء مستخدم';
			case 'users.form.name.label': return 'الاسم';
			case 'users.form.name.hint': return 'ادخل اسم المستخدم';
			case 'users.form.email.label': return 'البريد الإلكتروني';
			case 'users.form.email.hint': return 'ادخل بريد المستخدم';
			case 'users.form.password.label': return 'كلمة المرور';
			case 'users.form.password.hint': return 'ادخل كلمة المرور للمستخدم';
			case 'users.fields.name.label': return 'الاسم';
			case 'users.fields.name.hint': return 'ادخل اسم المستخدم';
			case 'users.fields.name.helper': return 'اسم المستخدم';
			case 'users.fields.email.label': return 'البريد الإلكتروني';
			case 'users.fields.email.hint': return 'ادخل بريد المستخدم';
			case 'users.fields.email.helper': return 'بريد المستخدم';
			case 'users.fields.phone.label': return 'الهاتف';
			case 'users.fields.phone.hint': return 'ادخل هاتف المستخدم';
			case 'users.fields.phone.helper': return 'هاتف المستخدم';
			case 'users.fields.password.label': return 'كلمة المرور';
			case 'users.fields.password.hint': return 'ادخل كلمة المرور للمستخدم';
			case 'users.fields.password.helper': return 'كلمة المرور للمستخدم';
			case 'orders.status.draft': return 'مسودة';
			case 'orders.status.pending': return 'قيد الانتظار';
			case 'orders.status.processing': return 'قيد المعالجة';
			case 'orders.status.completed': return 'مكتمل';
			case 'orders.status.cancelled': return 'ملغى';
			case 'orders.label': return 'الطلبات';
			case 'orders.form.create': return 'إنشاء طلب';
			case 'orders.form.customer.label': return 'العميل';
			case 'orders.form.customer.hint': return 'اختر العميل';
			case 'orders.form.products.label': return 'المنتجات';
			case 'orders.form.products.hint': return 'اختر المنتجات';
			case 'orders.form.status.label': return 'الحالة';
			case 'orders.form.status.hint': return 'اختر حالة الطلب';
			case 'orders.fields.customerName.label': return 'اسم العميل';
			case 'orders.fields.customerName.hint': return 'أدخل اسم العميل';
			case 'orders.fields.customerName.helper': return 'اسم العميل';
			case 'orders.fields.customerPhone.label': return 'هاتف العميل';
			case 'orders.fields.customerPhone.hint': return 'أدخل هاتف العميل';
			case 'orders.fields.customerPhone.helper': return 'رقم هاتف العميل';
			case 'orders.fields.customerIp.label': return 'IP العميل';
			case 'orders.fields.customerIp.hint': return 'أدخل IP العميل';
			case 'orders.fields.customerIp.helper': return 'عنوان IP الخاص بالعميل';
			case 'orders.fields.customerNote.label': return 'ملاحظة العميل';
			case 'orders.fields.customerNote.hint': return 'أدخل ملاحظة العميل';
			case 'orders.fields.customerNote.helper': return 'ملاحظة إضافية من العميل';
			case 'orders.fields.privateNote.label': return 'ملاحظة خاصة';
			case 'orders.fields.privateNote.hint': return 'أدخل ملاحظة خاصة';
			case 'orders.fields.privateNote.helper': return 'ملاحظة داخلية للطلب';
			case 'orders.fields.shippingAddress.label': return 'عنوان الشحن';
			case 'orders.fields.shippingAddress.hint': return 'أدخل عنوان الشحن';
			case 'orders.fields.shippingAddress.helper': return 'العنوان لشحن الطلب';
			case 'orders.fields.shippingCity.label': return 'مدينة الشحن';
			case 'orders.fields.shippingCity.hint': return 'اختر مدينة الشحن';
			case 'orders.fields.shippingCity.helper': return 'المدينة لشحن الطلب';
			case 'orders.fields.shippingState.label': return 'ولاية الشحن';
			case 'orders.fields.shippingState.hint': return 'اختر ولاية الشحن';
			case 'orders.fields.shippingState.helper': return 'الولاية لشحن الطلب';
			case 'orders.fields.shippingMethodId.label': return 'معرف طريقة الشحن';
			case 'orders.fields.shippingMethodId.hint': return 'أدخل معرف طريقة الشحن';
			case 'orders.fields.shippingMethodId.helper': return 'معرف طريقة الشحن';
			case 'orders.fields.paymentMethodId.label': return 'معرف طريقة الدفع';
			case 'orders.fields.paymentMethodId.hint': return 'أدخل معرف طريقة الدفع';
			case 'orders.fields.paymentMethodId.helper': return 'معرف طريقة الدفع';
			case 'orders.fields.items.label': return 'العناصر';
			case 'orders.fields.items.hint': return 'اختر العناصر';
			case 'orders.fields.items.helper': return 'العناصر في الطلب';
			case 'orders.fields.subtotal.label': return 'المجموع الفرعي';
			case 'orders.fields.subtotal.hint': return 'أدخل المجموع الفرعي';
			case 'orders.fields.subtotal.helper': return 'المجموع الفرعي للطلب';
			case 'orders.fields.shippingPrice.label': return 'سعر الشحن';
			case 'orders.fields.shippingPrice.hint': return 'أدخل سعر الشحن';
			case 'orders.fields.shippingPrice.helper': return 'سعر شحن الطلب';
			case 'orders.fields.discount.label': return 'الخصم';
			case 'orders.fields.discount.hint': return 'أدخل الخصم';
			case 'orders.fields.discount.helper': return 'الخصم المطبق على الطلب';
			case 'orders.fields.coupon.label': return 'القسيمة';
			case 'orders.fields.coupon.hint': return 'أدخل القسيمة';
			case 'orders.fields.coupon.helper': return 'القسيمة المطبقة على الطلب';
			case 'orders.fields.storeId.label': return 'معرف المتجر';
			case 'orders.fields.storeId.hint': return 'أدخل معرف المتجر';
			case 'orders.fields.storeId.helper': return 'معرف المتجر';
			case 'orders.fields.metadata.label': return 'البيانات الوصفية';
			case 'orders.fields.metadata.hint': return 'أدخل البيانات الوصفية';
			case 'orders.fields.metadata.helper': return 'البيانات الوصفية الإضافية للطلب';
			case 'orders.fields.status.label': return 'الحالة';
			case 'orders.fields.status.hint': return 'اختر حالة الطلب';
			case 'orders.fields.status.helper': return 'حالة الطلب';
			case 'orders.fields.paymentStatus.label': return 'حالة الدفع';
			case 'orders.fields.paymentStatus.hint': return 'اختر حالة الدفع';
			case 'orders.fields.paymentStatus.helper': return 'حالة الدفع للطلب';
			case 'orders.fields.deliveryStatus.label': return 'حالة التسليم';
			case 'orders.fields.deliveryStatus.hint': return 'اختر حالة التسليم';
			case 'orders.fields.deliveryStatus.helper': return 'حالة تسليم الطلب';
			case 'orders.fields.createdAt.label': return 'تاريخ الإنشاء';
			case 'orders.fields.createdAt.hint': return 'أدخل تاريخ الإنشاء';
			case 'orders.fields.createdAt.helper': return 'تاريخ ووقت إنشاء الطلب';
			case 'orders.fields.updatedAt.label': return 'تاريخ التحديث';
			case 'orders.fields.updatedAt.hint': return 'أدخل تاريخ التحديث';
			case 'orders.fields.updatedAt.helper': return 'تاريخ ووقت آخر تحديث للطلب';
			case 'orders.fields.manualTotal.label': return 'المجموع اليدوي';
			case 'orders.fields.manualTotal.hint': return 'أدخل المجموع اليدوي';
			case 'orders.fields.manualTotal.helper': return 'المجموع المحسوب يدويًا للطلب';
			case 'orders.fields.calculatedTotal.label': return 'المجموع المحسوب';
			case 'orders.fields.calculatedTotal.hint': return 'أدخل المجموع المحسوب';
			case 'orders.fields.calculatedTotal.helper': return 'المجموع المحسوب تلقائيًا للطلب';
			case 'orders.fields.total.label': return 'المجموع';
			case 'orders.fields.total.hint': return 'أدخل المجموع';
			case 'orders.fields.total.helper': return 'المجموع الكلي للطلب';
			case 'stores.label': return 'المتاجر';
			case 'stores.myStores': return 'متاجري';
			case 'stores.form.create': return 'إنشاء متجر';
			case 'stores.form.storeNameExample': return 'مثال: متجري';
			case 'stores.fields.name.label': return 'الاسم';
			case 'stores.fields.name.hint': return 'ادخل اسم المتجر';
			case 'stores.fields.name.helper': return 'اسم متجرك';
			case 'stores.fields.title.label': return 'العنوان';
			case 'stores.fields.title.hint': return 'ادخل عنوان المتجر';
			case 'stores.fields.title.helper': return 'عنوان متجرك';
			case 'stores.fields.description.label': return 'الوصف';
			case 'stores.fields.description.hint': return 'ادخل وصف المتجر';
			case 'stores.fields.description.helper': return 'وصف متجرك';
			case 'stores.fields.color.label': return 'اللون';
			case 'stores.fields.color.hint': return 'اختر لون المتجر';
			case 'stores.fields.color.helper': return 'لون متجرك';
			case 'stores.fields.slug.label': return 'الرابط';
			case 'stores.fields.slug.hint': return 'ادخل رابط المتجر';
			case 'stores.fields.slug.helper': return 'الرابط هو الجزء الفرعي من متجرك';
			case 'stores.fields.slug.validation': return 'يجب أن يكون الرابط باللغة الإنجليزية ويحتوي فقط على حروف صغيرة وأرقام وشرطات';
			case 'dashboard.welcomeUser': return 'مرحبا، ';
			case 'dashboard.title': return 'لوحة التحكم';
			case 'dashboard.sections.overview.label': return 'نظرة عامة';
			case 'dashboard.sections.overview.statistics': return 'إحصائيات';
			case 'dashboard.sections.overview.quickLinks.label': return 'روابط سريعة';
			case 'dashboard.sections.overview.quickLinks.addProduct': return 'إضافة منتج';
			case 'dashboard.sections.overview.quickLinks.abandonedCarts': return 'سلات مهجورة';
			case 'dashboard.sections.overview.quickLinks.changeTheme': return 'تغيير السمة';
			case 'dashboard.sections.overview.quickLinks.storeSettings': return 'إعدادات المتجر';
			case 'dashboard.sections.overview.recentOrders.label': return 'الطلبات الأخيرة';
			case 'dashboard.sections.overview.recentOrders.viewAll': return 'عرض الكل';
			case 'dashboard.sections.overview.recentCustomers.label': return 'العملاء الأخيرين';
			case 'dashboard.sections.overview.recentCustomers.viewAll': return 'عرض الكل';
			case 'dashboard.sections.orders.label': return 'الطلبات';
			case 'dashboard.sections.orders.search': return 'بحث الطلبات';
			case 'dashboard.sections.orders.addOrder': return 'إضافة طلب';
			case 'dashboard.sections.pos.label': return 'نقطة البيع';
			case 'dashboard.sections.products.label': return 'المنتجات';
			case 'dashboard.sections.products.search': return 'بحث المنتجات';
			case 'dashboard.sections.products.addProduct': return 'إضافة منتج';
			case 'dashboard.sections.products.product': return 'المنتج';
			case 'dashboard.sections.products.price': return 'السعر';
			case 'dashboard.sections.products.quantity': return 'الكمية';
			case 'dashboard.sections.products.sales': return 'المبيعات';
			case 'dashboard.sections.products.views': return 'المشاهدات';
			case 'dashboard.sections.products.images': return 'الصور';
			case 'dashboard.sections.products.form.name.label': return 'الاسم';
			case 'dashboard.sections.products.form.name.hint': return 'ادخل اسم المنتج';
			case 'dashboard.sections.products.form.title.label': return 'عنوان المنتج';
			case 'dashboard.sections.products.form.title.hint': return 'الاسم المعروف للعملاء، مثل الاسم المذكور على العبوة أو اسم السيارة من الشركة المصنعة.';
			case 'dashboard.sections.customers.label': return 'العملاء';
			case 'dashboard.sections.customers.search': return 'بحث العملاء';
			case 'dashboard.sections.customers.addCustomer': return 'إضافة عميل';
			case 'dashboard.sections.theme.label': return 'السمة';
			case 'dashboard.sections.theme.customize': return 'تخصيص';
			case 'dashboard.sections.theme.install': return 'تثبيت السمة';
			case 'dashboard.sections.theme.settings': return 'إعدادات السمة';
			case 'dashboard.sections.shipping.label': return 'الشحن';
			case 'dashboard.sections.shipping.shippingPrices': return 'أسعار الشحن';
			case 'dashboard.sections.shipping.note.title': return 'إرشادات التسعير';
			case 'dashboard.sections.shipping.note.subtitle': return 'ترك الحقل فارغًا يعني عدم توفر التوصيل، وإدخال الرقم صفر 0 يعني التوصيل مجاني.';
			case 'dashboard.sections.shipping.toDesk': return 'إلى المكتب';
			case 'dashboard.sections.shipping.toHome': return 'إلى المنزل';
			case 'dashboard.sections.shipping.state': return 'الولاية';
			case 'dashboard.sections.shipping.city': return 'المدينة';
			case 'dashboard.sections.integrations.label': return 'التكاملات';
			case 'dashboard.sections.integrations.paymentGateways': return 'بوابات الدفع';
			case 'dashboard.sections.integrations.shippingProviders': return 'مزودي الشحن';
			case 'dashboard.sections.settings.label': return 'الإعدادات';
			case 'dashboard.sections.settings.storeSettings': return 'إعدادات المتجر';
			case 'dashboard.sections.settings.userSettings': return 'إعدادات المستخدم';
			case 'dashboard.sections.settings.billing': return 'الفوترة';
			case 'dashboard.sections.settings.plans': return 'الخطط';
			case 'dashboard.sections.expandMenu': return 'توسيع القائمة';
			case 'dashboard.sections.collapseMenu': return 'طي القائمة';
			case 'states.0': return 'أدرار';
			case 'states.1': return 'الشلف';
			case 'states.2': return 'الأغواط';
			case 'states.3': return 'أم البواقي';
			case 'states.4': return 'باتنة';
			case 'states.5': return 'بجاية';
			case 'states.6': return 'بسكرة';
			case 'states.7': return 'بشار';
			case 'states.8': return 'البليدة';
			case 'states.9': return 'البويرة';
			case 'states.10': return 'تمنراست';
			case 'states.11': return 'تبسة';
			case 'states.12': return 'تلمسان';
			case 'states.13': return 'تيارت';
			case 'states.14': return 'تيزي وزو';
			case 'states.15': return 'الجزائر';
			case 'states.16': return 'الجلفة';
			case 'states.17': return 'جيجل';
			case 'states.18': return 'سطيف';
			case 'states.19': return 'سعيدة';
			case 'states.20': return 'سكيكدة';
			case 'states.21': return 'سيدي بلعباس';
			case 'states.22': return 'عنابة';
			case 'states.23': return 'قالمة';
			case 'states.24': return 'قسنطينة';
			case 'states.25': return 'المدية';
			case 'states.26': return 'مستغانم';
			case 'states.27': return 'المسيلة';
			case 'states.28': return 'معسكر';
			case 'states.29': return 'ورقلة';
			case 'states.30': return 'وهران';
			case 'states.31': return 'البيض';
			case 'states.32': return 'اليزي';
			case 'states.33': return 'برج بوعريريج';
			case 'states.34': return 'بومرداس';
			case 'states.35': return 'الطارف';
			case 'states.36': return 'تندوف';
			case 'states.37': return 'تيسمسيلت';
			case 'states.38': return 'الوادي';
			case 'states.39': return 'خنشلة';
			case 'states.40': return 'سوق أهراس';
			case 'states.41': return 'تيبازة';
			case 'states.42': return 'ميلة';
			case 'states.43': return 'عين الدفلى';
			case 'states.44': return 'النعامة';
			case 'states.45': return 'عين تموشنت';
			case 'states.46': return 'غرداية';
			case 'states.47': return 'غليزان';
			case 'states.48': return 'تميمون';
			case 'states.49': return 'برج بادية مختار';
			case 'states.50': return 'أولاد جلال';
			case 'states.51': return 'بني عباس';
			case 'states.52': return 'إن صالح';
			case 'states.53': return 'إن قزام';
			case 'states.54': return 'تقارت';
			case 'states.55': return 'جانت';
			case 'states.56': return 'المقاير';
			case 'states.57': return 'المنيعة';
			case 'cities.0.0': return 'أدرار';
			case 'cities.0.1': return 'أقابلي';
			case 'cities.0.2': return 'أولف';
			case 'cities.0.3': return 'بودة';
			case 'cities.0.4': return 'فنوجيل';
			case 'cities.0.5': return 'إن زغمير';
			case 'cities.0.6': return 'أولاد أحمد تيمي';
			case 'cities.0.7': return 'رقان';
			case 'cities.0.8': return 'سالي';
			case 'cities.0.9': return 'سبع';
			case 'cities.0.10': return 'تمنطيط';
			case 'cities.0.11': return 'تمست';
			case 'cities.0.12': return 'تيماكتين';
			case 'cities.0.13': return 'تِيت';
			case 'cities.0.14': return 'تسابيت';
			case 'cities.0.15': return 'زاوية كنتة';
			case 'cities.1.0': return 'أبو الحسن';
			case 'cities.1.1': return 'عين مران';
			case 'cities.1.2': return 'بنارية';
			case 'cities.1.3': return 'بني بوعتاب';
			case 'cities.1.4': return 'بني حواء';
			case 'cities.1.5': return 'بني راشد';
			case 'cities.1.6': return 'بوقادير';
			case 'cities.1.7': return 'بوزغاية';
			case 'cities.1.8': return 'بريحرة';
			case 'cities.1.9': return 'الشطية';
			case 'cities.1.10': return 'الشلف';
			case 'cities.1.11': return 'الظهرة';
			case 'cities.1.12': return 'الحجاج';
			case 'cities.1.13': return 'الكريمية';
			case 'cities.1.14': return 'المرسى';
			case 'cities.1.15': return 'حرشون';
			case 'cities.1.16': return 'هريفة';
			case 'cities.1.17': return 'الأبيض مجاجة';
			case 'cities.1.18': return 'مصدق';
			case 'cities.1.19': return 'وادي الفضة';
			case 'cities.1.20': return 'وادي قوسين';
			case 'cities.1.21': return 'وادي سلي';
			case 'cities.1.22': return 'أولاد عباس';
			case 'cities.1.23': return 'أولاد بن عبد القادر';
			case 'cities.1.24': return 'أولاد فارس';
			case 'cities.1.25': return 'أم الدروع';
			case 'cities.1.26': return 'سنجاس';
			case 'cities.1.27': return 'سيدي عبد الرحمن';
			case 'cities.1.28': return 'سيدي عكاشة';
			case 'cities.1.29': return 'صُبْحة';
			case 'cities.1.30': return 'تاجنة';
			case 'cities.1.31': return 'طلاس';
			case 'cities.1.32': return 'تاقرغريت';
			case 'cities.1.33': return 'تنَس';
			case 'cities.1.34': return 'زبوجة';
			case 'cities.2.0': return 'أفلو';
			case 'cities.2.1': return 'عين مهدي';
			case 'cities.2.2': return 'عين سيدي علي';
			case 'cities.2.3': return 'بيضاء';
			case 'cities.2.4': return 'بن ناصر بن شورة';
			case 'cities.2.5': return 'بريضة';
			case 'cities.2.6': return 'العصفية';
			case 'cities.2.7': return 'الغيشة';
			case 'cities.2.8': return 'الحويطة';
			case 'cities.2.9': return 'قلتة سيدي سعد';
			case 'cities.2.10': return 'حاج مشري';
			case 'cities.2.11': return 'حاسي دلاعة';
			case 'cities.2.12': return 'حاسي الرمل';
			case 'cities.2.13': return 'خنق';
			case 'cities.2.14': return 'قصر الحيران';
			case 'cities.2.15': return 'الأغواط';
			case 'cities.2.16': return 'وادي مزي';
			case 'cities.2.17': return 'وادي مرة';
			case 'cities.2.18': return 'سبقاق';
			case 'cities.2.19': return 'سيدي بوزيد';
			case 'cities.2.20': return 'سيدي مخلوف';
			case 'cities.2.21': return 'تاجموت';
			case 'cities.2.22': return 'تاجنونة';
			case 'cities.2.23': return 'تاويالة';
			case 'cities.3.0': return 'عين بابوش';
			case 'cities.3.1': return 'عين البيضاء';
			case 'cities.3.2': return 'عين ديس';
			case 'cities.3.3': return 'عين فكرون';
			case 'cities.3.4': return 'عين كرشة';
			case 'cities.3.5': return 'عين مليلة';
			case 'cities.3.6': return 'عين الزيتون';
			case 'cities.3.7': return 'بئر الشرقي';
			case 'cities.3.8': return 'بريش';
			case 'cities.3.9': return 'بئر الشهداء';
			case 'cities.3.10': return 'دلالة';
			case 'cities.3.11': return 'الأميرية';
			case 'cities.3.12': return 'البلالة';
			case 'cities.3.13': return 'الجازية';
			case 'cities.3.14': return 'الفجوج بوقرارة سعد';
			case 'cities.3.15': return 'الحرملية';
			case 'cities.3.16': return 'فكيرينة';
			case 'cities.3.17': return 'هنشير تومغاني';
			case 'cities.3.18': return 'قصر الصباحي';
			case 'cities.3.19': return 'مسكيانة';
			case 'cities.3.20': return 'وادي نيني';
			case 'cities.3.21': return 'أولاد قاسم';
			case 'cities.3.22': return 'أولاد حملة';
			case 'cities.3.23': return 'أولاد زواي';
			case 'cities.3.24': return 'أم البواقي';
			case 'cities.3.25': return 'راحية';
			case 'cities.3.26': return 'سيقوس';
			case 'cities.3.27': return 'سوق نعمان';
			case 'cities.3.28': return 'زروق';
			case 'cities.4.0': return 'عين جاسر';
			case 'cities.4.1': return 'عين توتة';
			case 'cities.4.2': return 'عين ياقوت';
			case 'cities.4.3': return 'آريس';
			case 'cities.4.4': return 'عزيل عبد القادر';
			case 'cities.4.5': return 'بريكة';
			case 'cities.4.6': return 'باتنة';
			case 'cities.4.7': return 'بني فوضالة الحقانية';
			case 'cities.4.8': return 'بيطام';
			case 'cities.4.9': return 'بولحيلات';
			case 'cities.4.10': return 'بومقر';
			case 'cities.4.11': return 'بومية';
			case 'cities.4.12': return 'بوزينة';
			case 'cities.4.13': return 'شمرة';
			case 'cities.4.14': return 'شير';
			case 'cities.4.15': return 'جرمة';
			case 'cities.4.16': return 'جزار';
			case 'cities.4.17': return 'الحاسي';
			case 'cities.4.18': return 'المعذر';
			case 'cities.4.19': return 'فسديس';
			case 'cities.4.20': return 'فم الطوب';
			case 'cities.4.21': return 'غسيرة';
			case 'cities.4.22': return 'قصر بوحمرة';
			case 'cities.4.23': return 'كسبات';
			case 'cities.4.24': return 'غيغبة';
			case 'cities.4.25': return 'حيذوسة';
			case 'cities.4.26': return 'إشمول';
			case 'cities.4.27': return 'إينوغيسن';
			case 'cities.4.28': return 'كيميل';
			case 'cities.4.29': return 'قصر بلزمة';
			case 'cities.4.30': return 'لاربعاء';
			case 'cities.4.31': return 'لازرو';
			case 'cities.4.32': return 'اليمسان';
			case 'cities.4.33': return 'مدوكال';
			case 'cities.4.34': return 'معافة';
			case 'cities.4.35': return 'منعة';
			case 'cities.4.36': return 'مروانة';
			case 'cities.4.37': return 'نقاوس';
			case 'cities.4.38': return 'وادي شعبة';
			case 'cities.4.39': return 'وادي الماء';
			case 'cities.4.40': return 'وادي الطاقة';
			case 'cities.4.41': return 'أولاد عمار';
			case 'cities.4.42': return 'أولاد عوف';
			case 'cities.4.43': return 'أولاد فاضل';
			case 'cities.4.44': return 'أولاد سلام';
			case 'cities.4.45': return 'أولاد سيدي سليمان';
			case 'cities.4.46': return 'عيون العصافير';
			case 'cities.4.47': return 'رحبات';
			case 'cities.4.48': return 'رأس العيون';
			case 'cities.4.49': return 'سفيان';
			case 'cities.4.50': return 'سقانة';
			case 'cities.4.51': return 'سريانة';
			case 'cities.4.52': return 'تكوت';
			case 'cities.4.53': return 'تالكهمت';
			case 'cities.4.54': return 'تاكسلانت';
			case 'cities.4.55': return 'تازولت';
			case 'cities.4.56': return 'تنَيت العابد';
			case 'cities.4.57': return 'تيغنمين';
			case 'cities.4.58': return 'تيغرغر';
			case 'cities.4.59': return 'تيلاتوة';
			case 'cities.4.60': return 'تيمقاد';
			case 'cities.4.61': return 'زانة البيضاء';
			case 'cities.5.0': return 'أدكار';
			case 'cities.5.1': return 'آيت رزين';
			case 'cities.5.2': return 'آيت إسماعيل';
			case 'cities.5.3': return 'أقبو';
			case 'cities.5.4': return 'أقافدوا';
			case 'cities.5.5': return 'أمالو';
			case 'cities.5.6': return 'أميزور';
			case 'cities.5.7': return 'أوقاس';
			case 'cities.5.8': return 'برباشة';
			case 'cities.5.9': return 'بجاية';
			case 'cities.5.10': return 'بني جليل';
			case 'cities.5.11': return 'بني كسيلة';
			case 'cities.5.12': return 'بني مليكش';
			case 'cities.5.13': return 'بني معوش';
			case 'cities.5.14': return 'بودجليل';
			case 'cities.5.15': return 'بوحمزة';
			case 'cities.5.16': return 'بوخليفة';
			case 'cities.5.17': return 'شلاتة';
			case 'cities.5.18': return 'شميني';
			case 'cities.5.19': return 'درقينة';
			case 'cities.5.20': return 'ذراع القايد';
			case 'cities.5.21': return 'القصور';
			case 'cities.5.22': return 'فناية الماثن';
			case 'cities.5.23': return 'فرعون';
			case 'cities.5.24': return 'إغيل علي';
			case 'cities.5.25': return 'إغرم';
			case 'cities.5.26': return 'كنديرة';
			case 'cities.5.27': return 'خراطة';
			case 'cities.5.28': return 'لفلاي';
			case 'cities.5.29': return 'ميسة';
			case 'cities.5.30': return 'ملبو';
			case 'cities.5.31': return 'وادي غير';
			case 'cities.5.32': return 'أوزلاقن';
			case 'cities.5.33': return 'صدوق';
			case 'cities.5.34': return 'سيدي عيش';
			case 'cities.5.35': return 'سيدي عياد';
			case 'cities.5.36': return 'سماعون';
			case 'cities.5.37': return 'سوق الاثنين';
			case 'cities.5.38': return 'سوق اوفلا';
			case 'cities.5.39': return 'تالة حمزة';
			case 'cities.5.40': return 'تمقرة';
			case 'cities.5.41': return 'تمريجت';
			case 'cities.5.42': return 'تاوريرت إغيل';
			case 'cities.5.43': return 'تاسكريوت';
			case 'cities.5.44': return 'تازمالت';
			case 'cities.5.45': return 'تيبان';
			case 'cities.5.46': return 'تيشي';
			case 'cities.5.47': return 'تيفرة';
			case 'cities.5.48': return 'تيمزريت';
			case 'cities.5.49': return 'تينبدار';
			case 'cities.5.50': return 'تيزي نبربر';
			case 'cities.5.51': return 'توجة';
			case 'cities.6.0': return 'عين ناقة';
			case 'cities.6.1': return 'عين زعطوط';
			case 'cities.6.2': return 'بسكرة';
			case 'cities.6.3': return 'برج بن عزوز';
			case 'cities.6.4': return 'بوشقرون';
			case 'cities.6.5': return 'برانس';
			case 'cities.6.6': return 'شتمة';
			case 'cities.6.7': return 'جمورة';
			case 'cities.6.8': return 'الفيض';
			case 'cities.6.9': return 'الغروس';
			case 'cities.6.10': return 'الحاجب';
			case 'cities.6.11': return 'الحوش';
			case 'cities.6.12': return 'القنطرة';
			case 'cities.6.13': return 'الوطاية';
			case 'cities.6.14': return 'فوغالة';
			case 'cities.6.15': return 'خنقة سيدي ناجي';
			case 'cities.6.16': return 'ليشانة';
			case 'cities.6.17': return 'ليوة';
			case 'cities.6.18': return 'مشونش';
			case 'cities.6.19': return 'مليلي';
			case 'cities.6.20': return 'مخادمة';
			case 'cities.6.21': return 'مزرعة';
			case 'cities.6.22': return 'أوماش';
			case 'cities.6.23': return 'أورلال';
			case 'cities.6.24': return 'سيدي عقبة';
			case 'cities.6.25': return 'طولقة';
			case 'cities.6.26': return 'زريبة الوادي';
			case 'cities.7.0': return 'عبادلة';
			case 'cities.7.1': return 'بشار';
			case 'cities.7.2': return 'بني ونيف';
			case 'cities.7.3': return 'بوقايس';
			case 'cities.7.4': return 'عرق فراج';
			case 'cities.7.5': return 'قنادسة';
			case 'cities.7.6': return 'لحمر';
			case 'cities.7.7': return 'مشرع الحاج بومدين';
			case 'cities.7.8': return 'مريجة';
			case 'cities.7.9': return 'مغول';
			case 'cities.7.10': return 'تاغيت';
			case 'cities.8.0': return 'عين الرومانة';
			case 'cities.8.1': return 'بني مراد';
			case 'cities.8.2': return 'بني تامو';
			case 'cities.8.3': return 'بن خليل';
			case 'cities.8.4': return 'البليدة';
			case 'cities.8.5': return 'بوعرفة';
			case 'cities.8.6': return 'بوفاريك';
			case 'cities.8.7': return 'بوقارة';
			case 'cities.8.8': return 'بوعينان';
			case 'cities.8.9': return 'الشبلي';
			case 'cities.8.10': return 'الشفة';
			case 'cities.8.11': return 'شريعة';
			case 'cities.8.12': return 'جبابرة';
			case 'cities.8.13': return 'العفرون';
			case 'cities.8.14': return 'قرواو';
			case 'cities.8.15': return 'حمام ملوان';
			case 'cities.8.16': return 'الأربعاء';
			case 'cities.8.17': return 'مفتاح';
			case 'cities.8.18': return 'موزاية';
			case 'cities.8.19': return 'واد جر';
			case 'cities.8.20': return 'واد العللوج';
			case 'cities.8.21': return 'أولاد سلامة';
			case 'cities.8.22': return 'أولاد يعيش';
			case 'cities.8.23': return 'سهان';
			case 'cities.8.24': return 'سومة';
			case 'cities.9.0': return 'أغبالو';
			case 'cities.9.1': return 'أهل القصر';
			case 'cities.9.2': return 'عين بسام';
			case 'cities.9.3': return 'عين الحجر';
			case 'cities.9.4': return 'عين لالوي';
			case 'cities.9.5': return 'عين ترك';
			case 'cities.9.6': return 'أيت لعزيز';
			case 'cities.9.7': return 'عمر';
			case 'cities.9.8': return 'بشلول';
			case 'cities.9.9': return 'بير غبالو';
			case 'cities.9.10': return 'برج أخريص';
			case 'cities.9.11': return 'بوضربالة';
			case 'cities.9.12': return 'البويرة';
			case 'cities.9.13': return 'بوكرام';
			case 'cities.9.14': return 'الشرفة';
			case 'cities.9.15': return 'الدشمية';
			case 'cities.9.16': return 'ديرة';
			case 'cities.9.17': return 'جباحية';
			case 'cities.9.18': return 'العجيبة';
			case 'cities.9.19': return 'الأصنام';
			case 'cities.9.20': return 'الحشيمية';
			case 'cities.9.21': return 'الحكيمية';
			case 'cities.9.22': return 'الخبوزية';
			case 'cities.9.23': return 'المقراني';
			case 'cities.9.24': return 'قرومة';
			case 'cities.9.25': return 'حجيرة زرقا';
			case 'cities.9.26': return 'حايزر';
			case 'cities.9.27': return 'حنيف';
			case 'cities.9.28': return 'القادرية';
			case 'cities.9.29': return 'لخضرية';
			case 'cities.9.30': return 'م شدالله';
			case 'cities.9.31': return 'معلى';
			case 'cities.9.32': return 'مامورة';
			case 'cities.9.33': return 'مزدور';
			case 'cities.9.34': return 'واد البردي';
			case 'cities.9.35': return 'أولاد راشد';
			case 'cities.9.36': return 'روراوة';
			case 'cities.9.37': return 'ريدان';
			case 'cities.9.38': return 'سحاريج';
			case 'cities.9.39': return 'سوق الخميس';
			case 'cities.9.40': return 'سور الغزلان';
			case 'cities.9.41': return 'تاغزوت';
			case 'cities.9.42': return 'تاغديت';
			case 'cities.9.43': return 'تاوريرت';
			case 'cities.9.44': return 'زبربر';
			case 'cities.10.0': return 'عبالسة';
			case 'cities.10.1': return 'عين أمقل';
			case 'cities.10.2': return 'إدلس';
			case 'cities.10.3': return 'تمنراست';
			case 'cities.10.4': return 'تازروك';
			case 'cities.11.0': return 'عين الزرقاء';
			case 'cities.11.1': return 'بجن';
			case 'cities.11.2': return 'بكارية';
			case 'cities.11.3': return 'بئر الذهب';
			case 'cities.11.4': return 'بئر العاتر';
			case 'cities.11.5': return 'بئر مقادم';
			case 'cities.11.6': return 'بوخضرة';
			case 'cities.11.7': return 'بولحاف دير';
			case 'cities.11.8': return 'الشريعة';
			case 'cities.11.9': return 'العوينات';
			case 'cities.11.10': return 'الحويجة بت';
			case 'cities.11.11': return 'الكويف';
			case 'cities.11.12': return 'الملابيود';
			case 'cities.11.13': return 'المريج';
			case 'cities.11.14': return 'المزيرعة';
			case 'cities.11.15': return 'العقلة';
			case 'cities.11.16': return 'العقلة المالحة';
			case 'cities.11.17': return 'فرقان';
			case 'cities.11.18': return 'جوريغير';
			case 'cities.11.19': return 'حماميت';
			case 'cities.11.20': return 'مرصوط';
			case 'cities.11.21': return 'نقرين';
			case 'cities.11.22': return 'وزان';
			case 'cities.11.23': return 'أم علي';
			case 'cities.11.24': return 'صفصف الوسرة';
			case 'cities.11.25': return 'ستة غنتيس';
			case 'cities.11.26': return 'تبسة';
			case 'cities.11.27': return 'تليجان';
			case 'cities.12.0': return 'عين فتاح';
			case 'cities.12.1': return 'عين فزة';
			case 'cities.12.2': return 'عين غرابة';
			case 'cities.12.3': return 'عين كبيرة';
			case 'cities.12.4': return 'عين نهالة';
			case 'cities.12.5': return 'عين تالوت';
			case 'cities.12.6': return 'عين يوسف';
			case 'cities.12.7': return 'أميور';
			case 'cities.12.8': return 'أزائل';
			case 'cities.12.9': return 'باب العسة';
			case 'cities.12.10': return 'بني بحدل';
			case 'cities.12.11': return 'بني بوسعيد';
			case 'cities.12.12': return 'بني خالد';
			case 'cities.12.13': return 'بني مستر';
			case 'cities.12.14': return 'بني ورسوس';
			case 'cities.12.15': return 'بني سميل';
			case 'cities.12.16': return 'بني سنوس';
			case 'cities.12.17': return 'بن سكران';
			case 'cities.12.18': return 'بوحلو';
			case 'cities.12.19': return 'بويحي';
			case 'cities.12.20': return 'شتوان';
			case 'cities.12.21': return 'دار ياغموراسين';
			case 'cities.12.22': return 'جبالة';
			case 'cities.12.23': return 'العريشة';
			case 'cities.12.24': return 'الفحول';
			case 'cities.12.25': return 'الجور';
			case 'cities.12.26': return 'فلاوسن';
			case 'cities.12.27': return 'غزاوت';
			case 'cities.12.28': return 'حمام بوغرارة';
			case 'cities.12.29': return 'الحناية';
			case 'cities.12.30': return 'الحنين';
			case 'cities.12.31': return 'مغنية';
			case 'cities.12.32': return 'منصورة';
			case 'cities.12.33': return 'مرسى بن مهيدي';
			case 'cities.12.34': return 'مسيردة فوقة';
			case 'cities.12.35': return 'ندرومة';
			case 'cities.12.36': return 'واد شولي';
			case 'cities.12.37': return 'أولاد ميمون';
			case 'cities.12.38': return 'أولاد رياح';
			case 'cities.12.39': return 'رمشي';
			case 'cities.12.40': return 'صبرة';
			case 'cities.12.41': return 'سبعة شيوخ';
			case 'cities.12.42': return 'سبدو';
			case 'cities.12.43': return 'سيدي عبد الله';
			case 'cities.12.44': return 'سيدي جلالي';
			case 'cities.12.45': return 'سيدي مجاهد';
			case 'cities.12.46': return 'سوحالية';
			case 'cities.12.47': return 'سواني';
			case 'cities.12.48': return 'سوق تلتة';
			case 'cities.12.49': return 'تيرني بني حديل';
			case 'cities.12.50': return 'تيانات';
			case 'cities.12.51': return 'تلمسان';
			case 'cities.12.52': return 'زناتة';
			case 'cities.13.0': return 'عين بوشقيف';
			case 'cities.13.1': return 'عين الدهب';
			case 'cities.13.2': return 'عين الحديد';
			case 'cities.13.3': return 'عين كرمس';
			case 'cities.13.4': return 'عين زريت';
			case 'cities.13.5': return 'بوقارة';
			case 'cities.13.6': return 'الشحايمة';
			case 'cities.13.7': return 'دحموني';
			case 'cities.13.8': return 'جبلت رصفة';
			case 'cities.13.9': return 'جلالي بن عمار';
			case 'cities.13.10': return 'فايجة';
			case 'cities.13.11': return 'فرندة';
			case 'cities.13.12': return 'قرطوفة';
			case 'cities.13.13': return 'حمادية';
			case 'cities.13.14': return 'قصر شلالة';
			case 'cities.13.15': return 'مدنة';
			case 'cities.13.16': return 'مهدية';
			case 'cities.13.17': return 'مشرع صفا';
			case 'cities.13.18': return 'مدريسة';
			case 'cities.13.19': return 'مدروسة';
			case 'cities.13.20': return 'مغيلة';
			case 'cities.13.21': return 'ملكو';
			case 'cities.13.22': return 'ناضورة';
			case 'cities.13.23': return 'نعيمة';
			case 'cities.13.24': return 'واد الليلي';
			case 'cities.13.25': return 'رحوية';
			case 'cities.13.26': return 'رشايقة';
			case 'cities.13.27': return 'سبعين';
			case 'cities.13.28': return 'سبت';
			case 'cities.13.29': return 'سرغين';
			case 'cities.13.30': return 'سي عبد الغني';
			case 'cities.13.31': return 'سيدي عبد الرحمن';
			case 'cities.13.32': return 'سيدي علي ملال';
			case 'cities.13.33': return 'سيدي بختي';
			case 'cities.13.34': return 'سيدي حسني';
			case 'cities.13.35': return 'سوقر';
			case 'cities.13.36': return 'تقدمت';
			case 'cities.13.37': return 'تخمارت';
			case 'cities.13.38': return 'تيارت';
			case 'cities.13.39': return 'تيدة';
			case 'cities.13.40': return 'توصنينة';
			case 'cities.13.41': return 'زمالة الأمير عبد القادر';
			case 'cities.14.0': return 'أبي يوسف';
			case 'cities.14.1': return 'أغريبس';
			case 'cities.14.2': return 'أغوني غغران';
			case 'cities.14.3': return 'عين الحمام';
			case 'cities.14.4': return 'عين زاوية';
			case 'cities.14.5': return 'أيت أغواشة';
			case 'cities.14.6': return 'أيت بوعدو';
			case 'cities.14.7': return 'أيت بومهدي';
			case 'cities.14.8': return 'أيت شفاء';
			case 'cities.14.9': return 'أيت خليلي';
			case 'cities.14.10': return 'أيت محمود';
			case 'cities.14.11': return 'أيت أومالو';
			case 'cities.14.12': return 'أيت تودرت';
			case 'cities.14.13': return 'أيت يحيى';
			case 'cities.14.14': return 'أيت يحيى موسى';
			case 'cities.14.15': return 'أكبيل';
			case 'cities.14.16': return 'أكرو';
			case 'cities.14.17': return 'عسي يوسف';
			case 'cities.14.18': return 'أزازقة';
			case 'cities.14.19': return 'أزفون';
			case 'cities.14.20': return 'بني عيسى';
			case 'cities.14.21': return 'بني دوالة';
			case 'cities.14.22': return 'بني يني';
			case 'cities.14.23': return 'بني زيكي';
			case 'cities.14.24': return 'بني زمنزر';
			case 'cities.14.25': return 'بوغني';
			case 'cities.14.26': return 'بودجيمة';
			case 'cities.14.27': return 'بونوح';
			case 'cities.14.28': return 'بوزقن';
			case 'cities.14.29': return 'جبل عيسى ميمون';
			case 'cities.14.30': return 'درع بن خدة';
			case 'cities.14.31': return 'درع الميزان';
			case 'cities.14.32': return 'فرحة';
			case 'cities.14.33': return 'فريقات';
			case 'cities.14.34': return 'إبودرارن';
			case 'cities.14.35': return 'إجدر';
			case 'cities.14.36': return 'إفرهونان';
			case 'cities.14.37': return 'إفيغا';
			case 'cities.14.38': return 'إفليسن';
			case 'cities.14.39': return 'إلليلتن';
			case 'cities.14.40': return 'إللولة أومالو';
			case 'cities.14.41': return 'إمسوحال';
			case 'cities.14.42': return 'إرجان';
			case 'cities.14.43': return 'لربا ناث إراثن';
			case 'cities.14.44': return 'لربا ناث إراثن';
			case 'cities.14.45': return 'مكيرة';
			case 'cities.14.46': return 'معتقة';
			case 'cities.14.47': return 'ماقدة';
			case 'cities.14.48': return 'مشتراص';
			case 'cities.14.49': return 'مكلا';
			case 'cities.14.50': return 'مزرانة';
			case 'cities.14.51': return 'واكيف';
			case 'cities.14.52': return 'واد حياس';
			case 'cities.14.53': return 'وادوس';
			case 'cities.14.54': return 'وقنون';
			case 'cities.14.55': return 'سيدي نعمان';
			case 'cities.14.56': return 'سوامع';
			case 'cities.14.57': return 'سوق الثنين';
			case 'cities.14.58': return 'تادمايت';
			case 'cities.14.59': return 'تيقزيرت';
			case 'cities.14.60': return 'تيميزارت';
			case 'cities.14.61': return 'ترميتين';
			case 'cities.14.62': return 'تيزي غنيف';
			case 'cities.14.63': return 'تيزي إنتلات';
			case 'cities.14.64': return 'تيزي وزو';
			case 'cities.14.65': return 'تيزي راشد';
			case 'cities.14.66': return 'ياكورين';
			case 'cities.14.67': return 'يتافن';
			case 'cities.14.68': return 'زكري';
			case 'cities.15.0': return 'عين بنيان';
			case 'cities.15.1': return 'عين الطاية';
			case 'cities.15.2': return 'الجزائر الوسطى';
			case 'cities.15.3': return 'باب الواد';
			case 'cities.15.4': return 'باب الزوار';
			case 'cities.15.5': return 'بابا حسن';
			case 'cities.15.6': return 'باش جراح';
			case 'cities.15.7': return 'الباينس الرومانس';
			case 'cities.15.8': return 'براكي';
			case 'cities.15.9': return 'بن عقنون';
			case 'cities.15.10': return 'بني مسوس';
			case 'cities.15.11': return 'بير مراد رايس';
			case 'cities.15.12': return 'بير توتة';
			case 'cities.15.13': return 'بيرخادم';
			case 'cities.15.14': return 'بولوغين إبنو زيري';
			case 'cities.15.15': return 'برج الباهري';
			case 'cities.15.16': return 'برج الكيفان';
			case 'cities.15.17': return 'بروبة';
			case 'cities.15.18': return 'بوزريعة';
			case 'cities.15.19': return 'القصبة';
			case 'cities.15.20': return 'الشراقة';
			case 'cities.15.21': return 'دار البيضاء';
			case 'cities.15.22': return 'دلي إبراهيم';
			case 'cities.15.23': return 'جسر قاسنطينة';
			case 'cities.15.24': return 'الدويرة';
			case 'cities.15.25': return 'الدرارية';
			case 'cities.15.26': return 'العشور';
			case 'cities.15.27': return 'البيار';
			case 'cities.15.28': return 'الحراش';
			case 'cities.15.29': return 'المدينة';
			case 'cities.15.30': return 'المغارية';
			case 'cities.15.31': return 'المرسى';
			case 'cities.15.32': return 'المرادية';
			case 'cities.15.33': return 'هراوة';
			case 'cities.15.34': return 'حسين داي';
			case 'cities.15.35': return 'الحيدرة';
			case 'cities.15.36': return 'الخرائصية';
			case 'cities.15.37': return 'القبة';
			case 'cities.15.38': return 'ليز أوكاليبتوس';
			case 'cities.15.39': return 'معالمة';
			case 'cities.15.40': return 'محمد بلوزداد';
			case 'cities.15.41': return 'محمديا';
			case 'cities.15.42': return 'واد كوريش';
			case 'cities.15.43': return 'واد سمار';
			case 'cities.15.44': return 'أولاد شبل';
			case 'cities.15.45': return 'أولاد فيت';
			case 'cities.15.46': return 'رحمانية';
			case 'cities.15.47': return 'رايس حميدو';
			case 'cities.15.48': return 'رغاية';
			case 'cities.15.49': return 'رويبة';
			case 'cities.15.50': return 'راحولا';
			case 'cities.15.51': return 'سحاولة';
			case 'cities.15.52': return 'ستاوالي';
			case 'cities.15.53': return 'سيدي محمد';
			case 'cities.15.54': return 'سيدي موسى';
			case 'cities.15.55': return 'سويدانية';
			case 'cities.15.56': return 'تسالة المرجة';
			case 'cities.15.57': return 'زرالدة';
			case 'cities.16.0': return 'عين الشهداء';
			case 'cities.16.1': return 'عين الإبل';
			case 'cities.16.2': return 'عين فكة';
			case 'cities.16.3': return 'عين معبد';
			case 'cities.16.4': return 'عين وسارة';
			case 'cities.16.5': return 'عمورة';
			case 'cities.16.6': return 'بن هر';
			case 'cities.16.7': return 'بني يعقوب';
			case 'cities.16.8': return 'بيرين';
			case 'cities.16.9': return 'بويرة الأحداب';
			case 'cities.16.10': return 'الشارف';
			case 'cities.16.11': return 'دار الشيوخ';
			case 'cities.16.12': return 'دلدو';
			case 'cities.16.13': return 'الجلفة';
			case 'cities.16.14': return 'دويس';
			case 'cities.16.15': return 'القديد';
			case 'cities.16.16': return 'الإدريسية';
			case 'cities.16.17': return 'الخميس';
			case 'cities.16.18': return 'فيض البطمة';
			case 'cities.16.19': return 'قرنيني';
			case 'cities.16.20': return 'قطارة';
			case 'cities.16.21': return 'حد الصحاري';
			case 'cities.16.22': return 'حاسي بحبح';
			case 'cities.16.23': return 'حاسي العش';
			case 'cities.16.24': return 'حاسي فدول';
			case 'cities.16.25': return 'مليلية';
			case 'cities.16.26': return 'مسعد';
			case 'cities.16.27': return 'مجبرة';
			case 'cities.16.28': return 'أم العظام';
			case 'cities.16.29': return 'سد رحال';
			case 'cities.16.30': return 'سلمانة';
			case 'cities.16.31': return 'سيدي بايزيد';
			case 'cities.16.32': return 'سيدي لعجل';
			case 'cities.16.33': return 'تادميت';
			case 'cities.16.34': return 'زعفران';
			case 'cities.16.35': return 'زاقر';
			case 'cities.17.0': return 'برج الطهر';
			case 'cities.17.1': return 'بودريعة بني ياجيس';
			case 'cities.17.2': return 'بوعراوي بلهادف';
			case 'cities.17.3': return 'بوسيف أولاد عسكر';
			case 'cities.17.4': return 'الشحنة';
			case 'cities.17.5': return 'الشقفة';
			case 'cities.17.6': return 'الجمعة بني حبيبي';
			case 'cities.17.7': return 'جيملة';
			case 'cities.17.8': return 'العنصر';
			case 'cities.17.9': return 'العوانة';
			case 'cities.17.10': return 'الكنار نشفي';
			case 'cities.17.11': return 'الميلية';
			case 'cities.17.12': return 'أمير عبد القادر';
			case 'cities.17.13': return 'راقنة';
			case 'cities.17.14': return 'غبالة';
			case 'cities.17.15': return 'جيجل';
			case 'cities.17.16': return 'خيري واد عجول';
			case 'cities.17.17': return 'كواعس';
			case 'cities.17.18': return 'وجانة';
			case 'cities.17.19': return 'أولاد رابح';
			case 'cities.17.20': return 'أولاد يحيى خدروش';
			case 'cities.17.21': return 'سلمة بن زياد';
			case 'cities.17.22': return 'ستارة';
			case 'cities.17.23': return 'سيدي عبد العزيز';
			case 'cities.17.24': return 'سيدي معروف';
			case 'cities.17.25': return 'الطاهر';
			case 'cities.17.26': return 'تاكسنة';
			case 'cities.17.27': return 'زيامة منصورية';
			case 'cities.18.0': return 'عين العباسة';
			case 'cities.18.1': return 'عين أرنات';
			case 'cities.18.2': return 'عين أزال';
			case 'cities.18.3': return 'عين الكبيرة';
			case 'cities.18.4': return 'عين لحجر';
			case 'cities.18.5': return 'عين لقراج';
			case 'cities.18.6': return 'عين والمان';
			case 'cities.18.7': return 'عين الروى';
			case 'cities.18.8': return 'عين السبت';
			case 'cities.18.9': return 'آيت نوال مزادة';
			case 'cities.18.10': return 'آيت تزي';
			case 'cities.18.11': return 'عمروش';
			case 'cities.18.12': return 'بابور';
			case 'cities.18.13': return 'بازر سكرة';
			case 'cities.18.14': return 'بيضاء برج';
			case 'cities.18.15': return 'بلاعة';
			case 'cities.18.16': return 'بني عزيز';
			case 'cities.18.17': return 'بني شبانة';
			case 'cities.18.18': return 'بني فودة';
			case 'cities.18.19': return 'بني موحلي';
			case 'cities.18.20': return 'بني ورتيلان';
			case 'cities.18.21': return 'بني وسين';
			case 'cities.18.22': return 'بير العرش';
			case 'cities.18.23': return 'بير حدادة';
			case 'cities.18.24': return 'بوأنڤادس';
			case 'cities.18.25': return 'بوقاعة';
			case 'cities.18.26': return 'بوسلام';
			case 'cities.18.27': return 'بوطالب';
			case 'cities.18.28': return 'دهامشة';
			case 'cities.18.29': return 'جميلة';
			case 'cities.18.30': return 'ذراع قبيلة';
			case 'cities.18.31': return 'العلمة';
			case 'cities.18.32': return 'الأوريسيا';
			case 'cities.18.33': return 'أولاد عدوان';
			case 'cities.18.34': return 'أولاد صباح';
			case 'cities.18.35': return 'أولاد صابر';
			case 'cities.18.36': return 'راس الفروج';
			case 'cities.18.37': return 'سدرج الغول';
			case 'cities.18.38': return 'سطيف';
			case 'cities.18.39': return 'تاخودة';
			case 'cities.18.40': return 'تالا إيفاسن';
			case 'cities.18.41': return 'ثاية';
			case 'cities.18.42': return 'تيلا';
			case 'cities.18.43': return 'تيزي نبشار';
			case 'cities.19.0': return 'عين الحجار';
			case 'cities.19.1': return 'عين سخونة';
			case 'cities.19.2': return 'عين السلطان';
			case 'cities.19.3': return 'دوار ثابث';
			case 'cities.19.4': return 'الحساسنة';
			case 'cities.19.5': return 'هونات';
			case 'cities.19.6': return 'معمورة';
			case 'cities.19.7': return 'مولاي العربي';
			case 'cities.19.8': return 'أولاد إبراهيم';
			case 'cities.19.9': return 'أولاد خالد';
			case 'cities.19.10': return 'سعيدة';
			case 'cities.19.11': return 'سيدي أحمد';
			case 'cities.19.12': return 'سيدي عمار';
			case 'cities.19.13': return 'سيدي بوبكر';
			case 'cities.19.14': return 'تيرسين';
			case 'cities.19.15': return 'يوب';
			case 'cities.20.0': return 'عين بوزيان';
			case 'cities.20.1': return 'عين شرشار';
			case 'cities.20.2': return 'عين قشرة';
			case 'cities.20.3': return 'عين زويت';
			case 'cities.20.4': return 'عزابة';
			case 'cities.20.5': return 'بكوش لخضر';
			case 'cities.20.6': return 'بن عزوز';
			case 'cities.20.7': return 'بني بشير';
			case 'cities.20.8': return 'بني ولبان';
			case 'cities.20.9': return 'بني زيد';
			case 'cities.20.10': return 'بين الويدان';
			case 'cities.20.11': return 'بوشطاطة';
			case 'cities.20.12': return 'الشرايع';
			case 'cities.20.13': return 'كوللو';
			case 'cities.20.14': return 'جندل سعدي محمد';
			case 'cities.20.15': return 'العروش';
			case 'cities.20.16': return 'الغدير';
			case 'cities.20.17': return 'الحدائق';
			case 'cities.20.18': return 'المرسى';
			case 'cities.20.19': return 'مجاز الدشيش';
			case 'cities.20.20': return 'السبت';
			case 'cities.20.21': return 'فلفلة';
			case 'cities.20.22': return 'حمادي كرومة';
			case 'cities.20.23': return 'كنوة';
			case 'cities.20.24': return 'كرقيرة';
			case 'cities.20.25': return 'خناق مايون';
			case 'cities.20.26': return 'واد زهور';
			case 'cities.20.27': return 'ولجة بولبلوط';
			case 'cities.20.28': return 'أولاد عطية';
			case 'cities.20.29': return 'أولاد حبابة';
			case 'cities.20.30': return 'أم الطوب';
			case 'cities.20.31': return 'رمضان جمال';
			case 'cities.20.32': return 'صالح بوشعور';
			case 'cities.20.33': return 'سيدي مزغيش';
			case 'cities.20.34': return 'سكيكدة';
			case 'cities.20.35': return 'تمالوس';
			case 'cities.20.36': return 'زردازة';
			case 'cities.20.37': return 'زيتونة';
			case 'cities.21.0': return 'عين الدفلى';
			case 'cities.21.1': return 'عين البرد';
			case 'cities.21.2': return 'عين قادة';
			case 'cities.21.3': return 'عين ثريد';
			case 'cities.21.4': return 'عين تندمين';
			case 'cities.21.5': return 'عمراص';
			case 'cities.21.6': return 'بدردين المقراني';
			case 'cities.21.7': return 'بلعربي';
			case 'cities.21.8': return 'بن باديس';
			case 'cities.21.9': return 'بنشيبة شليا';
			case 'cities.21.10': return 'بير الحمام';
			case 'cities.21.11': return 'بودجبة البرج';
			case 'cities.21.12': return 'بوخنافيس';
			case 'cities.21.13': return 'شتوان بلعيلا';
			case 'cities.21.14': return 'الضاية';
			case 'cities.21.15': return 'الحقيقة';
			case 'cities.21.16': return 'حاسي دهو';
			case 'cities.21.17': return 'حاسي زهانة';
			case 'cities.21.18': return 'لامتار';
			case 'cities.21.19': return 'مسيكدة';
			case 'cities.21.20': return 'مكادرة';
			case 'cities.21.21': return 'مرحوم';
			case 'cities.21.22': return 'مريين';
			case 'cities.21.23': return 'مزورة';
			case 'cities.21.24': return 'مصطفى بن إبراهيم';
			case 'cities.21.25': return 'مولاي سليسن';
			case 'cities.21.26': return 'واد سباع';
			case 'cities.21.27': return 'واد سفيون';
			case 'cities.21.28': return 'واد الطوريرة';
			case 'cities.21.29': return 'راس الماء';
			case 'cities.21.30': return 'رجم دموش';
			case 'cities.21.31': return 'سهالة ثاورة';
			case 'cities.21.32': return 'سفيزف';
			case 'cities.21.33': return 'سيدي علي بن يوب';
			case 'cities.21.34': return 'سيدي علي بوسيدي';
			case 'cities.21.35': return 'سيدي بلعباس';
			case 'cities.21.36': return 'سيدي إبراهيم';
			case 'cities.21.37': return 'سيدي شيب';
			case 'cities.21.38': return 'سيدي دهو الزاير';
			case 'cities.21.39': return 'سيدي حمادوش';
			case 'cities.21.40': return 'سيدي خالد';
			case 'cities.21.41': return 'سيدي لحسن';
			case 'cities.21.42': return 'سيدي يعقوب';
			case 'cities.21.43': return 'تابية';
			case 'cities.21.44': return 'تافسور';
			case 'cities.21.45': return 'تاودموت';
			case 'cities.21.46': return 'تغاليمت';
			case 'cities.21.47': return 'تلاغ';
			case 'cities.21.48': return 'تنيرة';
			case 'cities.21.49': return 'تسالة';
			case 'cities.21.50': return 'تلموني';
			case 'cities.21.51': return 'زرواة';
			case 'cities.22.0': return 'عين الباردة';
			case 'cities.22.1': return 'عنابة';
			case 'cities.22.2': return 'برحال';
			case 'cities.22.3': return 'شطايبي';
			case 'cities.22.4': return 'شرفاء';
			case 'cities.22.5': return 'البوني';
			case 'cities.22.6': return 'الحجار';
			case 'cities.22.7': return 'العلما';
			case 'cities.22.8': return 'واد العنب';
			case 'cities.22.9': return 'سرايدي';
			case 'cities.22.10': return 'سيدي عمار';
			case 'cities.22.11': return 'التريعات';
			case 'cities.23.0': return 'عين بن بيضاء';
			case 'cities.23.1': return 'عين الحساينية';
			case 'cities.23.2': return 'عين العربي';
			case 'cities.23.3': return 'عين مخلوق';
			case 'cities.23.4': return 'عين رقادة';
			case 'cities.23.5': return 'بلكي';
			case 'cities.23.6': return 'بن جراح';
			case 'cities.23.7': return 'بني مزلين';
			case 'cities.23.8': return 'برج صباط';
			case 'cities.23.9': return 'بو حشانة';
			case 'cities.23.10': return 'بو حمدان';
			case 'cities.23.11': return 'بوعاتي محمود';
			case 'cities.23.12': return 'بوشقوف';
			case 'cities.23.13': return 'بوحمرة أحمد';
			case 'cities.23.14': return 'دهوارة';
			case 'cities.23.15': return 'جبالة خميس';
			case 'cities.23.16': return 'الفجوج';
			case 'cities.23.17': return 'قلعة بوصبع';
			case 'cities.23.18': return 'قالمة';
			case 'cities.23.19': return 'حمام دباغ';
			case 'cities.23.20': return 'حمام النبائل';
			case 'cities.23.21': return 'هيليوبوليس';
			case 'cities.23.22': return 'خزارة';
			case 'cities.23.23': return 'مجاز عمار';
			case 'cities.23.24': return 'مجاز صفا';
			case 'cities.23.25': return 'نشميا';
			case 'cities.23.26': return 'واد الشحم';
			case 'cities.23.27': return 'واد فاغة';
			case 'cities.23.28': return 'واد زناتي';
			case 'cities.23.29': return 'راس العقبة';
			case 'cities.23.30': return 'ركنية';
			case 'cities.23.31': return 'سلاوة عنونة';
			case 'cities.23.32': return 'سيدي السندل';
			case 'cities.23.33': return 'تملوكة';
			case 'cities.24.0': return 'عين عبيد';
			case 'cities.24.1': return 'عين السمارة';
			case 'cities.24.2': return 'بن باديس';
			case 'cities.24.3': return 'بني حميدان';
			case 'cities.24.4': return 'قسنطينة';
			case 'cities.24.5': return 'ديدوش مراد';
			case 'cities.24.6': return 'الخروب';
			case 'cities.24.7': return 'حمّة بوزيان';
			case 'cities.24.8': return 'ابن زياد';
			case 'cities.24.9': return 'مسعود بوجريو';
			case 'cities.24.10': return 'أولاد رحموني';
			case 'cities.24.11': return 'زيغود يوسف';
			case 'cities.25.0': return 'عين بوسيف';
			case 'cities.25.1': return 'عين أوكسير';
			case 'cities.25.2': return 'عيساوية';
			case 'cities.25.3': return 'عزيز';
			case 'cities.25.4': return 'بعطة';
			case 'cities.25.5': return 'بن شيكاو';
			case 'cities.25.6': return 'بني سليمان';
			case 'cities.25.7': return 'برواقية';
			case 'cities.25.8': return 'بير بن لعبيد';
			case 'cities.25.9': return 'بوغار';
			case 'cities.25.10': return 'بوعيش';
			case 'cities.25.11': return 'بوعيشون';
			case 'cities.25.12': return 'بوشراهيل';
			case 'cities.25.13': return 'بوغزول';
			case 'cities.25.14': return 'بوسكان';
			case 'cities.25.15': return 'شبونية';
			case 'cities.25.16': return 'شلالة العذورة';
			case 'cities.25.17': return 'شنيقل';
			case 'cities.25.18': return 'داميات';
			case 'cities.25.19': return 'دراغ';
			case 'cities.25.20': return 'ديو باسان';
			case 'cities.25.21': return 'جواب';
			case 'cities.25.22': return 'ضرع الصمر';
			case 'cities.25.23': return 'العزيزية';
			case 'cities.25.24': return 'القلب الكبير';
			case 'cities.25.25': return 'الحمدانية';
			case 'cities.25.26': return 'العمارية';
			case 'cities.25.27': return 'الوينات';
			case 'cities.25.28': return 'حناشة';
			case 'cities.25.29': return 'كاف لخضر';
			case 'cities.25.30': return 'خمس جوامع';
			case 'cities.25.31': return 'قصر البخاري';
			case 'cities.25.32': return 'مغروة';
			case 'cities.25.33': return 'المدية';
			case 'cities.25.34': return 'مجبار';
			case 'cities.25.35': return 'مفتاحة';
			case 'cities.25.36': return 'مزرانة';
			case 'cities.25.37': return 'ميهوب';
			case 'cities.25.38': return 'وعمري';
			case 'cities.25.39': return 'واد حربيل';
			case 'cities.25.40': return 'أولاد عنتر';
			case 'cities.25.41': return 'أولاد بوعشرة';
			case 'cities.25.42': return 'أولاد إبراهيم';
			case 'cities.25.43': return 'أولاد الديد';
			case 'cities.25.44': return 'أولاد هلال';
			case 'cities.25.45': return 'أولاد معرف';
			case 'cities.25.46': return 'أم الجليل';
			case 'cities.25.47': return 'وزيرة';
			case 'cities.25.48': return 'رباعية';
			case 'cities.25.49': return 'صانق';
			case 'cities.25.50': return 'صدراية';
			case 'cities.25.51': return 'سقوان';
			case 'cities.25.52': return 'سي محجوب';
			case 'cities.25.53': return 'سيدي دامد';
			case 'cities.25.54': return 'سيدي النعمان';
			case 'cities.25.55': return 'سيدي رابي';
			case 'cities.25.56': return 'سيدي زهار';
			case 'cities.25.57': return 'سيدي زيان';
			case 'cities.25.58': return 'سواغي';
			case 'cities.25.59': return 'تابلات';
			case 'cities.25.60': return 'تافراوت';
			case 'cities.25.61': return 'تامغصيدة';
			case 'cities.25.62': return 'تلاتة الدوائر';
			case 'cities.25.63': return 'زوبيرية';
			case 'cities.26.0': return 'أشاشا';
			case 'cities.26.1': return 'عين بودينار';
			case 'cities.26.2': return 'عين نويسي';
			case 'cities.26.3': return 'عين سيدي الشريف';
			case 'cities.26.4': return 'عين تدلس';
			case 'cities.26.5': return 'بن عبد المالك رمضان';
			case 'cities.26.6': return 'بوقيراط';
			case 'cities.26.7': return 'فرناكة';
			case 'cities.26.8': return 'حجاج';
			case 'cities.26.9': return 'حاسي مامش';
			case 'cities.26.10': return 'الحسيان';
			case 'cities.26.11': return 'خضرة';
			case 'cities.26.12': return 'خير الدين';
			case 'cities.26.13': return 'المنصورة';
			case 'cities.26.14': return 'مزاغران';
			case 'cities.26.15': return 'مسرة';
			case 'cities.26.16': return 'مستغانم';
			case 'cities.26.17': return 'نكمارية';
			case 'cities.26.18': return 'واد الخير';
			case 'cities.26.19': return 'أولاد بوغالم';
			case 'cities.26.20': return 'أولاد معالح';
			case 'cities.26.21': return 'سفساف';
			case 'cities.26.22': return 'سيادة';
			case 'cities.26.23': return 'سيدي علي';
			case 'cities.26.24': return 'سيدي بلاطر';
			case 'cities.26.25': return 'سيدي لخضر';
			case 'cities.26.26': return 'سيرات';
			case 'cities.26.27': return 'سوافلية';
			case 'cities.26.28': return 'سور';
			case 'cities.26.29': return 'ستيديا';
			case 'cities.26.30': return 'تزقايت';
			case 'cities.26.31': return 'تواهرية';
			case 'cities.27.0': return 'عين الحاجل';
			case 'cities.27.1': return 'عين الملح';
			case 'cities.27.2': return 'عين فارس';
			case 'cities.27.3': return 'عين خضرا';
			case 'cities.27.4': return 'عين ريش';
			case 'cities.27.5': return 'بلعايبة';
			case 'cities.27.6': return 'بن سرور';
			case 'cities.27.7': return 'بني إلمان';
			case 'cities.27.8': return 'بنزوه';
			case 'cities.27.9': return 'برهوم';
			case 'cities.27.10': return 'بير فودة';
			case 'cities.27.11': return 'بو سعادة';
			case 'cities.27.12': return 'بوتي سايح';
			case 'cities.27.13': return 'شلال';
			case 'cities.27.14': return 'ديحانة';
			case 'cities.27.15': return 'جبل مسعد';
			case 'cities.27.16': return 'الحامل';
			case 'cities.27.17': return 'الحوامد';
			case 'cities.27.18': return 'حمام دالعة';
			case 'cities.27.19': return 'خطوطي سد الجير';
			case 'cities.27.20': return 'خبانة';
			case 'cities.27.21': return 'مسيف';
			case 'cities.27.22': return 'مسيلة';
			case 'cities.27.23': return 'مطرفة';
			case 'cities.27.24': return 'معديد';
			case 'cities.27.25': return 'معريف';
			case 'cities.27.26': return 'مقرى';
			case 'cities.27.27': return 'مجدل';
			case 'cities.27.28': return 'منعة';
			case 'cities.27.29': return 'محمد بوضياف';
			case 'cities.27.30': return 'وانوغة';
			case 'cities.27.31': return 'أولاد عدي غبالة';
			case 'cities.27.32': return 'أولاد دراج';
			case 'cities.27.33': return 'أولاد ماضي';
			case 'cities.27.34': return 'أولاد منصور';
			case 'cities.27.35': return 'أولاد سيدي إبراهيم';
			case 'cities.27.36': return 'أولاد سليمان';
			case 'cities.27.37': return 'أولتيم';
			case 'cities.27.38': return 'سيدي عيسى';
			case 'cities.27.39': return 'سيدي عمر';
			case 'cities.27.40': return 'سيدي حاجرس';
			case 'cities.27.41': return 'سيدي محمد';
			case 'cities.27.42': return 'سليم';
			case 'cities.27.43': return 'سوامع';
			case 'cities.27.44': return 'تامسة';
			case 'cities.27.45': return 'تارمونت';
			case 'cities.27.46': return 'زرزور';
			case 'cities.28.0': return 'عين فارس';
			case 'cities.28.1': return 'عين فكان';
			case 'cities.28.2': return 'عين فرح';
			case 'cities.28.3': return 'عين فراس';
			case 'cities.28.4': return 'العايمية';
			case 'cities.28.5': return 'عوف';
			case 'cities.28.6': return 'بنيان';
			case 'cities.28.7': return 'بو حني';
			case 'cities.28.8': return 'بوحنيفية';
			case 'cities.28.9': return 'شرفة';
			case 'cities.28.10': return 'البورج';
			case 'cities.28.11': return 'القعدة';
			case 'cities.28.12': return 'الغمري';
			case 'cities.28.13': return 'الغيتينة';
			case 'cities.28.14': return 'الحاشم';
			case 'cities.28.15': return 'الكورت';
			case 'cities.28.16': return 'المامونية';
			case 'cities.28.17': return 'المنور';
			case 'cities.28.18': return 'فراغويج';
			case 'cities.28.19': return 'فروها';
			case 'cities.28.20': return 'غروس';
			case 'cities.28.21': return 'غريس';
			case 'cities.28.22': return 'قرجوم';
			case 'cities.28.23': return 'حسين';
			case 'cities.28.24': return 'خلوية';
			case 'cities.28.25': return 'مخضة';
			case 'cities.28.26': return 'موسى';
			case 'cities.28.27': return 'معسكر';
			case 'cities.28.28': return 'ماطمور';
			case 'cities.28.29': return 'مكتة دوز';
			case 'cities.28.30': return 'محمدية';
			case 'cities.28.31': return 'نسموت';
			case 'cities.28.32': return 'أقاز';
			case 'cities.28.33': return 'وادي الأبطال';
			case 'cities.28.34': return 'وادي طارية';
			case 'cities.28.35': return 'رأس العين عميروش';
			case 'cities.28.36': return 'صجيرارة';
			case 'cities.28.37': return 'صهيلية';
			case 'cities.28.38': return 'سيدي عبد الجبار';
			case 'cities.28.39': return 'سيدي عبد المؤمن';
			case 'cities.28.40': return 'سيدي بوسعيد';
			case 'cities.28.41': return 'سيدي قادة';
			case 'cities.28.42': return 'سيغ';
			case 'cities.28.43': return 'تيغنيف';
			case 'cities.28.44': return 'تيزي';
			case 'cities.28.45': return 'زهانة';
			case 'cities.28.46': return 'زلامة';
			case 'cities.29.0': return 'عين البيضاء';
			case 'cities.29.1': return 'البرمة';
			case 'cities.29.2': return 'حاسي بن عبد الله';
			case 'cities.29.3': return 'حاسي مسعود';
			case 'cities.29.4': return 'نقوسة';
			case 'cities.29.5': return 'ورقلة';
			case 'cities.29.6': return 'رويسات';
			case 'cities.29.7': return 'سيدي خويلد';
			case 'cities.30.0': return 'عين بيا';
			case 'cities.30.1': return 'عين كرمة';
			case 'cities.30.2': return 'عين ترك';
			case 'cities.30.3': return 'أرزو';
			case 'cities.30.4': return 'بن فرحة';
			case 'cities.30.5': return 'بثيوة';
			case 'cities.30.6': return 'بئر الجير';
			case 'cities.30.7': return 'بوفاتيس';
			case 'cities.30.8': return 'بوصفر';
			case 'cities.30.9': return 'بوتليليس';
			case 'cities.30.10': return 'العنقار';
			case 'cities.30.11': return 'البراية';
			case 'cities.30.12': return 'الكرمة';
			case 'cities.30.13': return 'السانية';
			case 'cities.30.14': return 'قديل';
			case 'cities.30.15': return 'حاسي بن عقبة';
			case 'cities.30.16': return 'حاسي بونيف';
			case 'cities.30.17': return 'حاسي مفسوخ';
			case 'cities.30.18': return 'مرساط الحجاج';
			case 'cities.30.19': return 'مرس الكبير';
			case 'cities.30.20': return 'مسرغين';
			case 'cities.30.21': return 'وهران';
			case 'cities.30.22': return 'وادي تليلات';
			case 'cities.30.23': return 'سيدي بن يبقى';
			case 'cities.30.24': return 'سيدي شامي';
			case 'cities.30.25': return 'طفراوي';
			case 'cities.31.0': return 'عين العراق';
			case 'cities.31.1': return 'أرباوات';
			case 'cities.31.2': return 'بوجطوب';
			case 'cities.31.3': return 'بوسمغون';
			case 'cities.31.4': return 'بريزينة';
			case 'cities.31.5': return 'شقويق';
			case 'cities.31.6': return 'شلالة';
			case 'cities.31.7': return 'البياض';
			case 'cities.31.8': return 'البيض سيدي الشيخ';
			case 'cities.31.9': return 'البنود';
			case 'cities.31.10': return 'الخيثر';
			case 'cities.31.11': return 'المهرة';
			case 'cities.31.12': return 'غسول';
			case 'cities.31.13': return 'كف الأحمر';
			case 'cities.31.14': return 'كراكدة';
			case 'cities.31.15': return 'روقصة';
			case 'cities.31.16': return 'سيدي عمر';
			case 'cities.31.17': return 'سيدي سليمان';
			case 'cities.31.18': return 'سيدي تيفور';
			case 'cities.31.19': return 'ستيتن';
			case 'cities.31.20': return 'توسمولين';
			case 'cities.32.0': return 'بورج عمر إدريس';
			case 'cities.32.1': return 'دبدب';
			case 'cities.32.2': return 'إيليزي';
			case 'cities.32.3': return 'إن أمناس';
			case 'cities.33.0': return 'عين تغريت';
			case 'cities.33.1': return 'عين تسرة';
			case 'cities.33.2': return 'بليمور';
			case 'cities.33.3': return 'بن داود';
			case 'cities.33.4': return 'بئر قصدالي';
			case 'cities.33.5': return 'بورج بوعريريج';
			case 'cities.33.6': return 'بورج غدير';
			case 'cities.33.7': return 'بورج زمورة';
			case 'cities.33.8': return 'كولة';
			case 'cities.33.9': return 'جعافرة';
			case 'cities.33.10': return 'العاش';
			case 'cities.33.11': return 'العشير';
			case 'cities.33.12': return 'الأنصور';
			case 'cities.33.13': return 'الحمادية';
			case 'cities.33.14': return 'المحير';
			case 'cities.33.15': return 'المين';
			case 'cities.33.16': return 'غيلاسة';
			case 'cities.33.17': return 'حرازة';
			case 'cities.33.18': return 'حسناوة';
			case 'cities.33.19': return 'خليل';
			case 'cities.33.20': return 'قصور';
			case 'cities.33.21': return 'منصورة';
			case 'cities.33.22': return 'مجانة';
			case 'cities.33.23': return 'أولاد براهيم';
			case 'cities.33.24': return 'أولاد دحمان';
			case 'cities.33.25': return 'أولاد سيدي إبراهيم';
			case 'cities.33.26': return 'ربطة';
			case 'cities.33.27': return 'رأس الواد';
			case 'cities.33.28': return 'سيدي البارك';
			case 'cities.33.29': return 'تافريغ';
			case 'cities.33.30': return 'تاقليت';
			case 'cities.33.31': return 'تنيت النصر';
			case 'cities.33.32': return 'تسمارت';
			case 'cities.33.33': return 'تكستر';
			case 'cities.34.0': return 'عفير';
			case 'cities.34.1': return 'عمال';
			case 'cities.34.2': return 'بغلية';
			case 'cities.34.3': return 'بن شود';
			case 'cities.34.4': return 'بني عمران';
			case 'cities.34.5': return 'بورج منايل';
			case 'cities.34.6': return 'بودواو';
			case 'cities.34.7': return 'بودواو البحري';
			case 'cities.34.8': return 'بومرداس';
			case 'cities.34.9': return 'بوزقزة كدارة';
			case 'cities.34.10': return 'شعبة العامر';
			case 'cities.34.11': return 'كورسو';
			case 'cities.34.12': return 'دليس';
			case 'cities.34.13': return 'جينت';
			case 'cities.34.14': return 'الخروبة';
			case 'cities.34.15': return 'حميدي';
			case 'cities.34.16': return 'عيسر';
			case 'cities.34.17': return 'خميس الخشنة';
			case 'cities.34.18': return 'لارباتاش';
			case 'cities.34.19': return 'الغطاطش';
			case 'cities.34.20': return 'الناصرية';
			case 'cities.34.21': return 'أولاد عيسى';
			case 'cities.34.22': return 'أولاد هداج';
			case 'cities.34.23': return 'أولاد موسى';
			case 'cities.34.24': return 'سي مصطفى';
			case 'cities.34.25': return 'سيدي داود';
			case 'cities.34.26': return 'سوق الحاد';
			case 'cities.34.27': return 'تورجة';
			case 'cities.34.28': return 'الثنية';
			case 'cities.34.29': return 'تجلابين';
			case 'cities.34.30': return 'تيمزريت';
			case 'cities.34.31': return 'زموري';
			case 'cities.35.0': return 'عين بن خليل';
			case 'cities.35.1': return 'عين صفراء';
			case 'cities.35.2': return 'السلة';
			case 'cities.35.3': return 'جنيان بورزق';
			case 'cities.35.4': return 'البيود';
			case 'cities.35.5': return 'كاسدير';
			case 'cities.35.6': return 'مكمان بن عامر';
			case 'cities.35.7': return 'مشرية';
			case 'cities.35.8': return 'مغرار';
			case 'cities.35.9': return 'النعامة';
			case 'cities.35.10': return 'سفيصيفة';
			case 'cities.35.11': return 'تيوت';
			case 'cities.36.0': return 'أغلال';
			case 'cities.36.1': return 'عين الأربعاء';
			case 'cities.36.2': return 'عين كيحل';
			case 'cities.36.3': return 'عين تموشنت';
			case 'cities.36.4': return 'عين الطلبة';
			case 'cities.36.5': return 'أوبليل';
			case 'cities.36.6': return 'بني صاف';
			case 'cities.36.7': return 'بوزجار';
			case 'cities.36.8': return 'شعبة الحم';
			case 'cities.36.9': return 'شنتوف';
			case 'cities.36.10': return 'العامرية';
			case 'cities.36.11': return 'المالح';
			case 'cities.36.12': return 'المساعد';
			case 'cities.36.13': return 'أمير عبد القادر';
			case 'cities.36.14': return 'حمام بوحجر';
			case 'cities.36.15': return 'حساسنة';
			case 'cities.36.16': return 'حسي الغلا';
			case 'cities.36.17': return 'وادي بركش';
			case 'cities.36.18': return 'وادي صباح';
			case 'cities.36.19': return 'أولاد بوجمعة';
			case 'cities.36.20': return 'أولاد كيحل';
			case 'cities.36.21': return 'أولحاقة الغرابة';
			case 'cities.36.22': return 'سيدي بن عدة';
			case 'cities.36.23': return 'سيدي بومدين';
			case 'cities.36.24': return 'سيدي أورياش';
			case 'cities.36.25': return 'سيدي صافي';
			case 'cities.36.26': return 'تمزورة';
			case 'cities.36.27': return 'ترقا';
			case 'cities.37.0': return 'بريان';
			case 'cities.37.1': return 'بنورة';
			case 'cities.37.2': return 'ضياط بن ضهوة';
			case 'cities.37.3': return 'العطف';
			case 'cities.37.4': return 'الغرارة';
			case 'cities.37.5': return 'غرداية';
			case 'cities.37.6': return 'المنصورة';
			case 'cities.37.7': return 'متليلي';
			case 'cities.37.8': return 'سبسب';
			case 'cities.37.9': return 'زلفانة';
			case 'cities.38.0': return 'عين رحمة';
			case 'cities.38.1': return 'عين طارق';
			case 'cities.38.2': return 'أمي موسى';
			case 'cities.38.3': return 'بلعسل بوزقزة';
			case 'cities.38.4': return 'بن داود';
			case 'cities.38.5': return 'بني درقون';
			case 'cities.38.6': return 'بني زنتيس';
			case 'cities.38.7': return 'دار بن عبد الله';
			case 'cities.38.8': return 'جديوية';
			case 'cities.38.9': return 'القطار';
			case 'cities.38.10': return 'الحمادنة';
			case 'cities.38.11': return 'الحسي';
			case 'cities.38.12': return 'المطمر';
			case 'cities.38.13': return 'الولدجة';
			case 'cities.38.14': return 'هد الشكالة';
			case 'cities.38.15': return 'حمري';
			case 'cities.38.16': return 'قلعة';
			case 'cities.38.17': return 'الحلف';
			case 'cities.38.18': return 'مازونة';
			case 'cities.38.19': return 'مديونة';
			case 'cities.38.20': return 'مينديس';
			case 'cities.38.21': return 'مرجة سيدي عابد';
			case 'cities.38.22': return 'واريزان';
			case 'cities.38.23': return 'وادي الجمعة';
			case 'cities.38.24': return 'وادي السالم';
			case 'cities.38.25': return 'وادي الريو';
			case 'cities.38.26': return 'أولاد عيش';
			case 'cities.38.27': return 'أولاد سيدي ميهوب';
			case 'cities.38.28': return 'رمكة';
			case 'cities.38.29': return 'ريليزان';
			case 'cities.38.30': return 'سيدي خطاب';
			case 'cities.38.31': return 'سيدي لزرق';
			case 'cities.38.32': return 'سيدي محمد بن علي';
			case 'cities.38.33': return 'سيدي محمد بن عودة';
			case 'cities.38.34': return 'سيدي سعادة';
			case 'cities.38.35': return 'سوق الحد';
			case 'cities.38.36': return 'يلل';
			case 'cities.38.37': return 'زمورة';
			case 'cities.39.0': return 'أوقروت';
			case 'cities.39.1': return 'شاروين';
			case 'cities.39.2': return 'دلدول';
			case 'cities.39.3': return 'قصر قدور';
			case 'cities.39.4': return 'مطرفة';
			case 'cities.39.5': return 'أولاد عيسى';
			case 'cities.39.6': return 'أولاد سعيد';
			case 'cities.39.7': return 'تالمين';
			case 'cities.39.8': return 'تيميمون';
			case 'cities.39.9': return 'تينركوك';
			case 'cities.40.0': return 'برج بادجي مختار';
			case 'cities.40.1': return 'تيمياوين';
			case 'cities.41.0': return 'بسبس';
			case 'cities.41.1': return 'الشعيبة';
			case 'cities.41.2': return 'دوسان';
			case 'cities.41.3': return 'أولاد جلال';
			case 'cities.41.4': return 'رأس المياض';
			case 'cities.41.5': return 'سيدي خالد';
			case 'cities.42.0': return 'بني عباس';
			case 'cities.42.1': return 'بني إخليف';
			case 'cities.42.2': return 'الواطة';
			case 'cities.42.3': return 'إيغلي';
			case 'cities.42.4': return 'كرزاز';
			case 'cities.42.5': return 'كسابي';
			case 'cities.42.6': return 'أولاد خضير';
			case 'cities.42.7': return 'تابلبالة';
			case 'cities.42.8': return 'تمترت';
			case 'cities.42.9': return 'تيمودي';
			case 'cities.43.0': return 'فقارة الزاوية';
			case 'cities.43.1': return 'إن غار';
			case 'cities.43.2': return 'إن صالح';
			case 'cities.44.0': return 'إن قزام';
			case 'cities.44.1': return 'تين زواتين';
			case 'cities.45.0': return 'بن عاصور';
			case 'cities.45.1': return 'بليدة عامر';
			case 'cities.45.2': return 'العلية';
			case 'cities.45.3': return 'الحجيرة';
			case 'cities.45.4': return 'مقارين';
			case 'cities.45.5': return 'منقر';
			case 'cities.45.6': return 'النزلة';
			case 'cities.45.7': return 'سيدي سليمان';
			case 'cities.45.8': return 'تايبت';
			case 'cities.45.9': return 'تبسبست';
			case 'cities.45.10': return 'تماسين';
			case 'cities.45.11': return 'تقرت';
			case 'cities.45.12': return 'زاوية العابدية';
			case 'cities.46.0': return 'برج الحواس';
			case 'cities.46.1': return 'جانت';
			case 'cities.47.0': return 'جماعة';
			case 'cities.47.1': return 'المغير';
			case 'cities.47.2': return 'مرارة';
			case 'cities.47.3': return 'أم تويور';
			case 'cities.47.4': return 'سيدي عمران';
			case 'cities.47.5': return 'سيدي خليل';
			case 'cities.47.6': return 'ستيل';
			case 'cities.47.7': return 'تندلة';
			case 'cities.48.0': return 'المنيعة';
			case 'cities.48.1': return 'حاسي فيهال';
			case 'cities.48.2': return 'حاسي جرة';
			default: return null;
		}
	}
}
