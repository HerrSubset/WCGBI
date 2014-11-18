class WC6

create make

feature make
   do
      zetpuntjes(vraaggetal)
   end

feature zetpuntjes(n:INTEGER)
   local i: INTEGER
   do
      from i:=0
      until i = n
      loop
         print(".")
         i:= i+1
      end
      print("%N")
   end

feature vraaggetal: INTEGER
   do
      print("Geef een getal: ")
      io.read_integer
      Result := io.last_integer
   end

end
