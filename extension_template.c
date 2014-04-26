/*
 * extension_template.c
 *
 */

#include "postgres.h"
#include "fmgr.h"

PG_MODULE_MAGIC;

void _PG_init(void);
Datum function_template(PG_FUNCTION_ARGS);

PG_FUNCTION_INFO_V1(function_template);


/*
 * function_template()
 *
 * Does nothing.
 */

Datum function_template(PG_FUNCTION_ARGS)
{
	PG_RETURN_NULL();
}


/*
 * Entrypoint of this module.
 */
void
_PG_init(void)
{
	/* Do something here */
}
