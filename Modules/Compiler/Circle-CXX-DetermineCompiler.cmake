
set(_compiler_id_pp_test "defined(__circle_lang__)")

set(_compiler_id_version_compute "
# define @PREFIX@COMPILER_VERSION_MAJOR @MACRO_DEC@(__circle_major__)
# define @PREFIX@COMPILER_VERSION_MINOR @MACRO_DEC@(__circle_minor__)
# define @PREFIX@COMPILER_VERSION_PATCH @MACRO_DEC@(__circle_build__)
")
