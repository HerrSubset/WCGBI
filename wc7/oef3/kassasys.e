class KASSASYS

creation make

feature
   mijn_kassa: KASSA
   kassamenu : KASSAMENU


feature make
   do

	create mijn_kassa.maken
	create kassamenu.maken(mijn_kassa)
	kassamenu.uitvoeren

	print("%N Het kassasysteem wordt beindigd%N")
   end -- maken


end -- class KASSASYS
