
simul: clean
	# Agregan el nombre del resto de archivos del proyecto, incluyendo el testbench del diseño
	(cd src; iverilog mux2a1.v \
		-o ../build/simul)
	(cd build; ./simul)

synth: simul
	# No se incluyen los testbench 
	# en el paso de "synth" se debe cambiar el nombre del módulo top por el de su proyecto
	(cd src; yosys -p "read_verilog \
			mux2a1.v; \
		 	synth_quicklogic -top mux2a1;\
			write_json ../build/diagram.json")
	# genera una imagen 
	(cd build; netlistsvg diagram.json --skin ../teros-skin.svg)

clean:
	rm -rf build
	mkdir build 


