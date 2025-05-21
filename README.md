# fortran-fp-calc

[CI Badge Placeholder]

Simple floating point calculator written in Fortran with pFUnit tests.

## Quick Start

```bash
make
./calc
```

Run tests:

pFUnit usually installs to `~/pfunit` after you run `make install` in the
pFUnit source directory. The Makefile looks for pFUnit using the environment
variable `PFUNIT` (default is `/opt/pfunit`). If you installed pFUnit
elsewhere, override this variable accordingly:

```bash
export PFUNIT=~/pfunit  # adjust if your installation lives somewhere else
```

Before running the tests, verify that `pfunit-compile` exists under
`$PFUNIT/bin`:

```bash
ls $PFUNIT/bin/pfunit-compile
```

Then execute the test suite:

```bash
make check
```

Released under the MIT License © 2025 <Your Name>. See [LICENSE](LICENSE).
