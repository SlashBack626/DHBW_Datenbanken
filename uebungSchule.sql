use uebungschule;

/* Aufgabenteil A) */
select id from smartphones where marke='Apple';

select name, marke from schueler left join smartphones phone ON schueler.idSmartphones = phone.id where marke='Apple';

/* Aufgabenteil B1) */

select lehrer.name as lehrername, s2.name as schuelername from lehrer left join lehrer_hat_schueler s ON lehrer.id = s.idLehrer
left join schueler s2 ON s.idSchueler = s2.id

/* Aufgabeteil B2) */

select s.name as "Schüler von Frau Maier" from lehrer LEFT JOIN lehrer_hat_schueler lhs ON lehrer.id = lhs.idLehrer left join schueler s ON lhs.idSchueler = s.id;

/* Aufgabenteil C) */

select schueler.name, o.name as Wohnort, marke from schueler left join orte o on schueler.idOrte = o.id left join smartphones s ON schueler.idSmartphones = s.id where o.name='Emmendingen';

/* Aufgabenteil D) */

select schueler.name as Schuelername, o.name as Wohnort, l.name as Lehrername from schueler left join orte o on schueler.idOrte = o.id left join lehrer_hat_schueler lhs ON schueler.id = lhs.idSchueler left join lehrer l on lhs.idLehrer = l.id where o.name = 'Emmendingen' and l.name = 'Huber';