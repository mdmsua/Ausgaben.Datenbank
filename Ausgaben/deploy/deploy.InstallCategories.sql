create procedure [deploy].[InstallCategories]
as
	create table #categories
	(
		[ParentId]	smallint null foreign key references #categories(Id),
		[Id]		smallint primary key not null,
		[Name]		nvarchar(128) not null,
		[Type]		bit null
	)

	insert #categories values	(null,	10000,	N'Auto und öffentliche Verkehrsmittel', 0),
								(10000,	10001,	N'Autokauf', 0),
								(10000,	10002,	N'Autokredit/-leasing', 0),
								(10000,	10003,	N'Autoreinigung', 0),
								(10000,	10004,	N'Autozubehör', 0),
								(10000,	10005,	N'Kraft- und Fahrräder', 0),
								(10000,	10006,	N'Kraftfahrzeugsteuern', 0),
								(10000,	10007,	N'Kraftfahrzeugversicherung', 0),
								(10000,	10008,	N'Öffentliche Verkehrsmittel', 0),
								(10000,	10009,	N'Parken / Garage', 0),
								(10000,	10010,	N'Tanken', 0),
								(10000,	10011,	N'Taxi', 0),
								(10000,	10012,	N'Werkstatt / Reparaturen', 0),
								(10000,	10013,	N'Sonstige Auto und öffentliche Verkehrsmittel', 0)
								
	insert #categories values	(null,	11000,	N'Bank', 0),
								(11000,	11001,	N'Bankgebühren', 0),
								(11000,	11002,	N'Ratenkreditabrechnung', 0),
								(11000,	11003,	N'Sonstige Bank', 0)
								
	insert #categories values	(null,	12000,	N'Bargeld', 0)

	insert #categories values	(null,	13000,	N'Bildung und Beruf', 0),
								(13000,	13001,	N'Büromaterial', 0),
								(13000,	13002,	N'Dienstreise / Spesen', 0),
								(13000,	13003,	N'Lehrmaterial', 0),
								(13000,	13004,	N'Studiengebühren', 0),
								(13000,	13005,	N'Studienkredit', 0),
								(13000,	13006,	N'Weiterbildung', 0),
								(13000,	13007,	N'Sonstige Bildung und Beruf', 0)
								
	insert #categories values	(null,	14000,	N'Freizeit', 0),
								(14000,	14001,	N'Ausgehen / Party', 0),
								(14000,	14002,	N'Hobbys', 0),
								(14000,	14003,	N'Kino / Kunst / Kultur', 0),
								(14000,	14004,	N'Restaurants / Cafes / Bars', 0),
								(14000,	14005,	N'Sport / Fitness', 0),
								(14000,	14006,	N'Vereine / Verbände', 0),
								(14000,	14007,	N'Sonstige Freizeit', 0)
								
	insert #categories values	(null,	15000,	N'Gesundheit', 0),
								(15000,	15001,	N'Apotheke / Medikamente', 0),
								(15000,	15002,	N'Arztbehandlung', 0),
								(15000,	15003,	N'Brille / Kontaktlinsen', 0),
								(15000,	15004,	N'Krankenhaus', 0),
								(15000,	15005,	N'Sonstige Gesundheit', 0)
								
	insert #categories values	(null,	16000,	N'Kinder', 0),
								(16000,	16001,	N'Freizeitaktivitäten Kinder', 0),
								(16000,	16002,	N'Kinderbekleidung', 0),
								(16000,	16003,	N'Kinderbetreuung', 0),
								(16000,	16004,	N'Pflegeprodukte Kinder', 0),
								(16000,	16005,	N'Schulausflug', 0),
								(16000,	16006,	N'Schulgeld', 0),
								(16000,	16007,	N'Spielwaren', 0),
								(16000,	16008,	N'Taschengeld', 0),
								(16000,	16009,	N'Unterhaltszahlungen', 0),
								(16000,	16010,	N'Sonstige Kinder', 0)
								
	insert #categories values	(null,	17000,	N'Kommunikation', 0),
								(17000,	17001,	N'Abonnements', 0),
								(17000,	17002,	N'Post', 0),
								(17000,	17003,	N'Telefon / Internet / Fernsehen', 0),
								(17000,	17004,	N'Sonstige Kommunikation', 0)
								
	insert #categories values	(null,	18000,	N'Lebenshaltung', 0),
								(18000,	18001,	N'Bücher / Musik / DVDs', 0),
								(18000,	18002,	N'Elektronik / Computer', 0),
								(18000,	18003,	N'Frisör / Wellness / Schönheitspflege', 0),
								(18000,	18004,	N'Geschenke / Spenden', 0),
								(18000,	18005,	N'Hygieneartikel / Reinigungsmittel', 0),
								(18000,	18006,	N'Kleidung / Schuhe', 0),
								(18000,	18007,	N'Kosmetik / Parfümerie', 0),
								(18000,	18008,	N'Lebensmittel / Getränke', 0),
								(18000,	18009,	N'Tiere', 0),
								(18000,	18010,	N'Uhren / Schmuck', 0),
								(18000,	18011,	N'Sonstige Lebenshaltung', 0)
								
	insert #categories values	(null,	19000,	N'Reise', 0),
								(19000,	19001,	N'Hotel / Unterkunft', 0),
								(19000,	19002,	N'Mietwagen', 0),
								(19000,	19003,	N'Pauschalreise', 0),
								(19000,	19004,	N'Reisekosten (Flug/Bahn/Schiff)', 0),
								(19000,	19005,	N'Urlaubskasse', 0),
								(19000,	19006,	N'Sonstige Reise', 0)
								
	insert #categories values	(null,	20000,	N'Sparen und Anlegen', 0),
								(20000,	20001,	N'Altersvorsorge', 0),
								(20000,	20002,	N'Bausparen', 0),
								(20000,	20003,	N'Geldanlage', 0),
								(20000,	20004,	N'Wertpapieranlage', 0),
								(20000,	20005,	N'Sonstige Sparen und Anlegen', 0)
								
	insert #categories values	(null,	21000,	N'Versicherungen', 0),
								(21000,	21001,	N'Berufsunfähigkeitsversicherung', 0),
								(21000,	21002,	N'Haftpflichtversicherung', 0),
								(21000,	21003,	N'Hausratversicherung', 0),
								(21000,	21004,	N'Krankenversicherung', 0),
								(21000,	21005,	N'Lebens-/Rentenversicherung', 0),
								(21000,	21006,	N'Pflegeversicherung', 0),
								(21000,	21007,	N'Rechtsschutzversicherung', 0),
								(21000,	21008,	N'Unfallversicherung', 0),
								(21000,	21009,	N'Zusatzversicherung', 0),
								(21000,	21010,	N'Sonstige Versicherungen', 0)
								
	insert #categories values	(null,	22000,	N'Wohnen', 0),
								(22000,	22001,	N'Garten', 0),
								(22000,	22002,	N'Haus-/Baufinanzierung', 0),
								(22000,	22003,	N'Haushaltshilfe', 0),
								(22000,	22004,	N'Haushaltswaren / Haushaltsgeräte', 0),
								(22000,	22005,	N'Miete', 0),
								(22000,	22006,	N'Möbel / Wohnaccessoires', 0),
								(22000,	22007,	N'Renovierung / Instandhaltung', 0),
								(22000,	22008,	N'Sonstige Nebenkosten', 0),
								(22000,	22009,	N'Strom / Wasser / Gas / Heizkosten', 0),
								(22000,	22010,	N'Sonstige Wohnen', 0)
								
	insert #categories values	(null,	23000,	N'Unkategorisierte Ausgaben', 0),
								(23000,	23001,	N'Abgaben / Gebühren', 0),
								(23000,	23002,	N'Unkategorisierte Überweisung', 0),
								(23000,	23003,	N'Sonstige Unkategorisierte Ausgaben', 0)
								
	insert #categories values	(null,	24000,	N'Einnahmen', 1),
								(24000,	24001,	N'Ausbildungsförderung', 1),
								(24000,	24002,	N'Auszahlung / Verkauf Anlage', 1),
								(24000,	24003,	N'Bargeldeinzahlungen', 1),
								(24000,	24004,	N'Bonuszahlungen / Tantieme', 1),
								(24000,	24005,	N'Einnahmen aus Verkäufen', 1),
								(24000,	24006,	N'Erhaltene Unterhaltszahlungen', 1),
								(24000,	24007,	N'Kredit', 1),
								(24000,	24008,	N'Lohn / Gehalt', 1),
								(24000,	24009,	N'Mieteinnahmen', 1),
								(24000,	24010,	N'Rente / Pension', 1),
								(24000,	24011,	N'Staatliche Leistungen & Zuschüsse', 1),
								(24000,	24012,	N'Steuerrückerstattungen', 1),
								(24000,	24013,	N'Zinsen / Dividenden', 1),
								(24000,	24014,	N'Sonstige Einnahmen', 1)
								
	insert #categories values	(null,	25000,	N'Aus Auswertungen ausschließen', null),
								(25000,	25001,	N'Kreditkartenabrechnung', null),
								(25000,	25002,	N'Übertrag', null),
								(25000,	25003,	N'Sonstige Aus Auswertungen ausschließen', null)

	merge dbo.Categories t
		using #categories s
			on s.Name = t.Name
		when not matched then
			insert (Id, ParentId, Name, Type)
				values (s.Id, s.ParentId, s.Name, s.Type);