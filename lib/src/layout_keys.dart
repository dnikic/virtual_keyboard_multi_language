part of virtual_keyboard_multi_language;
//import '../virtual_keyboard_multi_language.dart';

abstract class VirtualKeyboardLayoutKeys {
  int activeIndex = 0;

  List<List> get defaultEnglishLayout => _defaultEnglishLayout;
  List<List> get defaultArabicLayout => _defaultArabicLayout;

  List<List> get activeLayout => getLanguage(activeIndex);
  int getLanguagesCount();
  List<List> getLanguage(int index);

  void switchLanguage() {
    if ((activeIndex + 1) == getLanguagesCount())
      activeIndex = 0;
    else
      activeIndex++;
  }
}

class VirtualKeyboardDefaultLayoutKeys extends VirtualKeyboardLayoutKeys {
  List<VirtualKeyboardDefaultLayouts> defaultLayouts;
  VirtualKeyboardDefaultLayoutKeys(this.defaultLayouts);

  int getLanguagesCount() => defaultLayouts.length;

  List<List> getLanguage(int index) {
    switch (defaultLayouts[index]) {
      case VirtualKeyboardDefaultLayouts.English:
        return _defaultEnglishLayout;
      case VirtualKeyboardDefaultLayouts.Russian:
        return _defaultRussianLayout;
      case VirtualKeyboardDefaultLayouts.Arabic:
        return _defaultArabicLayout;
      default:
    }
    return _defaultEnglishLayout;
  }
}

/// Keys for Virtual Keyboard's rows.
const List<List> _defaultEnglishLayout = [
  // Row 1
  const [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '0',
    VirtualKeyboardKeyAction.Close,
  ],
  // Row 2
  const ['q', 'w', 'e', 'r', 't', 'y', 'u', 'i', 'o', 'p', VirtualKeyboardKeyAction.Backspace],
  // Row 3
  const ['a', 's', 'd', 'f', 'g', 'h', 'j', 'k', 'l', ';', '\''],
  // Row 4
  const [
    VirtualKeyboardKeyAction.Shift,
    'z',
    'x',
    'c',
    'v',
    'b',
    'n',
    'm',
    ',',
    '.',
    '/',
  ],
  // Row 5
  const [
    VirtualKeyboardKeyAction.SwithLanguage,
    '@',
    VirtualKeyboardKeyAction.Space,
    '-',
    '&',
    '_',
  ]
];

const List<List> _defaultArabicLayout = [
  // Row 1
  const [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '0',
    VirtualKeyboardKeyAction.Close,
  ],
  // Row 2
  const ['ض', 'ص', 'ث', 'ق', 'ف', 'غ', 'ع', 'ه', 'خ', 'ح', 'د', VirtualKeyboardKeyAction.Backspace],
  // Row 3
  const ['ش', 'س', 'ي', 'ب', 'ل', 'ا', 'ت', 'ن', 'م', 'ك', 'ط'],
  // Row 4
  const ['ذ', 'ئ', 'ء', 'ؤ', 'ر', 'لا', 'ى', 'ة', 'و', '.', 'ظ', VirtualKeyboardKeyAction.Shift],
  // Row 5
  const [
    VirtualKeyboardKeyAction.SwithLanguage,
    '@',
    VirtualKeyboardKeyAction.Space,
    '-',
    '_',
  ]
];

const List<List> _defaultRussianLayout = [
  const [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '0',
    VirtualKeyboardKeyAction.Close,
  ],
  // Row 2

  const ['й', 'ц', 'у', 'к', 'е', 'н', 'г', 'ш', 'щ', 'з', 'х', 'ь', VirtualKeyboardKeyAction.Backspace],
  // Row 3

  const [
    'ф',
    'ы',
    'в',
    'а',
    'п',
    'р',
    'о',
    'л',
    'д',
    'ж',
    'э',
    ';',
    '\'',
  ],
  // Row 4

  const [
    VirtualKeyboardKeyAction.Shift,
    'я',
    'ч',
    'с',
    'м',
    'и',
    'т',
    'ъ',
    'б',
    'ю',
    'ё',
    ',',
    '.',
    '/',
  ],
  // Row 5
  const [
    VirtualKeyboardKeyAction.SwithLanguage,
    '@',
    VirtualKeyboardKeyAction.Space,
    '&',
    '_',
    '-',
  ]
];
