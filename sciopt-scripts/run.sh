
ERR=0.1

COMPRESSOR=IABS.BIT_4

FILE=${COMPRESSOR}.compressor.cpp

OUT_DIR=sciopt-processed/${COMPRESSOR}/${ERR}_EB

FULLPATH=sciopt-compressors/$FILE

mkdir -p $OUT_DIR

g++ -O3 -march=native -fopenmp -mno-fma -ffp-contract=off -I. -std=c++17 -DERRBND=${ERR} -o compress $FULLPATH



FILESTUB=test

IN_FILE=sciopt-data/reaction_diffusion_${FILESTUB}_functions.bin
OUT_FILE=${OUT_DIR}/reaction_diffusion_${FILESTUB}_functions.double.bin

./compress $IN_FILE $OUT_FILE


FILESTUB=training

IN_FILE=sciopt-data/reaction_diffusion_${FILESTUB}_functions.bin
OUT_FILE=${OUT_DIR}/reaction_diffusion_${FILESTUB}_functions.double.bin

./compress $IN_FILE $OUT_FILE

