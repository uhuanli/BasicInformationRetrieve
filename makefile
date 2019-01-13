all: buildIndex searchQuery
buildIndex: source/InvertedIndex.h source/buildIndex.cpp \
            source/CBtreeFunc.cpp source/CBtreeH.h \
            source/Btree.h source/Btree.cpp
	g++ -o buildIndex source/buildIndex.cpp
searchQuery: source/InvertedIndex.h source/searchQuery.cpp
	g++ -o searchQuery source/searchQuery.cpp
clean:
	@(rm -rf searchQuery buildIndex ./index)
