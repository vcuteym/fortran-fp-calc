FC = gfortran
FFLAGS = -Wall -O2 -Jbuild
PFUNIT ?= /opt/pfunit

SRC = src/float_ops.f90 src/main.f90
OBJ = $(SRC:.f90=.o)

%.o: %.f90
	@mkdir -p build
		$(FC) $(FFLAGS) -c $< -o $@

all: calc

calc: $(OBJ)
	$(FC) $(FFLAGS) -o $@ $^

build/tests:
	@mkdir -p build/tests

check: all build/tests tests/test_float_ops.pf
	$(PFUNIT)/bin/pfunit-compile tests/test_float_ops.pf -o build/tests/test_float_ops
	build/tests/test_float_ops

clean:
	rm -rf build calc build/tests
	rm -f *.o *.mod src/*.o src/*.mod

.PHONY: all check clean
