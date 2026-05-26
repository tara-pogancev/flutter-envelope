///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations with BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
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

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations

	/// en: 'Envelope'
	String get appName => 'Envelope';

	late final Translations$homePage$en homePage = Translations$homePage$en._(_root);
	late final Translations$homeHeader$en homeHeader = Translations$homeHeader$en._(_root);
	late final Translations$homeDailyPrompt$en homeDailyPrompt = Translations$homeDailyPrompt$en._(_root);
	late final Translations$themePreview$en themePreview = Translations$themePreview$en._(_root);
}

// Path: homePage
class Translations$homePage$en {
	Translations$homePage$en._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Hi, let's write about today. 🖋️'
	String get pageTitle => 'Hi, let\'s write about today. 🖋️';

	/// en: 'Journal entry'
	String get journalEntry => 'Journal entry';

	/// en: 'Daily streak'
	String get dailyStreak => 'Daily streak';

	/// en: 'Why journal?'
	String get whyJournal => 'Why journal?';

	/// en: 'Remembering life'
	String get rememberingLifeTitle => 'Remembering life';

	/// en: 'Each day has something to be remembered by. Even if only in a sentence, make sure your everyday moments stay remembered.'
	String get rememberingLifeSubtitle => 'Each day has something to be remembered by. Even if only in a sentence, make sure your everyday moments stay remembered.';

	/// en: 'Self-reflection'
	String get selfReflectionTitle => 'Self-reflection';

	/// en: 'Putting you thoughts on paper helps you shape the way you think. It highlights your thought patterns, and helps you discover new perspectives.'
	String get selfReflectionSubtitle => 'Putting you thoughts on paper helps you shape the way you think. It highlights your thought patterns, and helps you discover new perspectives.';

	/// en: 'Creativity'
	String get creativityTitle => 'Creativity';

	/// en: 'Getting into a habit of writing can feel difficult. But the more you write, the easier you will find exploration of new ideas and concepts reaching you. Creativity is a skill to be practiced as well, and journaling is a simple way to get you started.'
	String get creativitySubtitle => 'Getting into a habit of writing can feel difficult. But the more you write, the easier you will find exploration of new ideas and concepts reaching you. Creativity is a skill to be practiced as well, and journaling is a simple way to get you started.';
}

// Path: homeHeader
class Translations$homeHeader$en {
	Translations$homeHeader$en._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: '{date}'
	String get date => '{date}';
}

// Path: homeDailyPrompt
class Translations$homeDailyPrompt$en {
	Translations$homeDailyPrompt$en._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Daily prompt'
	String get dailyPrompt => 'Daily prompt';

	/// en: 'What fun conversation did you have today?'
	String get question => 'What fun conversation did you have today?';

	/// en: 'Answer'
	String get answer => 'Answer';
}

// Path: themePreview
class Translations$themePreview$en {
	Translations$themePreview$en._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Theme preview'
	String get title => 'Theme preview';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on Translations {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'appName' => 'Envelope',
			'homePage.pageTitle' => 'Hi, let\'s write about today. 🖋️',
			'homePage.journalEntry' => 'Journal entry',
			'homePage.dailyStreak' => 'Daily streak',
			'homePage.whyJournal' => 'Why journal?',
			'homePage.rememberingLifeTitle' => 'Remembering life',
			'homePage.rememberingLifeSubtitle' => 'Each day has something to be remembered by. Even if only in a sentence, make sure your everyday moments stay remembered.',
			'homePage.selfReflectionTitle' => 'Self-reflection',
			'homePage.selfReflectionSubtitle' => 'Putting you thoughts on paper helps you shape the way you think. It highlights your thought patterns, and helps you discover new perspectives.',
			'homePage.creativityTitle' => 'Creativity',
			'homePage.creativitySubtitle' => 'Getting into a habit of writing can feel difficult. But the more you write, the easier you will find exploration of new ideas and concepts reaching you. Creativity is a skill to be practiced as well, and journaling is a simple way to get you started.',
			'homeHeader.date' => '{date}',
			'homeDailyPrompt.dailyPrompt' => 'Daily prompt',
			'homeDailyPrompt.question' => 'What fun conversation did you have today?',
			'homeDailyPrompt.answer' => 'Answer',
			'themePreview.title' => 'Theme preview',
			_ => null,
		};
	}
}
