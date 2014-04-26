# See:
#   http://www.postgresql.org/docs/current/interactive/extend-pgxs.html
# for all variables

MODULES = extension_template
# MODULE_big = shared library to build from object files listed in OBJS
# PROGRAM = executable program to build from object files listed in OBJS

OBJS = extension_template.o

EXTENSION   = extension_template
EXTVERSION 	= 0.1

DATA = extension_template--0.1.sql

PG_CONFIG = pg_config

PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)
