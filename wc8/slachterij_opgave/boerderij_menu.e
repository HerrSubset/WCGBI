class BOERDERIJ_MENU

	create bouwen

	feature stal:ARRAY[KOE] --rij van koe-objecten
			biefstukken: LINKED_LIST[REAL] --lijst van het gewicht van biefstukken in gram(!)

	feature bouwen ----------------
	do
		--de boerderij krijgt een rij en lijst bij de creatie
		--dit worden de stal en de biefstukken
	end--bouwen

	feature uitvoeren
	do
		from
			toon_opties
			lees_correcte_keuze
		until
			--stopconditie
		loop
			behandel_keuze
			toon_opties
			lees_correcte_keuze
		end--loop
		geef_eindoverzicht
	end--uitvoeren

	feature toon_opties
	do
		print("%N%N%NGeef een keuze:%N")
		print("%N0. Stop")
		print("%N1. Koop een nieuw kalf")
		print("%N2. Laat alle koeien groeien")
		print("%N3. Geef een overzicht van de stallen")
		print("%N4. Geef een overzicht van de biefstukken")
		print("%N5. Slacht een koe")
		print("%N6. Por een koe en laat ze loeien%N")
	end-toon_opties

	feature lees_correcte_keuze
	do
		--lees een keuze
		--controleer of deze geldig is
		--zo nee, vraag opnieuw een keuze tot deze wel geldig is
		--hint: gebruik een loop
	end--lees_correcte_keuze

	feature behandel_keuze
	do
		if io.lastint=1 then
			koopKalf
		elseif io.lastint=2 then
			verjaar
		elseif io.lastint=3 then
			stallenOverzicht
		elseif io.lastint=4 then
			biefstukkenOverzicht
		elseif io.lastint=5 then
			slachtKoe
		else
			porKoe
		end--if	
	end--behandel_keuze

	feature koopKalf
	do
		--overloop alle stallen met als stopconditie
           		 --ofwel het einde van de rij(wanneer alle hokken vol zitten),
           		 --ofwel een leeg hok.
		--indien alles vol: niets kopen.
            	--indien een leeg hok : vraag naam, gewicht en maak daarmee een koe die je in de stal stopt.
		--hint: gebruik de functie hieronder gedefinieerd.
	end--koopKalf


	feature isLeeg(hoknummer:INTEGER):BOOLEAN
	do
		result:=stal.item(hoknummer)=VOID
	end--isLeeg

	feature verjaar
	do
		--alle koeien in de stal verjaren
		--let op, als een stal leeg is, kan je geen koe laten verjaren in die stal!
	end--verjaar

	feature stallenOverzicht
	do
		--overloop alle hokken.
		--indien leeg, geef melding.
		--indien bezet, geef naam, leeftijd en gewicht van de koe die in dat hok zit.
	end--stallenOverzicht

	feature biefstukkenOverzicht
	do
		--overloop de lijst met biefstukken.
		--geef het totaalgewicht, het aantal en het gemiddelde gewicht van de biefstukken.
	end--biefstukkenOverzicht

	feature slachtKoe
	do
		--vraag een stalnummer.
		--controleer of hier wel een koe zit.
		--Zo nee, geef een melding.
		--Zo ja, voeg 4 biefstukken toe in de biefstukkenlijst. Een biefstuk heeft als gewicht 0,03% van het gewicht van de koe. 			--Let op: het gewicht van een koe is uitgedrukt in kg, dat van 			--een biefstuk in g.
		--zet hok op VOID (stal is leeg als de koe geslacht is).
	end--slachtKoe

	feature porKoe
	do
		--vraag een stalnummer.
		--controleer of dit een geldig nummer is en of in de stal met dit nummer een koe zit.
		--Indien nee, geef melding.
		--Indien wel, laat de koe in die stal dan loeien. Een koe loeit langer naargelang ze ouder is. Is een koe 0 jaar, dan loeit ze "BOE!". 		--Is een koe 1 jaar, dan loeit ze "BOOE!", enz.
		--Hint: definieer een feature "loei" in de klasse KOE die je hier kan oproepen.
	end--porKoe

	feature eindoverzicht
	do
		--geef een stallenoverzicht en daarna een biefstukkenoverzicht.
	end--eindoverzicht

end--class BOERDERIJ_MENU
