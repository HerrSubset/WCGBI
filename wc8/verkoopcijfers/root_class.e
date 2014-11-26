class ROOT_CLASS

create make

feature namen:ARRAY[STRING]
	cijfers:ARRAY[REAL]
	werknemers:INTEGER

feature make
do
	werknemers := vraagaantalwerknemers
	create namen.make(1,werknemers)
	voernamenin
	printnamen
end

feature invoeren
	local i:INTEGER
do
	from
		i:=1
	until
		i>werknemers
	loop
		print("%N Geef verkoopscijfers voor verkoper ")
		io.put_integer(i);
		print(": ")
		io.read_real
		cijfers.put(io.last_real,i)
		i:=i+1
	end--loop
	print("%NGegevens ingevoerd.%N")
end

feature uitvoeren
	local i: INTEGER
	do
		from i:= 1
		until i>werknemers
		loop
			print("Gegevens voor verkoper ")
			io.put_integer(i)
			print(":%N")
			io.put_real(cijfers.item(i))
			print("%N")
			i:=i+1
		end
	end

feature omgekeerduivoerene
	local i: INTEGER
	do
		from
			i:=werknemers
		until
			i<1
		loop
			print("Gegevens voor verkoper ")
			io.put_integer(i)
			print(":%N")
			io.put_real(cijfers.item(i))
			print("%N")
			i:=i-1
		end

	end

feature vraagaantalwerknemers:INTEGER
	do
		print("geef het aantal werknemers: ")
		io.read_integer
		Result := io.last_integer
	end

feature getsom:REAL
	local tmp:REAL
		i:INTEGER
	do
		from
			i:=1
		until
			i>werknemers
		loop
			tmp:= tmp+ cijfers.item(i)
			i:=i+1
		end

		Result:= tmp

	end

feature getgemiddelde:REAL
	do
		Result := getsom / werknemers
	end

feature voernamenin
	local i:INTEGER
	do
		from
			i:=1
		until
			i>werknemers
		loop
			print("Geef een naam: ")
			io.read_line
			namen.put(io.last_string.twin, i)
			i:=i+1
		end

	end

feature printnamen
	local i:INTEGER
	do
		from
			i:=1
		until
			i>werknemers
		loop
			print("Werknemer ")
			io.put_integer(i)
			print(":")
			print(namen.item(i))
			print("%N")
			i:=i+1
		end

	end

end
