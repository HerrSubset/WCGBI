class UITVOER

create maken

feature
	mijn_cirkel : CIRKEL

feature maken (cirkel_in : CIRKEL)
	do
		mijn_cirkel := cirkel_in.twin
      toon_oppervlakte
      toon_omtrek
	end

feature toon_oppervlakte
	do
		print("%NDe oppervlakte van de cirkel is ")
		io.put_real(mijn_cirkel.oppervlakte)
	end

feature toon_omtrek
	do
		print("%NDe omtrek van de cirkel is ")
		io.put_real(mijn_cirkel.omtrek)
	end

end
