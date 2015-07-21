CC=gcc
CXX=g++
RM=rm -f
CPPFLAGS=-g -Wall
LDFLAGS=-g 
#LDLIBS=

SRCS=1.cpp 2.cpp 3.cpp  main.cpp
OBJS=$(subst .cpp,.o,$(SRCS))

TARGET=test

all: $(TARGET) 

$(TARGET): $(OBJS)
	$(CXX) $(LDFLAGS) -o $(TARGET) $(OBJS) $(LDLIBS) 

%.o: %.cpp
	$(CXX) $(CPPFLAGS) -c $<

clean:
	$(RM) $(OBJS)

dist-clean: clean
	$(RM) $(TARGET)

#reader:
#	make -C libudis86
