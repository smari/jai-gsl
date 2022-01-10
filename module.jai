#load "unix.jai";
#if OS == .LINUX {
    #import "POSIX";
}

 int8_t  :: s8;
uint8_t  :: u8;
 int16_t :: s16;
uint16_t :: u16;
uint32_t :: u32;
 int32_t :: s32;
uint64_t :: u64;
 int64_t :: s64;
va_list  :: void;
// size_t   :: s64;


CBLAS_UPLO_t :: u32;  // This is supposed to be an enum...


gsl_vector :: struct {
    size      : size_t;
    stride    : size_t;
    data      : *float64;
    block     : *gsl_block;
    owner     : s32;
}


gsl_vector_float :: struct {
    size      : size_t;
    stride    : size_t;
    data      : *float32;
    block     : *gsl_block_float;
    owner     : s32;
}


gsl_vector_complex :: struct {
    size      : size_t;
    stride    : size_t;
    data      : *float64;
    block     : *gsl_block_complex;
    owner     : s32;
}

gsl_vector_complex_float :: struct {
    size      : size_t;
    stride    : size_t;
    data      : *float32;
    block     : *gsl_block_complex_float;
    owner     : s32;
}


gsl_matrix :: struct {
    size1     : size_t;
    size2     : size_t;
    tda       : size_t;
    data      : *float64;
    block     : *gsl_block;
    owner     : s32;
}


gsl_matrix_complex :: struct {
    size1     : size_t;
    size2     : size_t;
    tda       : size_t;
    data      : *float64;
    block     : *gsl_block_complex;
    owner     : s32;
}


gsl_block :: struct {
    size      : size_t;
    data      : *float64;
}

gsl_block_complex :: gsl_block;

gsl_block_float :: struct {
    size      : size_t;
    data      : *float32;
}

gsl_block_complex_float :: gsl_block_float;


gsl_function_pointer :: #type (x: float64, params: *void) -> *float64;
gsl_monte_function_pointer :: #type (x: float64, dim: size_t, params: *void) -> *float64;

gsl_function :: struct {
    function   : gsl_function_pointer;
    params     : *void;
}


gsl_monte_function :: struct {
    function   : gsl_function_pointer;
    dim        : size_t;
    params     : *void;
}


// This is probably wrong.
gsl_complex :: struct {
    real       : float64;
    imaginary  : float64;
}
