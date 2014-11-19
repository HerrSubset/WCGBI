class UITVOER

create {ANY} maken

feature {ANY} boer: BOERDERIJ

feature {ANY} maken (b: BOERDERIJ)
do
   boer:= b
end--maken

feature {ANY} tonen
do
	print("%N")
	print("De gemiddelde leeftijd van de varkens "+ boer.vark1.naam +" , " + boer.vark2.naam + " en " + boer.vark3.naam + " is ")
	io.put_real(boer.gem_leeftijd)
	print(" jaar.%N")
 	print("Hun gemiddelde gewicht is ")
	io.put_real(boer.gem_gewicht)
	print(" kg.")
end--tonen

end--class UITVOER
