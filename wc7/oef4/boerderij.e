class BOERDERIJ

create make

feature vark1, vark2, vark3 : VARKEN


feature make (v1,v2,v3: VARKEN)
do
		vark1:=v1
		vark2:=v2
		vark3:=v3
end--make


feature gem_gewicht : DOUBLE
do
   Result := (vark1.gewicht + vark2.gewicht + vark3.gewicht) / 3
end--gem_gewicht

feature gem_leeftijd : REAL
do
   Result := (vark1.leeftijd + vark2.leeftijd + vark3.leeftijd) / 3
end--gem_leeftijd


end--class BOERDERIJ
