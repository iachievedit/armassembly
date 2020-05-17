TARGETS=helloworld \
        countdown  \
        countup    \
        printmem   \
        fibmain    \
        averagemain

all:	$(addprefix bin/, $(TARGETS))
clean:
	rm -f bin/*

bin/helloworld:	helloworld.s
	gcc $^ -o $@

bin/countdown:  countdown.s
	gcc $^ -o $@

bin/countup:	countup.s
	gcc $^ -o $@

bin/printmem:	printmem.s
	gcc $^ -o $@

bin/fibmain:	fibmain.c fib.s
	gcc $^ -o $@

bin/averagemain:	averagemain.c average.s
	gcc $^ -o $@
