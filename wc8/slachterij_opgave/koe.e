class KOE

	create baar

	feature 	gewicht: REAL --in kilogram
				naam: STRING
				leeftijd: INTEGER

	feature baar (g:REAL ; n:STRING)
	do
		gewicht := g
		naam := n.twin
		leeftijd:=0
	end--baar

	feature groei
	do
		leeftijd := leeftijd + 1
		gewicht:= gewicht*1.10 --ieder jaar komt een koe 10% bij
	end--groei


end--class KOE
