class WC6

create {ANY} make

feature {ANY} make
   do
      menu
   end

feature {ANY} zetpuntjes(n:INTEGER;enter:BOOLEAN)
   local i: INTEGER
   do
      from i:=0
      until i = n
      loop
         print(".")
         i:= i+1
      end
      if enter then print("%N") end
   end

feature {ANY} vraaggetal: INTEGER
   local stop:BOOLEAN
   do
      from stop := False
      until stop = True
      loop
         print("Geef een positief getal: ")
         io.read_integer
         if (io.last_integer >= 0) then
            Result := io.last_integer
            stop := True
         else
            print("Het getal was negatief, geef een positief getal in.%N")
         end

      end
   end

feature {ANY} toonblok(hoogte, breedte:INTEGER)
   local i:INTEGER
   do
      from i:= 0
      until i = hoogte
      loop
         zetpuntjes(breedte, True)
         i:=i+1
      end
   end

feature {ANY} toon_driehoek(grootte:INTEGER)
   local i:INTEGER
   do
      from i := 1
      until i > grootte
      loop
         zetpuntjes(i, True)
         i:= i+1
      end
   end

feature {ANY} isdeler(a,b:INTEGER)
   do
      if (a = 0) then
         print("Je mag niet door nul delen.%N")
      else
         if (b\\a = 0) then
            io.put_integer(a)
            print(" is een deler van ")
            io.put_integer(b)
            print("%N")
         else
            io.put_integer(a)
            print(" is geen deler van ")
            io.put_integer(b)
            print("%N")
         end
      end
   end


feature {ANY} mag_ik_stemmen_op_tabbock (p:STRING; l:INTEGER)
   do
      if ( (l > 18) and ( (p.is_equal("Leuven")) or (p.is_equal("leuven")))) then
         print("Je mag op Tabbock stemmen%N")
      else
         print("Je mag niet op Tabbock stemmen%N")
      end
   end

feature {ANY} vraagstring(m:STRING) :STRING
   do
      print(m)
      print(": ")
      io.read_line
      Result := io.last_string.twin
   end

feature {ANY} vraagleeftijd:INTEGER
   do
      print("Geef je leeftijd: ")
      io.read_integer
      Result := io.last_integer
   end

feature {ANY} honderdveld
   local i,j:INTEGER
   do
      from i:= 0
      until i = 10
      loop
         from j:=1
         until j > 10
         loop
            io.put_integer((i*10) + j)
            print("%T")
            j := j+1
         end
         print("%N")
         i:=i+1
      end
   end

feature {ANY} fancyrij (l,p:INTEGER)
   do
      zetpuntjes(p-1, False)
      print("X")
      zetpuntjes(l-p, True)
   end

feature {ANY} menu
   local stop:BOOLEAN
   do
      from stop := False
      until stop = True
      loop
         printmenu
         io.read_integer
         if(io.last_integer = 1) then
            zetpuntjes(10, True)
         elseif(io.last_integer = 2) then
            zetpuntjes(vraaggetal, True)
         elseif(io.last_integer = 3) then
            toonblok(vraaggetal, vraaggetal)
         elseif (io.last_integer = 4) then
            toon_driehoek(vraaggetal)
         elseif (io.last_integer = 0) then
            stop := True
         else
            print("Ongeldige keuze, probeer opnieuw.%N")
         end
      end
   end

feature {ANY} printmenu
   do
      print("1. Toon 10 puntjes%N")
      print("2. Toon willekeurig aantal puntjes.%N")
      print("3. Toon een rechthoek van puntjes.%N")
      print("4. Toon een driehoek van puntjes.%N")

      print("%N0. Exit.%N")
   end

end
