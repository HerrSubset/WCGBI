class VARKEN

create {ANY} baar

feature {ANY}
   gewicht: REAL
   leeftijd : INTEGER
   naam : STRING

baar(l:INTEGER; g: REAL; n :STRING)
   do
      leeftijd := l
      gewicht := g
      naam := n
   end

end
