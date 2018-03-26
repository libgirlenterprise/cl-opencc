%module cl_opencc_cffi
%feature("intern_function","1");
%feature("export");
typedef int size_t;
%include "opencc/opencc.h"
