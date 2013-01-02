CREATE FUNCTION pg_catalog.plsh_handler() RETURNS language_handler
    AS '$libdir/plsh'
    LANGUAGE C;

CREATE FUNCTION pg_catalog.plsh_inline_handler(internal) RETURNS void
    AS '$libdir/plsh'
    LANGUAGE C;

CREATE FUNCTION pg_catalog.plsh_validator(oid) RETURNS void
    AS '$libdir/plsh'
    LANGUAGE C;

CREATE LANGUAGE plsh
    HANDLER pg_catalog.plsh_handler
    INLINE pg_catalog.plsh_inline_handler
    VALIDATOR pg_catalog.plsh_validator;

COMMENT ON LANGUAGE plsh IS 'PL/sh procedural language';
