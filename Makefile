CPPFLAGS = -std=c++11

all : sequential_dfs parallel_dfs

sequential_dfs : sequential_dfs.cpp
	g++ -g -o sequential sequential_dfs.cpp ${CPPFLAGS}

parallel_dfs : parallel_dfs.cu
	nvcc -G -g -o parallel parallel_dfs.cu

clean :
	-rm -rf sequential parallel
