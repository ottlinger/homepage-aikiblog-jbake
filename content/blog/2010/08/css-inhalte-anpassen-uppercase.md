title=CSS kann Inhalte umwandeln - uppercase
date=2010-08-19
type=post
tags=CSS, transform to uppercase
status=published
~~~~~~

Durch Zufall entdeckt, dass man via CSS auch Inhalte automatisch anpassen kann – insbesondere praktisch, wenn die Daten aus Datenbanken kommen oder andere Quellen im Spiel sind:

```css
h4 {
font-family: Arial;
font-size: 12px;
text-weight: bold;
letter-spacing: 0;
margin:0;
text-transform: uppercase;
background: none repeat scroll 0 0 transparent;
color: black;
}
```

Noch viel mehr [Spielereien](https://www.w3schools.com/cssref/pr_text_text-transform.php) sind möglich.
