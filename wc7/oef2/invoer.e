class INVOER

create maken

feature
		een_cirkel : CIRKEL

feature maken
	do
		print("Geef de straal van de cirkel : ")
		io.read_real
		create een_cirkel.maken(io.last_real)
	end

end
