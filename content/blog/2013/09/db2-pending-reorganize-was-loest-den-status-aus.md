title=DB2 Pending Reorganize auf Datenbanktabellen – was ist der Auslöser für den Status?
date=2013-09-06
type=post
tags=DB2, Pending Reorganize Status
status=published
~~~~~~

Wieder mal ein DB2-Rätsel – welche Operationen führen dazu, dass die Tabelle in den *benötige Reorganisieren*-Modus kommt?
Hintergrund ist, dass beispielsweise keine Indexe angelegt werden können, wenn die Tabelle ein reorg benötigt. Dazu muss man ein Spezialskript aufrufen.

Abhilfe schafft folgendes Beispielskript, das eine Tabelle **FOO** anlegt und nacheinander Änderungen vornimmt:

```sql
CREATE TABLE FOO (
ID INTEGER GENERATED ALWAYS AS IDENTITY NOT NULL,
METADATAKEY VARCHAR(255),
METADATAVALUE VARCHAR(255),
VERSION int
);
COMMIT;

select * from FOO;
insert into foo (METADATAKEY, METADATAVALUE, VERSION) values ('sch','asdasdasd','1');
select * from FOO;
COMMIT;

select indname, colnames from syscat.indexes where tabname = 'FOO';
select TABSCHEMA, TABNAME from SYSIBMADM.ADMINTABINFO where REORG_PENDING = 'Y';
COMMIT;

ALTER TABLE FOO ADD FORCE_REENTER_UMD SMALLINT DEFAULT 0 NOT NULL;
select TABSCHEMA, TABNAME from SYSIBMADM.ADMINTABINFO where REORG_PENDING = 'Y';
COMMIT;

ALTER TABLE FOO DROP FORCE_REENTER_UMD;
COMMIT;
ALTER TABLE FOO ADD FFORCE_REENTER_UMD SMALLINT DEFAULT 0 NOT NULL;
COMMIT;
select * from FOO;

CREATE INDEX INDEX_2COL_2GTHR ON FOO (METADATAKEY, METADATAVALUE);
select indname, colnames from syscat.indexes where tabname = 'FOO';
select TABSCHEMA, TABNAME from SYSIBMADM.ADMINTABINFO where REORG_PENDING = 'Y';
COMMIT;

Call Sysproc.admin_cmd ('reorg Table FOO');
COMMIT;

SELECT EJB.ID from FOO EJB;
COMMIT;

select TABSCHEMA, TABNAME from SYSIBMADM.ADMINTABINFO where REORG_PENDING = 'Y';
COMMIT;

DROP TABLE FOO;
COMMIT;
```

Interessant, dass ein Index anlegen die Änderung nicht zur Folge hat sondern das Löschen von Tabellenspalten. Hintergrund ist, dass es nicht auf allen relationalen Datenbanken ein Spalte umbenennen gibt.
Daher wird man in manchen Situationen ein
```sql
ALTER TABLE DROP COLUMN foo;
```

machen und danach ein

```sql
ALTER TABLE ADD COLUMN newFoo;
```
