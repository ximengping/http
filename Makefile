.PHONY:all
all:httpd 

httpd:main.o httpd.o
	gcc -o $@ $^ -lpthread
%.o:%.c
	gcc -c $<


.PHONY:clean
clean:
	rm -rf *.o httpd 


