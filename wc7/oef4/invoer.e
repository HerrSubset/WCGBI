class INVOER

create maken

feature v : VARKEN


feature maken
do
	print("%N")
	print("We gaan nu een varken aanmaken.")
   create v.baar(vraag_leeftijd, vraag_gewicht vraag_naam)
end--maken

feature vraag_naam : STRING
do
   print("%N")
   io.read_line
   Result := io.last_string
end

feature vraag_gewicht: REAL
do
	print("%N")
	print("Wat is het gewicht van je varken?%N")
	io.read_real
	Result:=io.last_real
end

feature vraag_leeftijd: INTEGER
do
   print("%N")
	print("Wat is de leeftijd van je varken?%N")
	io.read_integer
	Result:=io.last_integer
end

end
