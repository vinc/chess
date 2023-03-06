all: book.pgn cutechess-cli bayeselo achillees mora robocide sayuri spacedog stockfish sungorus

book.pgn:
	wget "https://github.com/official-stockfish/books/raw/master/noob_3moves.pgn.zip"
	unzip -j noob_3moves.pgn.zip
	mv noob_3moves.pgn book.pgn
	rm noob_3moves.pgn.zip

bayeselo:
	wget "https://www.remi-coulom.fr/Bayesian-Elo/bayeselo.tar.bz2"
	tar xvf bayeselo.tar.bz2
	cd BayesElo && sed -i "606,633s/5/6/" CEloRatingCUI.cpp && make
	mv BayesElo/bayeselo .
	rm -rf BayesElo bayeselo.tar.bz2

cutechess-cli:
	wget "https://github.com/cutechess/cutechess/releases/download/1.2.0/cutechess-cli-1.2.0-linux64.tar.gz"
	tar xvf cutechess-cli-1.2.0-linux64.tar.gz
	mv cutechess-cli cutechess-cli-1.2.0
	cp cutechess-cli-1.2.0/cutechess-cli .
	rm -rf cutechess-cli-1.2.0*

achillees:
	wget "https://github.com/Tempate/Achillees/archive/refs/tags/chess.zip"
	unzip chess
	cd Achillees-chess && make
	cp Achillees-chess/bin/Achillees achillees
	rm -rf chess.zip Achillees-chess

mora:
	wget "https://github.com/gonzaloarro/MORA-CHESS-ENGINE/releases/download/v1.1.0/MORA_linux_1.1.0"
	mv MORA_linux_1.1.0 mora
	chmod u+x mora

robocide:
	wget "https://github.com/DanielWhite94/robocide/releases/download/v0.1/robocidev0.1x64POPCNT"
	mv robocidev0.1x64POPCNT robocide
	chmod u+x robocide

sayuri:
	wget "https://github.com/MetalPhaeton/sayuri/raw/master/SayuriCompiled/Linux/For64Bit/sayuri-2018.05.23-linux-64bit.tar.gz"
	tar xvf sayuri-2018.05.23-linux-64bit.tar.gz
	mv sayuri-2018.05.23-linux-64bit/sayuri .
	rm -rf sayuri-2018.05.23-linux-64bit*

spacedog:
	wget "https://github.com/thorsilver/SpaceDog/releases/download/v0.97.7/SpaceDog-Linux"
	mv SpaceDog-Linux spacedog
	chmod u+x spacedog

stockfish:
	wget "https://stockfishchess.org/files/stockfish_15.1_linux_x64_popcnt.zip"
	unzip stockfish_15.1_linux_x64_popcnt.zip
	cp stockfish_15.1_linux_x64_popcnt/stockfish-ubuntu-20.04-x86-64-modern stockfish
	rm -rf stockfish_15.1_linux_x64_popcnt*

sungorus:
	wget "https://sites.google.com/site/sungorus/home/sungorus-1.4.zip"
	unzip sungorus-1.4.zip
	mv sungorus-1.4/bin/sungorus64 sungorus
	rm -rf sungorus-1.4 sungorus-1.4.zip
