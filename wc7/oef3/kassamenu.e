class KASSAMENU

creation maken

feature
   mijn_kassa:KASSA

feature maken (k: KASSA)
   do
	  mijn_kassa := k

   end


feature uitvoeren
   do
	from
	   toon_keuze
	   lees_keuze
	until
	   stop_keuze
	loop
      verwerk_keuze
      toon_keuze
      lees_keuze
	end

 end


feature toon_keuze
   do
      print("%N Maak een keuze uit het volgende: ")
      print("%N 1. Verkoop Spijzen")
      print("%N 2. Verkoop Dranken")
      print("%N 3. Totaalverkoop tonen")
      print("%N 4. Kassa herzetten op nul")
      print("%N 0. Stoppen")
   end


feature stop_keuze: BOOLEAN
   do
   	Result := io.last_integer = 0

   end


feature verwerk_keuze
   do
	if io.last_integer = 1 then
		spijzen_invoeren
	elseif io.last_integer = 2 then
		dranken_invoeren
	elseif io.last_integer = 3 then
      totaal_tonen
   elseif io.last_integer = 4 then
      kassa_herzetten
	else
		-----------------------------------
	end--if
   end -- verwerk_keuze


feature lees_keuze
   do
	  print("%NGeef je keuze: ")
     io.read_integer
   end


feature geldige_keuze : BOOLEAN
   do
   	if ((io.last_integer >= 0) and (io.last_integer <=4) ) then
         Result:=True
   	else
         Result:=False
      end
   end


feature spijzen_invoeren
   do
      print("Verkoopsverrichting voor Spijzen.")
      io.read_real
      mijn_kassa.spijzen_verkoop(io.last_real)
      print("Het totaalbedrag voor Spijzen is: ")
      io.put_real(mijn_kassa.spijzen)
   end


feature dranken_invoeren
   do
      print("Verkoopsverrichting voor Dranken.")
      io.read_real
      mijn_kassa.dranken_verkoop(io.last_real)
      print("Het totaalbedrag voor Dranken is: ")
      io.put_real(mijn_kassa.dranken)
   end

feature kassa_herzetten
   do
      mijn_kassa.reset
   end



feature totaal_tonen
   do
      print("%N")
      print("Dit is het totaal verkoopsbedrag: ")
      io.put_real(mijn_kassa.totaal_verkoop)
      print("%N")
   end


end
