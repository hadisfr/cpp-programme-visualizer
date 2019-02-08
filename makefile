all: a.out

a.out:
	g++ -fsanitize=address -Wextra -Wall -pedantic -std=c++11 src.cpp

.PHONY: demo
demo: a.out
	./a.out courses.csv "Prog" < input.txt > output.txt

.PHONY: clean
clean:
	rm a.out