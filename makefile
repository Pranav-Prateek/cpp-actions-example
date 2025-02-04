# Compiler
CXX = g++
CXXFLAGS = -Wall -Werror -std=c++17

# Output program name
TARGET = my_program

# Source files
SRCS = main.cpp helper.cpp
OBJS = $(SRCS:.cpp=.o)

# Default rule to build the program
all: $(TARGET)

# Link object files to create the final executable
$(TARGET): $(OBJS)
	$(CXX) $(OBJS) -o $(TARGET)

# Compile each .cpp file into an object (.o) file
%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Clean up compiled files
clean:
	rm -f $(OBJS) $(TARGET)

# Rebuild the entire project
rebuild: clean all
