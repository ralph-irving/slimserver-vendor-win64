PRODUCT := socketwrapper.exe

CXX := g++
LINKER := g++
INCDIRS := -I.
CXXFLAGS := -s -O2 -Wall -Wextra

SRCFILES := $(wildcard *.cpp) 
OBJFILES := $(patsubst %.cpp,%.o,$(SRCFILES))
DEPFILES := $(patsubst %.cpp,%.d,$(SRCFILES))

$(PRODUCT): $(OBJFILES)
	$(LINKER) -s $^ -o $@ -lws2_32 -static

%.o: %.cpp
	$(CXX) $(CXXFLAGS) $(INCDIRS) -c $< -o $@

%.d: %.cpp
	$(CXX) $(INCDIRS) -MM $< > $@

-include $(DEPFILES)

clean:
	-rm $(OBJFILES) $(DEPFILES) $(PRODUCT)
