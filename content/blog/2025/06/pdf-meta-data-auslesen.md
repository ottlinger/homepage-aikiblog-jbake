title=Metadaten einer PDF-Datei anzeigen
date=2025-06-17
type=post
tags=pdf, linux, meta-data
status=published
~~~~~~

Im Alltag gibt es ein Dutzend PDF-Dateien, mit denen man konfrontiert ist. Da will man manchmal - gerade bei Fehler in der Anzeige - erkennen,
wie die Datei erzeugt wurde oder wer der Autor war.

Glücklicherweise gibt es gute Werkzeuge dafür:

```bash
$ sudo aptitude install mupdf-tools
```

Eine Beispielausgabe einer Mobilfunkrechnung sieht dann so aus:

```bash
$ mutool info 2025-5-13-RG.pdf
2025-5-13-RG.pdf:

PDF-1.4
Info object (56 0 R):
<</Producer(Compart MFFPDF I/O Filter 2024-08-27 09:47:49)/Creator(Connext Core \(202409-STABLE\))/CreationDate(D:20250512221709+02'00')/ModDate(D:20250512221709+02'00')/Author( )>>
Encryption object (3 0 R):
<</Filter/Standard/R 3/O<83CF07406E30E4F49D2B150282F2D4537082C1E5FAD4761FC75A263A854B9318>/U<E719EB5EDF9E1FABB478DD6EB5F23CD628BF4E5E4E758A4164004E56FFFA0108>/P -1324/Length 128/V 2>>
Pages: 4

Retrieving info from pages 1-4...
Mediaboxes (1):
    1    (4 0 R):    [ 0 0 595.2756 841.8898 ]

Fonts (4):
    1    (4 0 R):    TrueType 'ArialMT' WinAnsiEncoding (5 0 R)
    1    (4 0 R):    TrueType 'Arial-BoldMT' WinAnsiEncoding (13 0 R)
    1    (4 0 R):    TrueType 'FrutigerLTPro-Roman' WinAnsiEncoding (20 0 R)
    1    (4 0 R):    TrueType 'Arial-BoldItalicMT' WinAnsiEncoding (10 0 R)

Images (9):
    1    (4 0 R):    [ Flate ] 70x70 8bpc Idx (25 0 R)
    1    (4 0 R):    [ Flate ] 59x59 8bpc Idx (28 0 R)
    1    (4 0 R):    [ Flate ] 70x70 8bpc Idx (31 0 R)
    1    (4 0 R):    [ Flate ] 70x70 8bpc Idx (34 0 R)
    1    (4 0 R):    [ Flate ] 70x70 8bpc Idx (37 0 R)
    1    (4 0 R):    [ Flate ] 174x170 8bpc ICC (19 0 R)
    4    (45 0 R):    [ Flate ] 70x70 8bpc Idx (48 0 R)
    4    (45 0 R):    [ Flate ] 70x70 8bpc Idx (51 0 R)
    4    (45 0 R):    [ Flate ] 70x70 8bpc Idx (54 0 R)
```
