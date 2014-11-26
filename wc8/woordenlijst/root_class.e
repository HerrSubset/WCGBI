class ROOT_CLASS

	create make

	feature
		woordenlijst: LINKED_LIST[STRING]

	feature make do
		create woordenlijst.make
		vullijst
		toonlijst
	end

	feature toonlijst do
		from
			woordenlijst.go_i_th(1)
		until
			woordenlijst.after
		loop
			print(woordenlijst.item)
			woordenlijst.forth
		end--loop
	end--toonlijst


	feature vullijst do
		from
			print("Geef de woorden van de woordenlijst in, gescheiden door enter. %"Stop%" om te stoppen.%N")
			io.read_line
		until
			io.last_string.equals("Stop")
		loop
			woordenlijst.extend(io.last_string.twin)
			io.read_line
		end--loop
	end--vullijst

end--class ROOT_CLASS
