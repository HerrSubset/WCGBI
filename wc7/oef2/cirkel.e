class CIRKEL

create maken

feature
	straal : REAL
	omtrek : REAL
	oppervlakte : REAL
	pi : REAL

feature maken (straal_in : REAL)
	do
      pi := 3.1415
		straal := straal_in
	end

feature bereken_omtrek
	do
		omtrek := 2* pi * straal
	end

feature bereken_oppervlakte
	do
		oppervlakte := straal*straal * pi
	end

end
