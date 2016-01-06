create procedure [deploy].[InstallCategories]
as
	create table #categories
	(
		[Id]	hierarchyid primary key not null,
		[Name]	nvarchar(128) not null,
		[Type]	bit null
	)

	insert #categories values	('/1/',		N'Auto und öffentliche Verkehrsmittel', 0),
								('/1/1/',	N'Autokauf', 0),
								('/1/2/',	N'Autokredit/-leasing', 0),
								('/1/3/',	N'Autoreinigung', 0),
								('/1/4/',	N'Autozubehör', 0),
								('/1/5/',	N'Kraft- und Fahrräder', 0),
								('/1/6/',	N'Kraftfahrzeugsteuern', 0),
								('/1/7/',	N'Kraftfahrzeugversicherung', 0),
								('/1/8/',	N'Öffentliche Verkehrsmittel', 0),
								('/1/9/',	N'Parken / Garage', 0),
								('/1/10/',	N'Tanken', 0),
								('/1/11/',	N'Taxi', 0),
								('/1/12/',	N'Werkstatt / Reparaturen', 0),
								('/1/13/',	N'Sonstige Auto und öffentliche Verkehrsmittel', 0)
								
	insert #categories values	('/2/',		N'Bank', 0),
								('/2/1/',	N'Bankgebühren', 0),
								('/2/2/',	N'Ratenkreditabrechnung', 0),
								('/2/3/',	N'Sonstige Bank', 0)
								
	insert #categories values	('/3/',		N'Bargeld', 0)

	insert #categories values	('/4/',		N'Bildung und Beruf', 0),
								('/4/1/',	N'Büromaterial', 0),
								('/4/2/',	N'Dienstreise / Spesen', 0),
								('/4/3/',	N'Lehrmaterial', 0),
								('/4/4/',	N'Studiengebühren', 0),
								('/4/5/',	N'Studienkredit', 0),
								('/4/6/',	N'Weiterbildung', 0),
								('/4/7/',	N'Sonstige Bildung und Beruf', 0)
								
	insert #categories values	('/5/',		N'Freizeit', 0),
								('/5/1/',	N'Ausgehen / Party', 0),
								('/5/2/',	N'Hobbys', 0),
								('/5/3/',	N'Kino / Kunst / Kultur', 0),
								('/5/4/',	N'Restaurants / Cafes / Bars', 0),
								('/5/5/',	N'Sport / Fitness', 0),
								('/5/6/',	N'Vereine / Verbände', 0),
								('/5/7/',	N'Sonstige Freizeit', 0)
								
	insert #categories values	('/6/',		N'Gesundheit', 0),
								('/6/1/',	N'Apotheke / Medikamente', 0),
								('/6/2/',	N'Arztbehandlung', 0),
								('/6/3/',	N'Brille / Kontaktlinsen', 0),
								('/6/4/',	N'Krankenhaus', 0),
								('/6/5/',	N'Sonstige Gesundheit', 0)
								
	insert #categories values	('/7/',		N'Kinder', 0),
								('/7/1/',	N'Freizeitaktivitäten Kinder', 0),
								('/7/2/',	N'Kinderbekleidung', 0),
								('/7/3/',	N'Kinderbetreuung', 0),
								('/7/4/',	N'Pflegeprodukte Kinder', 0),
								('/7/5/',	N'Schulausflug', 0),
								('/7/6/',	N'Schulgeld', 0),
								('/7/7/',	N'Spielwaren', 0),
								('/7/8/',	N'Taschengeld', 0),
								('/7/9/',	N'Unterhaltszahlungen', 0),
								('/7/10/',	N'Sonstige Kinder', 0)
								
	insert #categories values	('/8/',		N'Kommunikation', 0),
								('/8/1/',	N'Abonnements', 0),
								('/8/2/',	N'Post', 0),
								('/8/3/',	N'Telefon / Internet / Fernsehen', 0),
								('/8/4/',	N'Sonstige Kommunikation', 0)
								
	insert #categories values	('/9/',		N'Lebenshaltung', 0),
								('/9/1/',	N'Bücher / Musik / DVDs', 0),
								('/9/2/',	N'Elektronik / Computer', 0),
								('/9/3/',	N'Frisör / Wellness / Schönheitspflege', 0),
								('/9/4/',	N'Geschenke / Spenden', 0),
								('/9/5/',	N'Hygieneartikel / Reinigungsmittel', 0),
								('/9/6/',	N'Kleidung / Schuhe', 0),
								('/9/7/',	N'Kosmetik / Parfümerie', 0),
								('/9/8/',	N'Lebensmittel / Getränke', 0),
								('/9/9/',	N'Tiere', 0),
								('/9/10/',	N'Uhren / Schmuck', 0),
								('/9/11/',	N'Sonstige Lebenshaltung', 0)
								
	insert #categories values	('/10/',	N'Reise', 0),
								('/10/1/',	N'Hotel / Unterkunft', 0),
								('/10/2/',	N'Mietwagen', 0),
								('/10/3/',	N'Pauschalreise', 0),
								('/10/4/',	N'Reisekosten (Flug/Bahn/Schiff)', 0),
								('/10/5/',	N'Urlaubskasse', 0),
								('/10/6/',	N'Sonstige Reise', 0)
								
	insert #categories values	('/11/',	N'Sparen und Anlegen', 0),
								('/11/1/',	N'Altersvorsorge', 0),
								('/11/2/',	N'Bausparen', 0),
								('/11/3/',	N'Geldanlage', 0),
								('/11/4/',	N'Wertpapieranlage', 0),
								('/11/5/',	N'Sonstige Sparen und Anlegen', 0)
								
	insert #categories values	('/12/',	N'Versicherungen', 0),
								('/12/1/',	N'Berufsunfähigkeitsversicherung', 0),
								('/12/2/',	N'Haftpflichtversicherung', 0),
								('/12/3/',	N'Hausratversicherung', 0),
								('/12/4/',	N'Krankenversicherung', 0),
								('/12/5/',	N'Lebens-/Rentenversicherung', 0),
								('/12/6/',	N'Pflegeversicherung', 0),
								('/12/7/',	N'Rechtsschutzversicherung', 0),
								('/12/8/',	N'Unfallversicherung', 0),
								('/12/9/',	N'Zusatzversicherung', 0),
								('/12/10/',	N'Sonstige Versicherungen', 0)
								
	insert #categories values	('/13/',	N'Wohnen', 0),
								('/13/1/',	N'Garten', 0),
								('/13/2/',	N'Haus-/Baufinanzierung', 0),
								('/13/3/',	N'Haushaltshilfe', 0),
								('/13/4/',	N'Haushaltswaren / Haushaltsgeräte', 0),
								('/13/5/',	N'Miete', 0),
								('/13/6/',	N'Möbel / Wohnaccessoires', 0),
								('/13/7/',	N'Renovierung / Instandhaltung', 0),
								('/13/8/',	N'Sonstige Nebenkosten', 0),
								('/13/9/',	N'Strom / Wasser / Gas / Heizkosten', 0),
								('/13/10/',	N'Sonstige Wohnen', 0)
								
	insert #categories values	('/14/',	N'Unkategorisierte Ausgaben', 0),
								('/14/1/',	N'Abgaben / Gebühren', 0),
								('/14/2/',	N'Unkategorisierte Überweisung', 0),
								('/14/3/',	N'Sonstige Unkategorisierte Ausgaben', 0)
								
	insert #categories values	('/15/',	N'Einnahmen', 1),
								('/15/1/',	N'Ausbildungsförderung', 1),
								('/15/2/',	N'Auszahlung / Verkauf Anlage', 1),
								('/15/3/',	N'Bargeldeinzahlungen', 1),
								('/15/4/',	N'Bonuszahlungen / Tantieme', 1),
								('/15/5/',	N'Einnahmen aus Verkäufen', 1),
								('/15/6/',	N'Erhaltene Unterhaltszahlungen', 1),
								('/15/7/',	N'Kredit', 1),
								('/15/8/',	N'Lohn / Gehalt', 1),
								('/15/9/',	N'Mieteinnahmen', 1),
								('/15/10/',	N'Rente / Pension', 1),
								('/15/11/',	N'Staatliche Leistungen & Zuschüsse', 1),
								('/15/12/',	N'Steuerrückerstattungen', 1),
								('/15/13/',	N'Zinsen / Dividenden', 1),
								('/15/14/',	N'Sonstige Einnahmen', 1)
								
	insert #categories values	('/16/',	N'Aus Auswertungen ausschließen', null),
								('/16/1/',	N'Kreditkartenabrechnung', null),
								('/16/2/',	N'Übertrag', null),
								('/16/3/',	N'Sonstige Aus Auswertungen ausschließen', null)

	merge dbo.Categories t
		using #categories s
			on s.Id = t.Id
		when not matched then
			insert (Id, Name, Type)
				values (s.Id, s.Name, s.Type);