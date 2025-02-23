SRCS = \
			 vgmck.c \
			 v_2a03.c \
			 v_ay8910.c \
			 v_ay8930.c \
			 v_dmg.c \
			 huc6280.c \
			 v_opl2.c \
			 v_opl3.c \
			 v_opl4.c \
			 v_opll.c \
			 v_opn2.c \
			 v_pokey.c \
			 v_qsound.c \
			 sn76489.c \
			 v_t6w28.c
SRCS_DEBUG = $(SRCS) v_debug.c

OBJS        = $(SRCS:.c=.o)
OBJS_DEBUG  = $(SRCS:.c=_d.o)

MAIN       ?= vgmck.exe
MAIN_DEBUG ?= vgmck_d.exe

CC             = gcc

CFLAGS_COMMON  ?= -fms-extensions
LDFLAGS_COMMON ?= -lm

CFLAGS         ?= $(CFLAGS_COMMON) -O2
CFLAGS_DEBUG   ?= $(CFLAGS_COMMON) -g
LDFLAGS        ?= $(LDFLAGS_COMMON) -s -O2
LDFLAGS_DEBUG  ?= $(LDFLAGS_COMMON) -g

.PHONY: all clean

all: $(MAIN) $(MAIN_DEBUG)

clean:
	del *.o
	del *.exe

$(MAIN): $(OBJS)
	$(CC) -o $(MAIN) $(OBJS) $(LDFLAGS_DEBUG)

$(MAIN_DEBUG): $(OBJS_DEBUG)
	$(CC) -o $(MAIN_DEBUG) $(OBJS_DEBUG) $(LDFLAGS_DEBUG)

$(OBJS): $(SRCS)
	$(CC) -o $@ -c $(@:.o=.c) $(CFLAGS)

$(OBJS_DEBUG): $(SRCS)
	$(CC) -o $@ -c $(@:_d.o=.c) $(CFLAGS_DEBUG)

