class ROOT_CLASS
	create make

	feature     koeienrij: ARRAY[KOE]
				vleeslijst: LINKED_LIST[REAL]
				menu: BOERDERIJ_MENU
				koe1, koe2, koe3 : KOE

	feature make
	do
		print("Welkom bij Lachterij.%N%T U heeft honger? Wij slachten met een lach!")
		print("Hoeveel stallen heeft u? ")
		io.read_int
		--cre�er de koeienrij met dit aantal stallen. Begin te tellen vanaf hok 1.
		create koeienrij.make(1, io.last_int)
		--Stop onderstaande koeien al in een stal. Later bij het uitvoeren van het menu kan je meer koeien toevoegen.
		create koe1.baar(10,"Bella")
		koeienrij.put(koe1.1)
		create koe2.baar(15, "Jozefin")
		koeienrij.put(koe2, 2)
		create koe3.baar(12, "Jackie")
		koeienrij.put(koe3, 3)
		--cre�er de vleeslijst
		create vleeslijst.make
		vleeslijst.extend(8.)
		vleeslijst.extend(3.)
		vleeslijst.extend(5.)
		vleeslijst.extend(6.)
        --Stop al 4 biefstukken in de vleeslijst, elk met een verschillend gewicht.

		--cre�er het boerderijmenu (denk aan de parameters!)
		--start de uitvoering van het boerderijmenu

		print("%NHet programma is succesvol afgesloten.")

	end--make

end--class ROOT_CLASS
