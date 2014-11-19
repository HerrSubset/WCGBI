class
	ROOT_CLASS

create
	make

feature	make
	do
		uitvoeren
	end--make


feature uitvoeren
   local stop:BOOLEAN
      keuze : INTEGER
   do
      from stop := False
      until stop = True
      loop
         toon_keuze
         keuze := lees_keuze
         if geldige_keuze(keuze) then
            if stop_keuze(keuze) then
               stop := True
            else
               verwerk_keuze(keuze)
            end
         else
            print("Foutiefe keuze, probeer opnieuw.%N")
         end
      end

	  print("Het systeem wordt beeindigd%N")
   end --uitvoeren


feature toon_keuze
	do
	  print("%N Maak een keuze uit volgende mogelijkheden :%N")
     print("1. Kwik%N")
     print("2. Kwek%N")
     print("3. Kwak%N")
     print("0. Stop%N")
	end

feature stop_keuze(keuze:INTEGER) :BOOLEAN
	do
      Result := keuze = 0

	end


feature lees_keuze : INTEGER
	do
      print("Geef je keuze: ")
      io.read_integer
      Result := io.last_integer
	end


feature geldige_keuze(keuze:INTEGER) :BOOLEAN
	do
      Result := (keuze >=0) and (keuze <= 3)
	end



feature verwerk_keuze(keuze:INTEGER)
	do
      if (keuze = 1) then
         print("Kwik")
      elseif (keuze = 2) then
         print("Kwek")
      elseif (keuze = 3) then
         print("Kwak")
      end

      print("%N")
	end

end
