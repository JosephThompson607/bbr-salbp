
# To use this makefile, do the following:
# 1. Update $(SRCS) to reflect the list of files you want to compile
# 2. Set $(OBJDIR) to the directory in which you want the intermediate files to be placed (and 
#    make sure the directory exists)
# 3. Change $(EXEC) to be the name you want for your executable

OBJS = $(OBJDIR)/bbr.o $(OBJDIR)/best_first_bbr.o $(OBJDIR)/bfs_bbr.o $(OBJDIR)/bin_packing.o $(OBJDIR)/hoffman.o $(OBJDIR)/io.o $(OBJDIR)/memory.o
TARGETS = /bbr

# You can leave this stuff alone for the most part; it sets the right C++ standard, tells the
# compiler to print output nicely, and prints some useful warning messages

CC = g++ 
#CFLAGS = -DOUTPUT_SEARCH  #displays info
#CFLAGS = 
STD = -std=c++0x -Wall
FORMAT = -fmessage-length=100 
WARNINGS = -Wempty-body -Wall -Wno-sign-compare
DEBUGFLAGS = -g -pg
OPTFLAGS = -O2
OBJDIR = obj
#-DNDEBUG -> elimina asserts
#DEBUGLEVEL 0 -> no debugging information
#DEBUGLEVEL 1 -> print some debugging information

CC = g++

all: $(TARGETS) 

clean: 
	rm -f $(OBJS) $(TARGETS)

$(OBJDIR)/bbr.o : bbr.cpp
	$(CC) -c $(STD) $(CFLAGS) bbr.cpp -o $(OBJDIR)/bbr.o

$(OBJDIR)/best_first_bbr.o : best_first_bbr.cpp
	$(CC) -c $(STD) $(CFLAGS) best_first_bbr.cpp -o $(OBJDIR)/best_first_bbr.o

$(OBJDIR)/bfs_bbr.o : bfs_bbr.cpp
	$(CC) -c $(STD) $(CFLAGS) bfs_bbr.cpp -o $(OBJDIR)/bfs_bbr.o

$(OBJDIR)/bin_packing.o : bin_packing.cpp
	$(CC) -c $(STD) $(CFLAGS) bin_packing.cpp -o $(OBJDIR)/bin_packing.o

$(OBJDIR)/hoffman.o : hoffman.cpp
	$(CC) -c $(STD) $(CFLAGS) hoffman.cpp -o $(OBJDIR)/hoffman.o

$(OBJDIR)/io.o : io.cpp
	$(CC) -c $(STD) $(CFLAGS) io.cpp -o $(OBJDIR)/io.o

$(OBJDIR)/memory.o : memory.cpp
	$(CC)  -c $(STD) $(CFLAGS)  memory.cpp -o $(OBJDIR)/memory.o

/bbr: $(OBJS)
	$(CC) $(STD) $(CFLAGS) $(OBJS) -o bbr



