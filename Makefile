
SRCS_f95d1 = \
main.f95 

OBJS_f95d1 = \
main.o 

SRC_DIR_f95d1 = 
OBJS_DIR = obj/Debug/
EXE_DIR = bin/Debug/

EXE = Prime_decomposition
FC = gfortran
LD = gfortran
IDIR = 
CFLAGS = -Wall -g -fdefault-integer-8 -fdefault-double-8 -fdefault-real-8 -fdefault-integer-8  -J$(OBJS_DIR) $(IDIR)
LFLAGS = 
LIBS = 

VPATH = $(SRC_DIR_f95d1):$(OBJS_DIR)
OBJS = $(addprefix $(OBJS_DIR), $(OBJS_f95d1))

all : $(EXE)

$(EXE) : $(OBJS_f95d1)
	$(LD) -o $(EXE_DIR)$(EXE) $(OBJS) $(LFLAGS) $(LIBS)

$(OBJS_f95d1):
	@mkdir -p $(OBJS_DIR)
	$(FC) $(CFLAGS) -c $(SRC_DIR_f95d1)$(@:.o=.f95) -o $(OBJS_DIR)$@

clean :
	rm -f $(OBJS_DIR)*.*
	rm -f $(EXE_DIR)$(EXE)

# Dependencies of files
main.o: \
    main.f95

