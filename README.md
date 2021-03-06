# Make file example

This is a note for Makefile I made for Konlt to be automated with some commands. 

Let's see a simple source with C Language.

```c
#include <stdio.h>


int main(){
   char test[] = "hellow";
   int i = 0;

   for(i = 0 ; i < 6 ; i++){
       printf("%c ", test[i]);
   }
   printf("\n\n");

   printf("%s\n",test);


   return 0;
}
```

When you make executable file with codes above, type in:

> gcc C_source_file_name

When you type in Makefile, the work above is automated. 

Let's see the basic Makefile sturcture :

```shell
CC = gcc
CFAGS = -Wall

target1 : dependency1 dependency2
  command1
  command2
  
target2 : dependency3 dependency4
  command3
  command4
```

target1 and target2 are files you want to create. 

dependency1, dependency2, dependency3 and dependency4 are material for target file. 

command1, command2, command3 and command4 are commands for creating target. 

If you complie the codes above with Makefile, the Makefile is like this:

```shell
all:
  gcc test.c
  ./a.out # the executable file of test.c file
```

that's it, when you use Makefile. 

But, Let's see Makefile's Macro and syntax a bit. 

Let's see the basic Makefile with Macro and syntax. 

```shell
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
```

the Makefile syntaxs I will deal with are **@**, **$^**, and **$@**. 

Before diving into the syntax. Take a look at CC and CFLAGS macro variable.

i.e. CC and CFLAGS are just variables to avoid the duplication of the variables. 

@ : this sytnax means "don't echo the command on the prompt". 

```shell
all:
        gcc test.c
        @echo a.out executed in all 
```

i.e. In the case above, "@echo a.out executed in all" isn't printed on output. But, the command is executed. 

So If you don't write "@" sign, the reuslt is like this:

> echo a.out executed in all  
> a.out executed in all  

The contrary case to thing above. If you write "@" sign. the result is the following:

> a.out exectued in all

Only one statement is printed like thing above. 

$^ : means all of the dependencies

$@ : means target

```shell
result.out: test.c
        gcc $^ -o $@
```

In here, **$^** is test.c and **$@** is result.out.


# Reference 

 kor ver.
 - [How to complie with GCC](http://bowbowbow.tistory.com/12)
 - [Compile option](http://ibabo.tistory.com/87)
 
 Eng ver.
 - [Stackoverflow's make syntax](https://stackoverflow.com/questions/8610799/what-does-at-symbol-colon-mean-in-a-makefile)
