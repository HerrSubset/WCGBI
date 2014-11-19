class CIRKELSYSTEEM

create make

feature
	--declareer een invoer, uitvoer en cirkelobject
   inv: INVOER
   uit: UITVOER
   c1: CIRKEL

feature make
	do
		maak_cirkel
		bereken
		toon_resultaten
	end

feature maak_cirkel
	do
		create inv.maken
      c1 := inv.een_cirkel.twin
	end

feature bereken
	do
		c1.bereken_omtrek
      c1.bereken_oppervlakte
	end

feature toon_resultaten
	do
		create uit.maken(c1)

	end

end
