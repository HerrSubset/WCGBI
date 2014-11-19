class KASSA

create maken

feature
   dranken : REAL
   spijzen : REAL

feature maken
   do
   	dranken := 0
   	spijzen := 0
   end

feature dranken_verkoop (bedrag : REAL)
   do
	  dranken:=dranken+bedrag
   end

feature spijzen_verkoop (bedrag : REAL)
   do
	  spijzen:=spijzen+bedrag
   end

feature reset()
   do
      spijzen := 0
      dranken := 0
   end

feature totaal_verkoop : REAL
   do
	  Result:=dranken+spijzen
   end


end
