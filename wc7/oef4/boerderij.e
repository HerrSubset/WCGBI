class BOERDERIJ

create {ANY} make

feature {ANY} vark1, vark2, vark3 : VARKEN


feature {ANY} make (v1,v2,v3: VARKEN)
do
		vark1:=v1
		vark2:=v2
		vark3:=v3
end--make


feature {ANY} gem_gewicht : REAL
do
   Result := (vark1.gewicht + vark2.gewicht + vark3.gewicht) / 3
end--gem_gewicht

feature {ANY} gem_leeftijd : REAL
do
   Result := (vark1.leeftijd + vark2.leeftijd + vark3.leeftijd) / 3
end--gem_leeftijd


end--class BOERDERIJ
