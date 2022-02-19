
simul: clean
	# Agregan el nombre del resto de archivos del proyecto, incluyendo el testbench del diseño
	(cd src; iverilog design.v testbench.v \
		-o ../build/simul)
	(cd build; ./simul)

synth: simul
	# No se incluyen los testbench 
	# en el paso de "synth" se debe cambiar el nombre del módulo top por el de su proyecto
	(cd src; yosys -p "read_verilog \
			design.v; \
		 	synth -top mux4a1Bus;\
			write_json ../build/diagram.json;\
			write_verilog ../build/post-synth.v")
	# genera una imagen 
	(cd build; netlistsvg diagram.json --skin ../teros-skin.svg)

synth_simul: synth
	(cd build; iverilog post-synth.v ../src/testbench.v -o synth_simul; ./synth_simul)

clean:
	rm -rf build
	mkdir build 


