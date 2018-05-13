CC = gcc
CFAGS = -Wall


all:
	gcc test.c
	@echo a.out executed in all 
	@echo
	@./a.out
compile: test.c
	gcc $^
	@echo a.out executed in complie
	@echo 
	@./a.out
result.out: test.c
	gcc $^ -o $@
	@echo result.out executed in result.out
	@echo
	@./result.out

flag: 
	$(CC) $(CFAGS) test.c
	@echo a.out executed in flag
	@echo
	@./a.out
