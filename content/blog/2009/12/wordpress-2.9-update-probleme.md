title=Update auf WordPress 2.9 / WeatherIcon – endlich erfolgreich
date=2009-12-28
type=post
tags=wordpress, 2.9, update problems, weathericon
status=published
~~~~~~

Falls Leute das gleiche Problem haben:
das automatische Update von WordPress auf Version 2.9 schlägt mit eigenartigen Fehlermeldungen fehl, wenn man [WeatherIcon](http://www.viper007bond.com/wordpress-plugins/discontinued-plugins/weathericon/) verwendet.

Ursache sind API-Änderungen in 2.9, die die Verwendung von gettext.php und stream.php verbieten – leider sieht man das nur, wenn man vor dem automatischen Update alle Plugins deaktiviert und nach erfolgtem Update wieder aktiviert.

Was für ein Spaß – der kleine Patch in der WeatherIcon.php an Zeile 58ff. hilft!

```php
55 # Fixes a bug in l10n.php where some guy decided there was no reason
56 # to load files which are required for their l10n functions if no
57 # language is defined in WordPress.
58 # 20091229 removed following two lines during update to 2.9
59 #require_once(ABSPATH . 'wp-includes/streams.php');
60 #require_once(ABSPATH . 'wp-includes/gettext.php');
```

WeatherIcon is [discontinued since 2007](https://alex.blog/wordpress-plugins/discontinued-plugins/weathericon/)!
