class ROOT_CLASS

create make

feature
   boer: BOERDERIJ
   inv: INVOER
   uit: UITVOER

feature make
do
		boerderij_aanmaken
		gegevens_tonen
end--make

feature boerderij_aanmaken
local v1,v2,v3 : VARKEN
do
		create inv.maken
      v1 := inv.v.twin
      inv.maken
      v2 := inv.v.twin
      inv.maken
      v3 := inv.v.twin
      create boer.make(v1,v2,v3)

end--boerderij_aanmaken

feature gegevens_tonen
do
   create uit.maken(boer)
   uit.tonen


end--gegevens_tonen

end--ROOT_CLASS
