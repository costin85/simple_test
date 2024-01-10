C_SOURCES :=$(wildcard *.c)
C_EXECUTABLE :=$(C_SOURCES:.c=)
#CFLAGS = -I/lib/modules/5.19.17-051917-generic/build/include/ -I /lib/modules/5.19.17-051917-generic/build/include/generated
CFLAGS = -fstack-protector-strong  -D_FORTIFY_SOURCE=2 -Wformat -Wformat-security -Werror=format-security
LDFLAGS = -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed -fstack-protector-strong -Wl,-z,relro,-z,now
all:$(C_EXECUTABLE)

$(C_EXECUTABLE): % : %.c
	@echo "$<"
	$(CC) $< $(LDFLAGS) $(CFLAGS) -o $@


clean:
	rm -rf $(C_EXECUTABLE)
