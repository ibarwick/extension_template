/* extension_template/extension_template--0.1.sql */

-- complain if script is sourced in psql, rather than via CREATE EXTENSION
\echo Use "CREATE EXTENSION extension_template" to load this file.\quit


CREATE FUNCTION function_template()
  RETURNS VOID
  LANGUAGE C
AS 'MODULE_PATHNAME', 'function_template';
