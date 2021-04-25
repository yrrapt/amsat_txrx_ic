.PHONY: xschem xschem_sky130 skywater open_pdks ngspice

directory:
	mkdir -p ~/skywater

xschem:
	sudo apt install libx11-dev libxrender1 libxrender-dev libxcb1 \
						libx11-xcb-dev libcairo2 libcairo2-dev tcl8.6 tcl8.6-dev \
						tk8.6 tk8.6-dev flex bison libxpm4 libxpm-dev gawk
	cd ~/skywater
	rm -rf xschem
	git clone git@github.com:StefanSchippers/xschem.git
	cd xschem
	./configure
	make
	sudo make install

xschem_sky130:
	cd ~/.xschem
	mkdir xschem_library
	cd xschem_library
	git clone git@github.com:StefanSchippers/xschem_sky130.git
	cd xschem_sky130
	cd ~/skywater

skywater:
	cd ~/skywater
	git clone https://github.com/google/skywater-pdk
	cd skywater-pdk
	git submodule init libraries/sky130_fd_io/latest
	git submodule init libraries/sky130_fd_pr/latest
	git submodule init libraries/sky130_fd_sc_hd/latest
	git submodule init libraries/sky130_fd_sc_hdll/latest
	git submodule init libraries/sky130_fd_sc_hs/latest
	git submodule init libraries/sky130_fd_sc_ms/latest
	git submodule init libraries/sky130_fd_sc_ls/latest
	git submodule init libraries/sky130_fd_sc_lp/latest
	git submodule init libraries/sky130_fd_sc_hvl/latest
	git submodule update
	cd libraries
	cp -a sky130_fd_pr sky130_fd_pr_ngspice
	cd sky130_fd_pr_ngspice/latest
	patch -p2 < ~/.xschem/xschem_library/xschem_sky130/sky130_fd_pr.patch

open_pdks:
	cd ~/skywater
	git clone git://opencircuitdesign.com/open_pdks
	cd open_pdks
	./configure --enable-sky130-pdk
	sudo make install

ngspice:
	cd ~/skywater
	git clone git://git.code.sf.net/p/ngspice/ngspice
	cd ngspice
	git checkout pre-master
	./autogen.sh --adms
	mkdir release
	cd release
	../configure --with-x --enable-xspice --disable-debug --enable-cider --with-readline=yes --enable-openmp
	make
	sudo make install

clean:
	rm -rf ~/skywater

all: directory xschem xschem_sky130 skywater open_pdks ngspice
	@echo "Done"