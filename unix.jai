//
// This file was auto-generated using the following command:
//
// jai generate.jai
//



GSL_ODEIV_HADJ_INC :: 1;
GSL_ODEIV_HADJ_NIL :: 0;

gsl_poly_eval :: (c: *float64, len: s32, x: float64) -> float64 #foreign libgsl;

gsl_poly_complex_eval :: (c: *float64, len: s32, z: gsl_complex) -> gsl_complex #foreign libgsl;

gsl_complex_poly_complex_eval :: (c: *gsl_complex, len: s32, z: gsl_complex) -> gsl_complex #foreign libgsl;

gsl_poly_eval_derivs :: (c: *float64, lenc: size_t, x: float64, res: *float64, lenres: size_t) -> s32 #foreign libgsl;

gsl_poly_dd_init :: (dd: *float64, x: *float64, y: *float64, size: size_t) -> s32 #foreign libgsl;

gsl_poly_dd_eval :: (dd: *float64, xa: *float64, size: size_t, x: float64) -> float64 #foreign libgsl;

gsl_poly_dd_taylor :: (c: *float64, xp: float64, dd: *float64, x: *float64, size: size_t, w: *float64) -> s32 #foreign libgsl;

gsl_poly_dd_hermite_init :: (dd: *float64, z: *float64, xa: *float64, ya: *float64, dya: *float64, size: size_t) -> s32 #foreign libgsl;

gsl_poly_solve_quadratic :: (a: float64, b: float64, c: float64, x0: *float64, x1: *float64) -> s32 #foreign libgsl;

gsl_poly_complex_solve_quadratic :: (a: float64, b: float64, c: float64, z0: *gsl_complex, z1: *gsl_complex) -> s32 #foreign libgsl;

gsl_poly_solve_cubic :: (a: float64, b: float64, c: float64, x0: *float64, x1: *float64, x2: *float64) -> s32 #foreign libgsl;

gsl_poly_complex_solve_cubic :: (a: float64, b: float64, c: float64, z0: *gsl_complex, z1: *gsl_complex, z2: *gsl_complex) -> s32 #foreign libgsl;

anon_struct_1 :: struct {
    nc:     size_t;
    matrix: *float64;
}

gsl_poly_complex_workspace :: anon_struct_1;

gsl_poly_complex_workspace_alloc :: (n: size_t) -> *gsl_poly_complex_workspace #foreign libgsl;
gsl_poly_complex_workspace_free :: (w: *gsl_poly_complex_workspace) -> void #foreign libgsl;

gsl_poly_complex_solve :: (a: *float64, n: size_t, w: *gsl_poly_complex_workspace, z: gsl_complex_packed_ptr) -> s32 #foreign libgsl;

gsl_permutation_struct :: struct {
    size: size_t;
    data: *size_t;
}

gsl_permutation :: gsl_permutation_struct;

gsl_permutation_alloc :: (n: size_t) -> *gsl_permutation #foreign libgsl;
gsl_permutation_calloc :: (n: size_t) -> *gsl_permutation #foreign libgsl;
gsl_permutation_init :: (p: *gsl_permutation) -> void #foreign libgsl;
gsl_permutation_free :: (p: *gsl_permutation) -> void #foreign libgsl;
gsl_permutation_memcpy :: (dest: *gsl_permutation, src: *gsl_permutation) -> s32 #foreign libgsl;

gsl_permutation_fread :: (stream: *FILE, p: *gsl_permutation) -> s32 #foreign libgsl;
gsl_permutation_fwrite :: (stream: *FILE, p: *gsl_permutation) -> s32 #foreign libgsl;
gsl_permutation_fscanf :: (stream: *FILE, p: *gsl_permutation) -> s32 #foreign libgsl;
gsl_permutation_fprintf :: (stream: *FILE, p: *gsl_permutation, format: *u8) -> s32 #foreign libgsl;

gsl_permutation_size :: (p: *gsl_permutation) -> size_t #foreign libgsl;
gsl_permutation_data :: (p: *gsl_permutation) -> *size_t #foreign libgsl;

gsl_permutation_swap :: (p: *gsl_permutation, i: size_t, j: size_t) -> s32 #foreign libgsl;

gsl_permutation_valid :: (p: *gsl_permutation) -> s32 #foreign libgsl;
gsl_permutation_reverse :: (p: *gsl_permutation) -> void #foreign libgsl;
gsl_permutation_inverse :: (inv: *gsl_permutation, p: *gsl_permutation) -> s32 #foreign libgsl;
gsl_permutation_next :: (p: *gsl_permutation) -> s32 #foreign libgsl;
gsl_permutation_prev :: (p: *gsl_permutation) -> s32 #foreign libgsl;
gsl_permutation_mul :: (p: *gsl_permutation, pa: *gsl_permutation, pb: *gsl_permutation) -> s32 #foreign libgsl;

gsl_permutation_linear_to_canonical :: (q: *gsl_permutation, p: *gsl_permutation) -> s32 #foreign libgsl;
gsl_permutation_canonical_to_linear :: (p: *gsl_permutation, q: *gsl_permutation) -> s32 #foreign libgsl;

gsl_permutation_inversions :: (p: *gsl_permutation) -> size_t #foreign libgsl;
gsl_permutation_linear_cycles :: (p: *gsl_permutation) -> size_t #foreign libgsl;
gsl_permutation_canonical_cycles :: (q: *gsl_permutation) -> size_t #foreign libgsl;

gsl_permutation_get :: (p: *gsl_permutation, i: size_t) -> size_t #foreign libgsl;

gsl_combination_struct :: struct {
    n:    size_t;
    k:    size_t;
    data: *size_t;
}

gsl_combination :: gsl_combination_struct;

gsl_combination_alloc :: (n: size_t, k: size_t) -> *gsl_combination #foreign libgsl;
gsl_combination_calloc :: (n: size_t, k: size_t) -> *gsl_combination #foreign libgsl;
gsl_combination_init_first :: (c: *gsl_combination) -> void #foreign libgsl;
gsl_combination_init_last :: (c: *gsl_combination) -> void #foreign libgsl;
gsl_combination_free :: (c: *gsl_combination) -> void #foreign libgsl;
gsl_combination_memcpy :: (dest: *gsl_combination, src: *gsl_combination) -> s32 #foreign libgsl;

gsl_combination_fread :: (stream: *FILE, c: *gsl_combination) -> s32 #foreign libgsl;
gsl_combination_fwrite :: (stream: *FILE, c: *gsl_combination) -> s32 #foreign libgsl;
gsl_combination_fscanf :: (stream: *FILE, c: *gsl_combination) -> s32 #foreign libgsl;
gsl_combination_fprintf :: (stream: *FILE, c: *gsl_combination, format: *u8) -> s32 #foreign libgsl;

gsl_combination_n :: (c: *gsl_combination) -> size_t #foreign libgsl;
gsl_combination_k :: (c: *gsl_combination) -> size_t #foreign libgsl;
gsl_combination_data :: (c: *gsl_combination) -> *size_t #foreign libgsl;

gsl_combination_valid :: (c: *gsl_combination) -> s32 #foreign libgsl;
gsl_combination_next :: (c: *gsl_combination) -> s32 #foreign libgsl;
gsl_combination_prev :: (c: *gsl_combination) -> s32 #foreign libgsl;

gsl_combination_get :: (c: *gsl_combination, i: size_t) -> size_t #foreign libgsl;

gsl_blas_sdsdot :: (alpha: float, X: *gsl_vector_float, Y: *gsl_vector_float, result: *float) -> s32 #foreign libgsl;

gsl_blas_dsdot :: (X: *gsl_vector_float, Y: *gsl_vector_float, result: *float64) -> s32 #foreign libgsl;

gsl_blas_sdot :: (X: *gsl_vector_float, Y: *gsl_vector_float, result: *float) -> s32 #foreign libgsl;

gsl_blas_ddot :: (X: *gsl_vector, Y: *gsl_vector, result: *float64) -> s32 #foreign libgsl;

gsl_blas_cdotu :: (X: *gsl_vector_complex_float, Y: *gsl_vector_complex_float, dotu: *gsl_complex_float) -> s32 #foreign libgsl;

gsl_blas_cdotc :: (X: *gsl_vector_complex_float, Y: *gsl_vector_complex_float, dotc: *gsl_complex_float) -> s32 #foreign libgsl;

gsl_blas_zdotu :: (X: *gsl_vector_complex, Y: *gsl_vector_complex, dotu: *gsl_complex) -> s32 #foreign libgsl;

gsl_blas_zdotc :: (X: *gsl_vector_complex, Y: *gsl_vector_complex, dotc: *gsl_complex) -> s32 #foreign libgsl;

gsl_blas_snrm2 :: (X: *gsl_vector_float) -> float #foreign libgsl;
gsl_blas_sasum :: (X: *gsl_vector_float) -> float #foreign libgsl;
gsl_blas_dnrm2 :: (X: *gsl_vector) -> float64 #foreign libgsl;
gsl_blas_dasum :: (X: *gsl_vector) -> float64 #foreign libgsl;
gsl_blas_scnrm2 :: (X: *gsl_vector_complex_float) -> float #foreign libgsl;
gsl_blas_scasum :: (X: *gsl_vector_complex_float) -> float #foreign libgsl;
gsl_blas_dznrm2 :: (X: *gsl_vector_complex) -> float64 #foreign libgsl;
gsl_blas_dzasum :: (X: *gsl_vector_complex) -> float64 #foreign libgsl;

gsl_blas_isamax :: (X: *gsl_vector_float) -> CBLAS_INDEX_t #foreign libgsl;
gsl_blas_idamax :: (X: *gsl_vector) -> CBLAS_INDEX_t #foreign libgsl;
gsl_blas_icamax :: (X: *gsl_vector_complex_float) -> CBLAS_INDEX_t #foreign libgsl;
gsl_blas_izamax :: (X: *gsl_vector_complex) -> CBLAS_INDEX_t #foreign libgsl;

gsl_blas_sswap :: (X: *gsl_vector_float, Y: *gsl_vector_float) -> s32 #foreign libgsl;

gsl_blas_scopy :: (X: *gsl_vector_float, Y: *gsl_vector_float) -> s32 #foreign libgsl;

gsl_blas_saxpy :: (alpha: float, X: *gsl_vector_float, Y: *gsl_vector_float) -> s32 #foreign libgsl;

gsl_blas_dswap :: (X: *gsl_vector, Y: *gsl_vector) -> s32 #foreign libgsl;

gsl_blas_dcopy :: (X: *gsl_vector, Y: *gsl_vector) -> s32 #foreign libgsl;

gsl_blas_daxpy :: (alpha: float64, X: *gsl_vector, Y: *gsl_vector) -> s32 #foreign libgsl;

gsl_blas_cswap :: (X: *gsl_vector_complex_float, Y: *gsl_vector_complex_float) -> s32 #foreign libgsl;

gsl_blas_ccopy :: (X: *gsl_vector_complex_float, Y: *gsl_vector_complex_float) -> s32 #foreign libgsl;

gsl_blas_caxpy :: (alpha: gsl_complex_float, X: *gsl_vector_complex_float, Y: *gsl_vector_complex_float) -> s32 #foreign libgsl;

gsl_blas_zswap :: (X: *gsl_vector_complex, Y: *gsl_vector_complex) -> s32 #foreign libgsl;

gsl_blas_zcopy :: (X: *gsl_vector_complex, Y: *gsl_vector_complex) -> s32 #foreign libgsl;

gsl_blas_zaxpy :: (alpha: gsl_complex, X: *gsl_vector_complex, Y: *gsl_vector_complex) -> s32 #foreign libgsl;

gsl_blas_srotg :: (a: *float, b: *float, c: *float, s: *float) -> s32 #foreign libgsl;

gsl_blas_srotmg :: (d1: *float, d2: *float, b1: *float, b2: float, P: *float) -> s32 #foreign libgsl;

gsl_blas_srot :: (X: *gsl_vector_float, Y: *gsl_vector_float, c: float, s: float) -> s32 #foreign libgsl;

gsl_blas_srotm :: (X: *gsl_vector_float, Y: *gsl_vector_float, P: *float) -> s32 #foreign libgsl;

gsl_blas_drotg :: (a: *float64, b: *float64, c: *float64, s: *float64) -> s32 #foreign libgsl;

gsl_blas_drotmg :: (d1: *float64, d2: *float64, b1: *float64, b2: float64, P: *float64) -> s32 #foreign libgsl;

gsl_blas_drot :: (X: *gsl_vector, Y: *gsl_vector, c: float64, s: float64) -> s32 #foreign libgsl;

gsl_blas_drotm :: (X: *gsl_vector, Y: *gsl_vector, P: *float64) -> s32 #foreign libgsl;

gsl_blas_sscal :: (alpha: float, X: *gsl_vector_float) -> void #foreign libgsl;
gsl_blas_dscal :: (alpha: float64, X: *gsl_vector) -> void #foreign libgsl;
gsl_blas_cscal :: (alpha: gsl_complex_float, X: *gsl_vector_complex_float) -> void #foreign libgsl;
gsl_blas_zscal :: (alpha: gsl_complex, X: *gsl_vector_complex) -> void #foreign libgsl;
gsl_blas_csscal :: (alpha: float, X: *gsl_vector_complex_float) -> void #foreign libgsl;
gsl_blas_zdscal :: (alpha: float64, X: *gsl_vector_complex) -> void #foreign libgsl;

gsl_blas_sgemv :: (TransA: CBLAS_TRANSPOSE_t, alpha: float, A: *gsl_matrix_float, X: *gsl_vector_float, beta: float, Y: *gsl_vector_float) -> s32 #foreign libgsl;

gsl_blas_strmv :: (Uplo: CBLAS_UPLO_t, TransA: CBLAS_TRANSPOSE_t, Diag: CBLAS_DIAG_t, A: *gsl_matrix_float, X: *gsl_vector_float) -> s32 #foreign libgsl;

gsl_blas_strsv :: (Uplo: CBLAS_UPLO_t, TransA: CBLAS_TRANSPOSE_t, Diag: CBLAS_DIAG_t, A: *gsl_matrix_float, X: *gsl_vector_float) -> s32 #foreign libgsl;

gsl_blas_dgemv :: (TransA: CBLAS_TRANSPOSE_t, alpha: float64, A: *gsl_matrix, X: *gsl_vector, beta: float64, Y: *gsl_vector) -> s32 #foreign libgsl;

gsl_blas_dtrmv :: (Uplo: CBLAS_UPLO_t, TransA: CBLAS_TRANSPOSE_t, Diag: CBLAS_DIAG_t, A: *gsl_matrix, X: *gsl_vector) -> s32 #foreign libgsl;

gsl_blas_dtrsv :: (Uplo: CBLAS_UPLO_t, TransA: CBLAS_TRANSPOSE_t, Diag: CBLAS_DIAG_t, A: *gsl_matrix, X: *gsl_vector) -> s32 #foreign libgsl;

gsl_blas_cgemv :: (TransA: CBLAS_TRANSPOSE_t, alpha: gsl_complex_float, A: *gsl_matrix_complex_float, X: *gsl_vector_complex_float, beta: gsl_complex_float, Y: *gsl_vector_complex_float) -> s32 #foreign libgsl;

gsl_blas_ctrmv :: (Uplo: CBLAS_UPLO_t, TransA: CBLAS_TRANSPOSE_t, Diag: CBLAS_DIAG_t, A: *gsl_matrix_complex_float, X: *gsl_vector_complex_float) -> s32 #foreign libgsl;

gsl_blas_ctrsv :: (Uplo: CBLAS_UPLO_t, TransA: CBLAS_TRANSPOSE_t, Diag: CBLAS_DIAG_t, A: *gsl_matrix_complex_float, X: *gsl_vector_complex_float) -> s32 #foreign libgsl;

gsl_blas_zgemv :: (TransA: CBLAS_TRANSPOSE_t, alpha: gsl_complex, A: *gsl_matrix_complex, X: *gsl_vector_complex, beta: gsl_complex, Y: *gsl_vector_complex) -> s32 #foreign libgsl;

gsl_blas_ztrmv :: (Uplo: CBLAS_UPLO_t, TransA: CBLAS_TRANSPOSE_t, Diag: CBLAS_DIAG_t, A: *gsl_matrix_complex, X: *gsl_vector_complex) -> s32 #foreign libgsl;

gsl_blas_ztrsv :: (Uplo: CBLAS_UPLO_t, TransA: CBLAS_TRANSPOSE_t, Diag: CBLAS_DIAG_t, A: *gsl_matrix_complex, X: *gsl_vector_complex) -> s32 #foreign libgsl;

gsl_blas_ssymv :: (Uplo: CBLAS_UPLO_t, alpha: float, A: *gsl_matrix_float, X: *gsl_vector_float, beta: float, Y: *gsl_vector_float) -> s32 #foreign libgsl;

gsl_blas_sger :: (alpha: float, X: *gsl_vector_float, Y: *gsl_vector_float, A: *gsl_matrix_float) -> s32 #foreign libgsl;

gsl_blas_ssyr :: (Uplo: CBLAS_UPLO_t, alpha: float, X: *gsl_vector_float, A: *gsl_matrix_float) -> s32 #foreign libgsl;

gsl_blas_ssyr2 :: (Uplo: CBLAS_UPLO_t, alpha: float, X: *gsl_vector_float, Y: *gsl_vector_float, A: *gsl_matrix_float) -> s32 #foreign libgsl;

gsl_blas_dsymv :: (Uplo: CBLAS_UPLO_t, alpha: float64, A: *gsl_matrix, X: *gsl_vector, beta: float64, Y: *gsl_vector) -> s32 #foreign libgsl;

gsl_blas_dger :: (alpha: float64, X: *gsl_vector, Y: *gsl_vector, A: *gsl_matrix) -> s32 #foreign libgsl;

gsl_blas_dsyr :: (Uplo: CBLAS_UPLO_t, alpha: float64, X: *gsl_vector, A: *gsl_matrix) -> s32 #foreign libgsl;

gsl_blas_dsyr2 :: (Uplo: CBLAS_UPLO_t, alpha: float64, X: *gsl_vector, Y: *gsl_vector, A: *gsl_matrix) -> s32 #foreign libgsl;

gsl_blas_chemv :: (Uplo: CBLAS_UPLO_t, alpha: gsl_complex_float, A: *gsl_matrix_complex_float, X: *gsl_vector_complex_float, beta: gsl_complex_float, Y: *gsl_vector_complex_float) -> s32 #foreign libgsl;

gsl_blas_cgeru :: (alpha: gsl_complex_float, X: *gsl_vector_complex_float, Y: *gsl_vector_complex_float, A: *gsl_matrix_complex_float) -> s32 #foreign libgsl;

gsl_blas_cgerc :: (alpha: gsl_complex_float, X: *gsl_vector_complex_float, Y: *gsl_vector_complex_float, A: *gsl_matrix_complex_float) -> s32 #foreign libgsl;

gsl_blas_cher :: (Uplo: CBLAS_UPLO_t, alpha: float, X: *gsl_vector_complex_float, A: *gsl_matrix_complex_float) -> s32 #foreign libgsl;

gsl_blas_cher2 :: (Uplo: CBLAS_UPLO_t, alpha: gsl_complex_float, X: *gsl_vector_complex_float, Y: *gsl_vector_complex_float, A: *gsl_matrix_complex_float) -> s32 #foreign libgsl;

gsl_blas_zhemv :: (Uplo: CBLAS_UPLO_t, alpha: gsl_complex, A: *gsl_matrix_complex, X: *gsl_vector_complex, beta: gsl_complex, Y: *gsl_vector_complex) -> s32 #foreign libgsl;

gsl_blas_zgeru :: (alpha: gsl_complex, X: *gsl_vector_complex, Y: *gsl_vector_complex, A: *gsl_matrix_complex) -> s32 #foreign libgsl;

gsl_blas_zgerc :: (alpha: gsl_complex, X: *gsl_vector_complex, Y: *gsl_vector_complex, A: *gsl_matrix_complex) -> s32 #foreign libgsl;

gsl_blas_zher :: (Uplo: CBLAS_UPLO_t, alpha: float64, X: *gsl_vector_complex, A: *gsl_matrix_complex) -> s32 #foreign libgsl;

gsl_blas_zher2 :: (Uplo: CBLAS_UPLO_t, alpha: gsl_complex, X: *gsl_vector_complex, Y: *gsl_vector_complex, A: *gsl_matrix_complex) -> s32 #foreign libgsl;

gsl_blas_sgemm :: (TransA: CBLAS_TRANSPOSE_t, TransB: CBLAS_TRANSPOSE_t, alpha: float, A: *gsl_matrix_float, B: *gsl_matrix_float, beta: float, C: *gsl_matrix_float) -> s32 #foreign libgsl;

gsl_blas_ssymm :: (Side: CBLAS_SIDE_t, Uplo: CBLAS_UPLO_t, alpha: float, A: *gsl_matrix_float, B: *gsl_matrix_float, beta: float, C: *gsl_matrix_float) -> s32 #foreign libgsl;

gsl_blas_ssyrk :: (Uplo: CBLAS_UPLO_t, Trans: CBLAS_TRANSPOSE_t, alpha: float, A: *gsl_matrix_float, beta: float, C: *gsl_matrix_float) -> s32 #foreign libgsl;

gsl_blas_ssyr2k :: (Uplo: CBLAS_UPLO_t, Trans: CBLAS_TRANSPOSE_t, alpha: float, A: *gsl_matrix_float, B: *gsl_matrix_float, beta: float, C: *gsl_matrix_float) -> s32 #foreign libgsl;

gsl_blas_strmm :: (Side: CBLAS_SIDE_t, Uplo: CBLAS_UPLO_t, TransA: CBLAS_TRANSPOSE_t, Diag: CBLAS_DIAG_t, alpha: float, A: *gsl_matrix_float, B: *gsl_matrix_float) -> s32 #foreign libgsl;

gsl_blas_strsm :: (Side: CBLAS_SIDE_t, Uplo: CBLAS_UPLO_t, TransA: CBLAS_TRANSPOSE_t, Diag: CBLAS_DIAG_t, alpha: float, A: *gsl_matrix_float, B: *gsl_matrix_float) -> s32 #foreign libgsl;

gsl_blas_dgemm :: (TransA: CBLAS_TRANSPOSE_t, TransB: CBLAS_TRANSPOSE_t, alpha: float64, A: *gsl_matrix, B: *gsl_matrix, beta: float64, C: *gsl_matrix) -> s32 #foreign libgsl;

gsl_blas_dsymm :: (Side: CBLAS_SIDE_t, Uplo: CBLAS_UPLO_t, alpha: float64, A: *gsl_matrix, B: *gsl_matrix, beta: float64, C: *gsl_matrix) -> s32 #foreign libgsl;

gsl_blas_dsyrk :: (Uplo: CBLAS_UPLO_t, Trans: CBLAS_TRANSPOSE_t, alpha: float64, A: *gsl_matrix, beta: float64, C: *gsl_matrix) -> s32 #foreign libgsl;

gsl_blas_dsyr2k :: (Uplo: CBLAS_UPLO_t, Trans: CBLAS_TRANSPOSE_t, alpha: float64, A: *gsl_matrix, B: *gsl_matrix, beta: float64, C: *gsl_matrix) -> s32 #foreign libgsl;

gsl_blas_dtrmm :: (Side: CBLAS_SIDE_t, Uplo: CBLAS_UPLO_t, TransA: CBLAS_TRANSPOSE_t, Diag: CBLAS_DIAG_t, alpha: float64, A: *gsl_matrix, B: *gsl_matrix) -> s32 #foreign libgsl;

gsl_blas_dtrsm :: (Side: CBLAS_SIDE_t, Uplo: CBLAS_UPLO_t, TransA: CBLAS_TRANSPOSE_t, Diag: CBLAS_DIAG_t, alpha: float64, A: *gsl_matrix, B: *gsl_matrix) -> s32 #foreign libgsl;

gsl_blas_cgemm :: (TransA: CBLAS_TRANSPOSE_t, TransB: CBLAS_TRANSPOSE_t, alpha: gsl_complex_float, A: *gsl_matrix_complex_float, B: *gsl_matrix_complex_float, beta: gsl_complex_float, C: *gsl_matrix_complex_float) -> s32 #foreign libgsl;

gsl_blas_csymm :: (Side: CBLAS_SIDE_t, Uplo: CBLAS_UPLO_t, alpha: gsl_complex_float, A: *gsl_matrix_complex_float, B: *gsl_matrix_complex_float, beta: gsl_complex_float, C: *gsl_matrix_complex_float) -> s32 #foreign libgsl;

gsl_blas_csyrk :: (Uplo: CBLAS_UPLO_t, Trans: CBLAS_TRANSPOSE_t, alpha: gsl_complex_float, A: *gsl_matrix_complex_float, beta: gsl_complex_float, C: *gsl_matrix_complex_float) -> s32 #foreign libgsl;

gsl_blas_csyr2k :: (Uplo: CBLAS_UPLO_t, Trans: CBLAS_TRANSPOSE_t, alpha: gsl_complex_float, A: *gsl_matrix_complex_float, B: *gsl_matrix_complex_float, beta: gsl_complex_float, C: *gsl_matrix_complex_float) -> s32 #foreign libgsl;

gsl_blas_ctrmm :: (Side: CBLAS_SIDE_t, Uplo: CBLAS_UPLO_t, TransA: CBLAS_TRANSPOSE_t, Diag: CBLAS_DIAG_t, alpha: gsl_complex_float, A: *gsl_matrix_complex_float, B: *gsl_matrix_complex_float) -> s32 #foreign libgsl;

gsl_blas_ctrsm :: (Side: CBLAS_SIDE_t, Uplo: CBLAS_UPLO_t, TransA: CBLAS_TRANSPOSE_t, Diag: CBLAS_DIAG_t, alpha: gsl_complex_float, A: *gsl_matrix_complex_float, B: *gsl_matrix_complex_float) -> s32 #foreign libgsl;

gsl_blas_zgemm :: (TransA: CBLAS_TRANSPOSE_t, TransB: CBLAS_TRANSPOSE_t, alpha: gsl_complex, A: *gsl_matrix_complex, B: *gsl_matrix_complex, beta: gsl_complex, C: *gsl_matrix_complex) -> s32 #foreign libgsl;

gsl_blas_zsymm :: (Side: CBLAS_SIDE_t, Uplo: CBLAS_UPLO_t, alpha: gsl_complex, A: *gsl_matrix_complex, B: *gsl_matrix_complex, beta: gsl_complex, C: *gsl_matrix_complex) -> s32 #foreign libgsl;

gsl_blas_zsyrk :: (Uplo: CBLAS_UPLO_t, Trans: CBLAS_TRANSPOSE_t, alpha: gsl_complex, A: *gsl_matrix_complex, beta: gsl_complex, C: *gsl_matrix_complex) -> s32 #foreign libgsl;

gsl_blas_zsyr2k :: (Uplo: CBLAS_UPLO_t, Trans: CBLAS_TRANSPOSE_t, alpha: gsl_complex, A: *gsl_matrix_complex, B: *gsl_matrix_complex, beta: gsl_complex, C: *gsl_matrix_complex) -> s32 #foreign libgsl;

gsl_blas_ztrmm :: (Side: CBLAS_SIDE_t, Uplo: CBLAS_UPLO_t, TransA: CBLAS_TRANSPOSE_t, Diag: CBLAS_DIAG_t, alpha: gsl_complex, A: *gsl_matrix_complex, B: *gsl_matrix_complex) -> s32 #foreign libgsl;

gsl_blas_ztrsm :: (Side: CBLAS_SIDE_t, Uplo: CBLAS_UPLO_t, TransA: CBLAS_TRANSPOSE_t, Diag: CBLAS_DIAG_t, alpha: gsl_complex, A: *gsl_matrix_complex, B: *gsl_matrix_complex) -> s32 #foreign libgsl;

gsl_blas_chemm :: (Side: CBLAS_SIDE_t, Uplo: CBLAS_UPLO_t, alpha: gsl_complex_float, A: *gsl_matrix_complex_float, B: *gsl_matrix_complex_float, beta: gsl_complex_float, C: *gsl_matrix_complex_float) -> s32 #foreign libgsl;

gsl_blas_cherk :: (Uplo: CBLAS_UPLO_t, Trans: CBLAS_TRANSPOSE_t, alpha: float, A: *gsl_matrix_complex_float, beta: float, C: *gsl_matrix_complex_float) -> s32 #foreign libgsl;

gsl_blas_cher2k :: (Uplo: CBLAS_UPLO_t, Trans: CBLAS_TRANSPOSE_t, alpha: gsl_complex_float, A: *gsl_matrix_complex_float, B: *gsl_matrix_complex_float, beta: float, C: *gsl_matrix_complex_float) -> s32 #foreign libgsl;

gsl_blas_zhemm :: (Side: CBLAS_SIDE_t, Uplo: CBLAS_UPLO_t, alpha: gsl_complex, A: *gsl_matrix_complex, B: *gsl_matrix_complex, beta: gsl_complex, C: *gsl_matrix_complex) -> s32 #foreign libgsl;

gsl_blas_zherk :: (Uplo: CBLAS_UPLO_t, Trans: CBLAS_TRANSPOSE_t, alpha: float64, A: *gsl_matrix_complex, beta: float64, C: *gsl_matrix_complex) -> s32 #foreign libgsl;

gsl_blas_zher2k :: (Uplo: CBLAS_UPLO_t, Trans: CBLAS_TRANSPOSE_t, alpha: gsl_complex, A: *gsl_matrix_complex, B: *gsl_matrix_complex, beta: float64, C: *gsl_matrix_complex) -> s32 #foreign libgsl;

anon_enum_11 :: enum u32 {
    GSL_LINALG_MOD_NONE      :: 0;
    GSL_LINALG_MOD_TRANSPOSE :: 1;
    GSL_LINALG_MOD_CONJUGATE :: 2;
}

gsl_linalg_matrix_mod_t :: anon_enum_11;

gsl_linalg_matmult :: (A: *gsl_matrix, B: *gsl_matrix, C: *gsl_matrix) -> s32 #foreign libgsl;

gsl_linalg_matmult_mod :: (A: *gsl_matrix, modA: gsl_linalg_matrix_mod_t, B: *gsl_matrix, modB: gsl_linalg_matrix_mod_t, C: *gsl_matrix) -> s32 #foreign libgsl;

gsl_linalg_exponential_ss :: (A: *gsl_matrix, eA: *gsl_matrix, mode: gsl_mode_t) -> s32 #foreign libgsl;

gsl_linalg_householder_transform :: (v: *gsl_vector) -> float64 #foreign libgsl;
gsl_linalg_complex_householder_transform :: (v: *gsl_vector_complex) -> gsl_complex #foreign libgsl;

gsl_linalg_householder_hm :: (tau: float64, v: *gsl_vector, A: *gsl_matrix) -> s32 #foreign libgsl;

gsl_linalg_householder_mh :: (tau: float64, v: *gsl_vector, A: *gsl_matrix) -> s32 #foreign libgsl;

gsl_linalg_householder_hv :: (tau: float64, v: *gsl_vector, w: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_householder_left :: (tau: float64, v: *gsl_vector, A: *gsl_matrix, work: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_householder_right :: (tau: float64, v: *gsl_vector, A: *gsl_matrix, work: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_householder_hm1 :: (tau: float64, A: *gsl_matrix) -> s32 #foreign libgsl;

gsl_linalg_complex_householder_hm :: (tau: gsl_complex, v: *gsl_vector_complex, A: *gsl_matrix_complex) -> s32 #foreign libgsl;

gsl_linalg_complex_householder_mh :: (tau: gsl_complex, v: *gsl_vector_complex, A: *gsl_matrix_complex) -> s32 #foreign libgsl;

gsl_linalg_complex_householder_hv :: (tau: gsl_complex, v: *gsl_vector_complex, w: *gsl_vector_complex) -> s32 #foreign libgsl;

gsl_linalg_complex_householder_left :: (tau: gsl_complex, v: *gsl_vector_complex, A: *gsl_matrix_complex, work: *gsl_vector_complex) -> s32 #foreign libgsl;

gsl_linalg_hessenberg_decomp :: (A: *gsl_matrix, tau: *gsl_vector) -> s32 #foreign libgsl;
gsl_linalg_hessenberg_unpack :: (H: *gsl_matrix, tau: *gsl_vector, U: *gsl_matrix) -> s32 #foreign libgsl;

gsl_linalg_hessenberg_unpack_accum :: (H: *gsl_matrix, tau: *gsl_vector, U: *gsl_matrix) -> s32 #foreign libgsl;

gsl_linalg_hessenberg_set_zero :: (H: *gsl_matrix) -> s32 #foreign libgsl;
gsl_linalg_hessenberg_submatrix :: (M: *gsl_matrix, A: *gsl_matrix, top: size_t, tau: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_hesstri_decomp :: (A: *gsl_matrix, B: *gsl_matrix, U: *gsl_matrix, V: *gsl_matrix, work: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_SV_decomp :: (A: *gsl_matrix, V: *gsl_matrix, S: *gsl_vector, work: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_SV_decomp_mod :: (A: *gsl_matrix, X: *gsl_matrix, V: *gsl_matrix, S: *gsl_vector, work: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_SV_decomp_jacobi :: (A: *gsl_matrix, Q: *gsl_matrix, S: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_SV_solve :: (U: *gsl_matrix, Q: *gsl_matrix, S: *gsl_vector, b: *gsl_vector, x: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_SV_leverage :: (U: *gsl_matrix, h: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_LU_decomp :: (A: *gsl_matrix, p: *gsl_permutation, signum: *s32) -> s32 #foreign libgsl;

gsl_linalg_LU_solve :: (LU: *gsl_matrix, p: *gsl_permutation, b: *gsl_vector, x: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_LU_svx :: (LU: *gsl_matrix, p: *gsl_permutation, x: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_LU_refine :: (A: *gsl_matrix, LU: *gsl_matrix, p: *gsl_permutation, b: *gsl_vector, x: *gsl_vector, work: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_LU_invert :: (LU: *gsl_matrix, p: *gsl_permutation, inverse: *gsl_matrix) -> s32 #foreign libgsl;

gsl_linalg_LU_invx :: (LU: *gsl_matrix, p: *gsl_permutation) -> s32 #foreign libgsl;

gsl_linalg_LU_det :: (LU: *gsl_matrix, signum: s32) -> float64 #foreign libgsl;
gsl_linalg_LU_lndet :: (LU: *gsl_matrix) -> float64 #foreign libgsl;
gsl_linalg_LU_sgndet :: (lu: *gsl_matrix, signum: s32) -> s32 #foreign libgsl;

gsl_linalg_complex_LU_decomp :: (A: *gsl_matrix_complex, p: *gsl_permutation, signum: *s32) -> s32 #foreign libgsl;

gsl_linalg_complex_LU_solve :: (LU: *gsl_matrix_complex, p: *gsl_permutation, b: *gsl_vector_complex, x: *gsl_vector_complex) -> s32 #foreign libgsl;

gsl_linalg_complex_LU_svx :: (LU: *gsl_matrix_complex, p: *gsl_permutation, x: *gsl_vector_complex) -> s32 #foreign libgsl;

gsl_linalg_complex_LU_refine :: (A: *gsl_matrix_complex, LU: *gsl_matrix_complex, p: *gsl_permutation, b: *gsl_vector_complex, x: *gsl_vector_complex, work: *gsl_vector_complex) -> s32 #foreign libgsl;

gsl_linalg_complex_LU_invert :: (LU: *gsl_matrix_complex, p: *gsl_permutation, inverse: *gsl_matrix_complex) -> s32 #foreign libgsl;

gsl_linalg_complex_LU_invx :: (LU: *gsl_matrix_complex, p: *gsl_permutation) -> s32 #foreign libgsl;

gsl_linalg_complex_LU_det :: (LU: *gsl_matrix_complex, signum: s32) -> gsl_complex #foreign libgsl;

gsl_linalg_complex_LU_lndet :: (LU: *gsl_matrix_complex) -> float64 #foreign libgsl;

gsl_linalg_complex_LU_sgndet :: (LU: *gsl_matrix_complex, signum: s32) -> gsl_complex #foreign libgsl;

gsl_linalg_QR_decomp :: (A: *gsl_matrix, tau: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_QR_decomp_r :: (A: *gsl_matrix, T: *gsl_matrix) -> s32 #foreign libgsl;

gsl_linalg_QR_solve :: (QR: *gsl_matrix, tau: *gsl_vector, b: *gsl_vector, x: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_QR_solve_r :: (QR: *gsl_matrix, T: *gsl_matrix, b: *gsl_vector, x: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_QR_svx :: (QR: *gsl_matrix, tau: *gsl_vector, x: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_QR_lssolve :: (QR: *gsl_matrix, tau: *gsl_vector, b: *gsl_vector, x: *gsl_vector, residual: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_QR_lssolve_r :: (QR: *gsl_matrix, T: *gsl_matrix, b: *gsl_vector, x: *gsl_vector, work: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_QR_QRsolve :: (Q: *gsl_matrix, R: *gsl_matrix, b: *gsl_vector, x: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_QR_Rsolve :: (QR: *gsl_matrix, b: *gsl_vector, x: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_QR_Rsvx :: (QR: *gsl_matrix, x: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_QR_update :: (Q: *gsl_matrix, R: *gsl_matrix, w: *gsl_vector, v: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_QR_QTvec :: (QR: *gsl_matrix, tau: *gsl_vector, v: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_QR_QTvec_r :: (QR: *gsl_matrix, T: *gsl_matrix, b: *gsl_vector, work: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_QR_Qvec :: (QR: *gsl_matrix, tau: *gsl_vector, v: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_QR_QTmat :: (QR: *gsl_matrix, tau: *gsl_vector, A: *gsl_matrix) -> s32 #foreign libgsl;

gsl_linalg_QR_QTmat_r :: (QR: *gsl_matrix, T: *gsl_matrix, B: *gsl_matrix, work: *gsl_matrix) -> s32 #foreign libgsl;

gsl_linalg_QR_matQ :: (QR: *gsl_matrix, tau: *gsl_vector, A: *gsl_matrix) -> s32 #foreign libgsl;

gsl_linalg_QR_unpack :: (QR: *gsl_matrix, tau: *gsl_vector, Q: *gsl_matrix, R: *gsl_matrix) -> s32 #foreign libgsl;

gsl_linalg_QR_unpack_r :: (QR: *gsl_matrix, T: *gsl_matrix, Q: *gsl_matrix, R: *gsl_matrix) -> s32 #foreign libgsl;

gsl_linalg_R_solve :: (R: *gsl_matrix, b: *gsl_vector, x: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_R_svx :: (R: *gsl_matrix, x: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_QR_rcond :: (QR: *gsl_matrix, rcond: *float64, work: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_QRPT_decomp :: (A: *gsl_matrix, tau: *gsl_vector, p: *gsl_permutation, signum: *s32, norm: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_QRPT_decomp2 :: (A: *gsl_matrix, q: *gsl_matrix, r: *gsl_matrix, tau: *gsl_vector, p: *gsl_permutation, signum: *s32, norm: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_QRPT_solve :: (QR: *gsl_matrix, tau: *gsl_vector, p: *gsl_permutation, b: *gsl_vector, x: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_QRPT_lssolve :: (QR: *gsl_matrix, tau: *gsl_vector, p: *gsl_permutation, b: *gsl_vector, x: *gsl_vector, residual: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_QRPT_lssolve2 :: (QR: *gsl_matrix, tau: *gsl_vector, p: *gsl_permutation, b: *gsl_vector, rank: size_t, x: *gsl_vector, residual: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_QRPT_svx :: (QR: *gsl_matrix, tau: *gsl_vector, p: *gsl_permutation, x: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_QRPT_QRsolve :: (Q: *gsl_matrix, R: *gsl_matrix, p: *gsl_permutation, b: *gsl_vector, x: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_QRPT_Rsolve :: (QR: *gsl_matrix, p: *gsl_permutation, b: *gsl_vector, x: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_QRPT_Rsvx :: (QR: *gsl_matrix, p: *gsl_permutation, x: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_QRPT_update :: (Q: *gsl_matrix, R: *gsl_matrix, p: *gsl_permutation, u: *gsl_vector, v: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_QRPT_rank :: (QR: *gsl_matrix, tol: float64) -> size_t #foreign libgsl;

gsl_linalg_QRPT_rcond :: (QR: *gsl_matrix, rcond: *float64, work: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_QR_TR_decomp :: (S: *gsl_matrix, A: *gsl_matrix, T: *gsl_matrix) -> s32 #foreign libgsl;

gsl_linalg_COD_decomp :: (A: *gsl_matrix, tau_Q: *gsl_vector, tau_Z: *gsl_vector, p: *gsl_permutation, rank: *size_t, work: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_COD_decomp_e :: (A: *gsl_matrix, tau_Q: *gsl_vector, tau_Z: *gsl_vector, p: *gsl_permutation, tol: float64, rank: *size_t, work: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_COD_lssolve :: (QRZT: *gsl_matrix, tau_Q: *gsl_vector, tau_Z: *gsl_vector, perm: *gsl_permutation, rank: size_t, b: *gsl_vector, x: *gsl_vector, residual: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_COD_lssolve2 :: (lambda: float64, QRZT: *gsl_matrix, tau_Q: *gsl_vector, tau_Z: *gsl_vector, perm: *gsl_permutation, rank: size_t, b: *gsl_vector, x: *gsl_vector, residual: *gsl_vector, S: *gsl_matrix, work: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_COD_unpack :: (QRZT: *gsl_matrix, tau_Q: *gsl_vector, tau_Z: *gsl_vector, rank: size_t, Q: *gsl_matrix, R: *gsl_matrix, Z: *gsl_matrix) -> s32 #foreign libgsl;

gsl_linalg_COD_matZ :: (QRZT: *gsl_matrix, tau_Z: *gsl_vector, rank: size_t, A: *gsl_matrix, work: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_LQ_decomp :: (A: *gsl_matrix, tau: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_LQ_lssolve :: (LQ: *gsl_matrix, tau: *gsl_vector, b: *gsl_vector, x: *gsl_vector, residual: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_LQ_QTvec :: (LQ: *gsl_matrix, tau: *gsl_vector, v: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_LQ_solve_T :: (LQ: *gsl_matrix, tau: *gsl_vector, b: *gsl_vector, x: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_LQ_svx_T :: (LQ: *gsl_matrix, tau: *gsl_vector, x: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_LQ_lssolve_T :: (LQ: *gsl_matrix, tau: *gsl_vector, b: *gsl_vector, x: *gsl_vector, residual: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_LQ_Lsolve_T :: (LQ: *gsl_matrix, b: *gsl_vector, x: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_LQ_Lsvx_T :: (LQ: *gsl_matrix, x: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_L_solve_T :: (L: *gsl_matrix, b: *gsl_vector, x: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_LQ_vecQ :: (LQ: *gsl_matrix, tau: *gsl_vector, v: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_LQ_vecQT :: (LQ: *gsl_matrix, tau: *gsl_vector, v: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_LQ_unpack :: (LQ: *gsl_matrix, tau: *gsl_vector, Q: *gsl_matrix, L: *gsl_matrix) -> s32 #foreign libgsl;

gsl_linalg_LQ_update :: (Q: *gsl_matrix, R: *gsl_matrix, v: *gsl_vector, w: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_LQ_LQsolve :: (Q: *gsl_matrix, L: *gsl_matrix, b: *gsl_vector, x: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_PTLQ_decomp :: (A: *gsl_matrix, tau: *gsl_vector, p: *gsl_permutation, signum: *s32, norm: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_PTLQ_decomp2 :: (A: *gsl_matrix, q: *gsl_matrix, r: *gsl_matrix, tau: *gsl_vector, p: *gsl_permutation, signum: *s32, norm: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_PTLQ_solve_T :: (QR: *gsl_matrix, tau: *gsl_vector, p: *gsl_permutation, b: *gsl_vector, x: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_PTLQ_svx_T :: (LQ: *gsl_matrix, tau: *gsl_vector, p: *gsl_permutation, x: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_PTLQ_LQsolve_T :: (Q: *gsl_matrix, L: *gsl_matrix, p: *gsl_permutation, b: *gsl_vector, x: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_PTLQ_Lsolve_T :: (LQ: *gsl_matrix, p: *gsl_permutation, b: *gsl_vector, x: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_PTLQ_Lsvx_T :: (LQ: *gsl_matrix, p: *gsl_permutation, x: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_PTLQ_update :: (Q: *gsl_matrix, L: *gsl_matrix, p: *gsl_permutation, v: *gsl_vector, w: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_cholesky_decomp :: (A: *gsl_matrix) -> s32 #foreign libgsl;
gsl_linalg_cholesky_decomp1 :: (A: *gsl_matrix) -> s32 #foreign libgsl;

gsl_linalg_cholesky_solve :: (cholesky: *gsl_matrix, b: *gsl_vector, x: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_cholesky_solve_mat :: (cholesky: *gsl_matrix, B: *gsl_matrix, X: *gsl_matrix) -> s32 #foreign libgsl;

gsl_linalg_cholesky_svx :: (cholesky: *gsl_matrix, x: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_cholesky_svx_mat :: (cholesky: *gsl_matrix, X: *gsl_matrix) -> s32 #foreign libgsl;

gsl_linalg_cholesky_invert :: (cholesky: *gsl_matrix) -> s32 #foreign libgsl;

gsl_linalg_cholesky_decomp_unit :: (A: *gsl_matrix, D: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_cholesky_scale :: (A: *gsl_matrix, S: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_cholesky_scale_apply :: (A: *gsl_matrix, S: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_cholesky_decomp2 :: (A: *gsl_matrix, S: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_cholesky_svx2 :: (LLT: *gsl_matrix, S: *gsl_vector, x: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_cholesky_solve2 :: (LLT: *gsl_matrix, S: *gsl_vector, b: *gsl_vector, x: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_cholesky_rcond :: (LLT: *gsl_matrix, rcond: *float64, work: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_complex_cholesky_decomp :: (A: *gsl_matrix_complex) -> s32 #foreign libgsl;

gsl_linalg_complex_cholesky_solve :: (cholesky: *gsl_matrix_complex, b: *gsl_vector_complex, x: *gsl_vector_complex) -> s32 #foreign libgsl;

gsl_linalg_complex_cholesky_svx :: (cholesky: *gsl_matrix_complex, x: *gsl_vector_complex) -> s32 #foreign libgsl;

gsl_linalg_complex_cholesky_invert :: (cholesky: *gsl_matrix_complex) -> s32 #foreign libgsl;

gsl_linalg_pcholesky_decomp :: (A: *gsl_matrix, p: *gsl_permutation) -> s32 #foreign libgsl;

gsl_linalg_pcholesky_solve :: (LDLT: *gsl_matrix, p: *gsl_permutation, b: *gsl_vector, x: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_pcholesky_svx :: (LDLT: *gsl_matrix, p: *gsl_permutation, x: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_pcholesky_decomp2 :: (A: *gsl_matrix, p: *gsl_permutation, S: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_pcholesky_solve2 :: (LDLT: *gsl_matrix, p: *gsl_permutation, S: *gsl_vector, b: *gsl_vector, x: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_pcholesky_svx2 :: (LDLT: *gsl_matrix, p: *gsl_permutation, S: *gsl_vector, x: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_pcholesky_invert :: (LDLT: *gsl_matrix, p: *gsl_permutation, Ainv: *gsl_matrix) -> s32 #foreign libgsl;

gsl_linalg_pcholesky_rcond :: (LDLT: *gsl_matrix, p: *gsl_permutation, rcond: *float64, work: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_mcholesky_decomp :: (A: *gsl_matrix, p: *gsl_permutation, E: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_mcholesky_solve :: (LDLT: *gsl_matrix, p: *gsl_permutation, b: *gsl_vector, x: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_mcholesky_svx :: (LDLT: *gsl_matrix, p: *gsl_permutation, x: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_mcholesky_rcond :: (LDLT: *gsl_matrix, p: *gsl_permutation, rcond: *float64, work: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_mcholesky_invert :: (LDLT: *gsl_matrix, p: *gsl_permutation, Ainv: *gsl_matrix) -> s32 #foreign libgsl;

gsl_linalg_cholesky_band_decomp :: (A: *gsl_matrix) -> s32 #foreign libgsl;

gsl_linalg_cholesky_band_solve :: (LLT: *gsl_matrix, b: *gsl_vector, x: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_cholesky_band_svx :: (LLT: *gsl_matrix, x: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_cholesky_band_invert :: (LLT: *gsl_matrix, Ainv: *gsl_matrix) -> s32 #foreign libgsl;

gsl_linalg_cholesky_band_unpack :: (LLT: *gsl_matrix, L: *gsl_matrix) -> s32 #foreign libgsl;

gsl_linalg_cholesky_band_rcond :: (LLT: *gsl_matrix, rcond: *float64, work: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_ldlt_decomp :: (A: *gsl_matrix) -> s32 #foreign libgsl;

gsl_linalg_ldlt_solve :: (LDLT: *gsl_matrix, b: *gsl_vector, x: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_ldlt_svx :: (LDLT: *gsl_matrix, x: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_ldlt_rcond :: (LDLT: *gsl_matrix, rcond: *float64, work: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_ldlt_band_decomp :: (A: *gsl_matrix) -> s32 #foreign libgsl;

gsl_linalg_ldlt_band_solve :: (LDLT: *gsl_matrix, b: *gsl_vector, x: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_ldlt_band_svx :: (LDLT: *gsl_matrix, x: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_ldlt_band_unpack :: (LDLT: *gsl_matrix, L: *gsl_matrix, D: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_ldlt_band_rcond :: (LDLT: *gsl_matrix, rcond: *float64, work: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_symmtd_decomp :: (A: *gsl_matrix, tau: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_symmtd_unpack :: (A: *gsl_matrix, tau: *gsl_vector, Q: *gsl_matrix, diag: *gsl_vector, subdiag: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_symmtd_unpack_T :: (A: *gsl_matrix, diag: *gsl_vector, subdiag: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_hermtd_decomp :: (A: *gsl_matrix_complex, tau: *gsl_vector_complex) -> s32 #foreign libgsl;

gsl_linalg_hermtd_unpack :: (A: *gsl_matrix_complex, tau: *gsl_vector_complex, U: *gsl_matrix_complex, diag: *gsl_vector, sudiag: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_hermtd_unpack_T :: (A: *gsl_matrix_complex, diag: *gsl_vector, subdiag: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_HH_solve :: (A: *gsl_matrix, b: *gsl_vector, x: *gsl_vector) -> s32 #foreign libgsl;
gsl_linalg_HH_svx :: (A: *gsl_matrix, x: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_solve_symm_tridiag :: (diag: *gsl_vector, offdiag: *gsl_vector, b: *gsl_vector, x: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_solve_tridiag :: (diag: *gsl_vector, abovediag: *gsl_vector, belowdiag: *gsl_vector, b: *gsl_vector, x: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_solve_symm_cyc_tridiag :: (diag: *gsl_vector, offdiag: *gsl_vector, b: *gsl_vector, x: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_solve_cyc_tridiag :: (diag: *gsl_vector, abovediag: *gsl_vector, belowdiag: *gsl_vector, b: *gsl_vector, x: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_bidiag_decomp :: (A: *gsl_matrix, tau_U: *gsl_vector, tau_V: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_bidiag_unpack :: (A: *gsl_matrix, tau_U: *gsl_vector, U: *gsl_matrix, tau_V: *gsl_vector, V: *gsl_matrix, diag: *gsl_vector, superdiag: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_bidiag_unpack2 :: (A: *gsl_matrix, tau_U: *gsl_vector, tau_V: *gsl_vector, V: *gsl_matrix) -> s32 #foreign libgsl;

gsl_linalg_bidiag_unpack_B :: (A: *gsl_matrix, diag: *gsl_vector, superdiag: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_balance_matrix :: (A: *gsl_matrix, D: *gsl_vector) -> s32 #foreign libgsl;
gsl_linalg_balance_accum :: (A: *gsl_matrix, D: *gsl_vector) -> s32 #foreign libgsl;
gsl_linalg_balance_columns :: (A: *gsl_matrix, D: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_tri_rcond :: (Uplo: CBLAS_UPLO_t, A: *gsl_matrix, rcond: *float64, work: *gsl_vector) -> s32 #foreign libgsl;
gsl_linalg_tri_upper_rcond :: (A: *gsl_matrix, rcond: *float64, work: *gsl_vector) -> s32 #foreign libgsl;
gsl_linalg_tri_lower_rcond :: (A: *gsl_matrix, rcond: *float64, work: *gsl_vector) -> s32 #foreign libgsl;
gsl_linalg_invnorm1 :: (N: size_t, Ainvx: #type (a0: CBLAS_TRANSPOSE_t, a1: *gsl_vector, a2: *void) -> s32 #c_call, params: *void, Ainvnorm: *float64, work: *gsl_vector) -> s32 #foreign libgsl;

gsl_linalg_tri_upper_invert :: (T: *gsl_matrix) -> s32 #foreign libgsl;
gsl_linalg_tri_lower_invert :: (T: *gsl_matrix) -> s32 #foreign libgsl;
gsl_linalg_tri_upper_unit_invert :: (T: *gsl_matrix) -> s32 #foreign libgsl;
gsl_linalg_tri_lower_unit_invert :: (T: *gsl_matrix) -> s32 #foreign libgsl;

gsl_linalg_tri_invert :: (Uplo: CBLAS_UPLO_t, Diag: CBLAS_DIAG_t, T: *gsl_matrix) -> s32 #foreign libgsl;
gsl_linalg_complex_tri_invert :: (Uplo: CBLAS_UPLO_t, Diag: CBLAS_DIAG_t, T: *gsl_matrix_complex) -> s32 #foreign libgsl;

gsl_linalg_tri_LTL :: (L: *gsl_matrix) -> s32 #foreign libgsl;
gsl_linalg_tri_UL :: (LU: *gsl_matrix) -> s32 #foreign libgsl;
gsl_linalg_complex_tri_LHL :: (L: *gsl_matrix_complex) -> s32 #foreign libgsl;
gsl_linalg_complex_tri_UL :: (LU: *gsl_matrix_complex) -> s32 #foreign libgsl;

gsl_linalg_givens :: (a: float64, b: float64, c: *float64, s: *float64) -> void #foreign libgsl;

gsl_linalg_givens_gv :: (v: *gsl_vector, i: size_t, j: size_t, c: float64, s: float64) -> void #foreign libgsl;

gsl_fft_complex_radix2_forward :: (data: gsl_complex_packed_array, stride: size_t, n: size_t) -> s32 #foreign libgsl;

gsl_fft_complex_radix2_backward :: (data: gsl_complex_packed_array, stride: size_t, n: size_t) -> s32 #foreign libgsl;

gsl_fft_complex_radix2_inverse :: (data: gsl_complex_packed_array, stride: size_t, n: size_t) -> s32 #foreign libgsl;

gsl_fft_complex_radix2_transform :: (data: gsl_complex_packed_array, stride: size_t, n: size_t, sign: gsl_fft_direction) -> s32 #foreign libgsl;

gsl_fft_complex_radix2_dif_forward :: (data: gsl_complex_packed_array, stride: size_t, n: size_t) -> s32 #foreign libgsl;

gsl_fft_complex_radix2_dif_backward :: (data: gsl_complex_packed_array, stride: size_t, n: size_t) -> s32 #foreign libgsl;

gsl_fft_complex_radix2_dif_inverse :: (data: gsl_complex_packed_array, stride: size_t, n: size_t) -> s32 #foreign libgsl;

gsl_fft_complex_radix2_dif_transform :: (data: gsl_complex_packed_array, stride: size_t, n: size_t, sign: gsl_fft_direction) -> s32 #foreign libgsl;

anon_struct_13 :: struct {
    n:       size_t;
    nf:      size_t;
    factor:  [64] size_t;
    twiddle: [64] *gsl_complex;
    trig:    *gsl_complex;
}

gsl_fft_complex_wavetable :: anon_struct_13;

anon_struct_14 :: struct {
    n:       size_t;
    scratch: *float64;
}

gsl_fft_complex_workspace :: anon_struct_14;

gsl_fft_complex_wavetable_alloc :: (n: size_t) -> *gsl_fft_complex_wavetable #foreign libgsl;

gsl_fft_complex_wavetable_free :: (wavetable: *gsl_fft_complex_wavetable) -> void #foreign libgsl;

gsl_fft_complex_workspace_alloc :: (n: size_t) -> *gsl_fft_complex_workspace #foreign libgsl;

gsl_fft_complex_workspace_free :: (workspace: *gsl_fft_complex_workspace) -> void #foreign libgsl;

gsl_fft_complex_memcpy :: (dest: *gsl_fft_complex_wavetable, src: *gsl_fft_complex_wavetable) -> s32 #foreign libgsl;

gsl_fft_complex_forward :: (data: gsl_complex_packed_array, stride: size_t, n: size_t, wavetable: *gsl_fft_complex_wavetable, work: *gsl_fft_complex_workspace) -> s32 #foreign libgsl;

gsl_fft_complex_backward :: (data: gsl_complex_packed_array, stride: size_t, n: size_t, wavetable: *gsl_fft_complex_wavetable, work: *gsl_fft_complex_workspace) -> s32 #foreign libgsl;

gsl_fft_complex_inverse :: (data: gsl_complex_packed_array, stride: size_t, n: size_t, wavetable: *gsl_fft_complex_wavetable, work: *gsl_fft_complex_workspace) -> s32 #foreign libgsl;

gsl_fft_complex_transform :: (data: gsl_complex_packed_array, stride: size_t, n: size_t, wavetable: *gsl_fft_complex_wavetable, work: *gsl_fft_complex_workspace, sign: gsl_fft_direction) -> s32 #foreign libgsl;

gsl_fft_real_radix2_transform :: (data: *float64, stride: size_t, n: size_t) -> s32 #foreign libgsl;

anon_struct_15 :: struct {
    n:       size_t;
    nf:      size_t;
    factor:  [64] size_t;
    twiddle: [64] *gsl_complex;
    trig:    *gsl_complex;
}

gsl_fft_real_wavetable :: anon_struct_15;

anon_struct_16 :: struct {
    n:       size_t;
    scratch: *float64;
}

gsl_fft_real_workspace :: anon_struct_16;

gsl_fft_real_wavetable_alloc :: (n: size_t) -> *gsl_fft_real_wavetable #foreign libgsl;

gsl_fft_real_wavetable_free :: (wavetable: *gsl_fft_real_wavetable) -> void #foreign libgsl;

gsl_fft_real_workspace_alloc :: (n: size_t) -> *gsl_fft_real_workspace #foreign libgsl;

gsl_fft_real_workspace_free :: (workspace: *gsl_fft_real_workspace) -> void #foreign libgsl;

gsl_fft_real_transform :: (data: *float64, stride: size_t, n: size_t, wavetable: *gsl_fft_real_wavetable, work: *gsl_fft_real_workspace) -> s32 #foreign libgsl;

gsl_fft_real_unpack :: (real_coefficient: *float64, complex_coefficient: *float64, stride: size_t, n: size_t) -> s32 #foreign libgsl;

anon_struct_17 :: struct {
    limit:         size_t;
    size:          size_t;
    nrmax:         size_t;
    i:             size_t;
    maximum_level: size_t;
    alist:         *float64;
    blist:         *float64;
    rlist:         *float64;
    elist:         *float64;
    order:         *size_t;
    level:         *size_t;
}

gsl_integration_workspace :: anon_struct_17;

gsl_integration_workspace_alloc :: (n: size_t) -> *gsl_integration_workspace #foreign libgsl;

gsl_integration_workspace_free :: (w: *gsl_integration_workspace) -> void #foreign libgsl;

anon_struct_18 :: struct {
    alpha: float64;
    beta:  float64;
    mu:    s32;
    nu:    s32;
    ri:    [25] float64;
    rj:    [25] float64;
    rg:    [25] float64;
    rh:    [25] float64;
}

gsl_integration_qaws_table :: anon_struct_18;

gsl_integration_qaws_table_alloc :: (alpha: float64, beta: float64, mu: s32, nu: s32) -> *gsl_integration_qaws_table #foreign libgsl;

gsl_integration_qaws_table_set :: (t: *gsl_integration_qaws_table, alpha: float64, beta: float64, mu: s32, nu: s32) -> s32 #foreign libgsl;

gsl_integration_qaws_table_free :: (t: *gsl_integration_qaws_table) -> void #foreign libgsl;

gsl_integration_qawo_enum :: enum u32 {
    GSL_INTEG_COSINE :: 0;
    GSL_INTEG_SINE   :: 1;
}

anon_struct_19 :: struct {
    n:      size_t;
    omega:  float64;
    L:      float64;
    par:    float64;
    sine:   gsl_integration_qawo_enum;
    chebmo: *float64;
}

gsl_integration_qawo_table :: anon_struct_19;

gsl_integration_qawo_table_alloc :: (omega: float64, L: float64, sine: gsl_integration_qawo_enum, n: size_t) -> *gsl_integration_qawo_table #foreign libgsl;

gsl_integration_qawo_table_set :: (t: *gsl_integration_qawo_table, omega: float64, L: float64, sine: gsl_integration_qawo_enum) -> s32 #foreign libgsl;

gsl_integration_qawo_table_set_length :: (t: *gsl_integration_qawo_table, L: float64) -> s32 #foreign libgsl;

gsl_integration_qawo_table_free :: (t: *gsl_integration_qawo_table) -> void #foreign libgsl;

gsl_integration_rule :: (a0: *gsl_function, a1: float64, a2: float64, a3: *float64, a4: *float64, a5: *float64, a6: *float64) -> void #c_call;

gsl_integration_qk15 :: (f: *gsl_function, a: float64, b: float64, result: *float64, abserr: *float64, resabs: *float64, resasc: *float64) -> void #foreign libgsl;

gsl_integration_qk21 :: (f: *gsl_function, a: float64, b: float64, result: *float64, abserr: *float64, resabs: *float64, resasc: *float64) -> void #foreign libgsl;

gsl_integration_qk31 :: (f: *gsl_function, a: float64, b: float64, result: *float64, abserr: *float64, resabs: *float64, resasc: *float64) -> void #foreign libgsl;

gsl_integration_qk41 :: (f: *gsl_function, a: float64, b: float64, result: *float64, abserr: *float64, resabs: *float64, resasc: *float64) -> void #foreign libgsl;

gsl_integration_qk51 :: (f: *gsl_function, a: float64, b: float64, result: *float64, abserr: *float64, resabs: *float64, resasc: *float64) -> void #foreign libgsl;

gsl_integration_qk61 :: (f: *gsl_function, a: float64, b: float64, result: *float64, abserr: *float64, resabs: *float64, resasc: *float64) -> void #foreign libgsl;

gsl_integration_qcheb :: (f: *gsl_function, a: float64, b: float64, cheb12: *float64, cheb24: *float64) -> void #foreign libgsl;

anon_enum_20 :: enum u32 {
    GSL_INTEG_GAUSS15 :: 1;
    GSL_INTEG_GAUSS21 :: 2;
    GSL_INTEG_GAUSS31 :: 3;
    GSL_INTEG_GAUSS41 :: 4;
    GSL_INTEG_GAUSS51 :: 5;
    GSL_INTEG_GAUSS61 :: 6;
}

gsl_integration_qk :: (n: s32, xgk: *float64, wg: *float64, wgk: *float64, fv1: *float64, fv2: *float64, f: *gsl_function, a: float64, b: float64, result: *float64, abserr: *float64, resabs: *float64, resasc: *float64) -> void #foreign libgsl;

gsl_integration_qng :: (f: *gsl_function, a: float64, b: float64, epsabs: float64, epsrel: float64, result: *float64, abserr: *float64, neval: *size_t) -> s32 #foreign libgsl;

gsl_integration_qag :: (f: *gsl_function, a: float64, b: float64, epsabs: float64, epsrel: float64, limit: size_t, key: s32, workspace: *gsl_integration_workspace, result: *float64, abserr: *float64) -> s32 #foreign libgsl;

gsl_integration_qagi :: (f: *gsl_function, epsabs: float64, epsrel: float64, limit: size_t, workspace: *gsl_integration_workspace, result: *float64, abserr: *float64) -> s32 #foreign libgsl;

gsl_integration_qagiu :: (f: *gsl_function, a: float64, epsabs: float64, epsrel: float64, limit: size_t, workspace: *gsl_integration_workspace, result: *float64, abserr: *float64) -> s32 #foreign libgsl;

gsl_integration_qagil :: (f: *gsl_function, b: float64, epsabs: float64, epsrel: float64, limit: size_t, workspace: *gsl_integration_workspace, result: *float64, abserr: *float64) -> s32 #foreign libgsl;

gsl_integration_qags :: (f: *gsl_function, a: float64, b: float64, epsabs: float64, epsrel: float64, limit: size_t, workspace: *gsl_integration_workspace, result: *float64, abserr: *float64) -> s32 #foreign libgsl;

gsl_integration_qagp :: (f: *gsl_function, pts: *float64, npts: size_t, epsabs: float64, epsrel: float64, limit: size_t, workspace: *gsl_integration_workspace, result: *float64, abserr: *float64) -> s32 #foreign libgsl;

gsl_integration_qawc :: (f: *gsl_function, a: float64, b: float64, c: float64, epsabs: float64, epsrel: float64, limit: size_t, workspace: *gsl_integration_workspace, result: *float64, abserr: *float64) -> s32 #foreign libgsl;

gsl_integration_qaws :: (f: *gsl_function, a: float64, b: float64, t: *gsl_integration_qaws_table, epsabs: float64, epsrel: float64, limit: size_t, workspace: *gsl_integration_workspace, result: *float64, abserr: *float64) -> s32 #foreign libgsl;

gsl_integration_qawo :: (f: *gsl_function, a: float64, epsabs: float64, epsrel: float64, limit: size_t, workspace: *gsl_integration_workspace, wf: *gsl_integration_qawo_table, result: *float64, abserr: *float64) -> s32 #foreign libgsl;

gsl_integration_qawf :: (f: *gsl_function, a: float64, epsabs: float64, limit: size_t, workspace: *gsl_integration_workspace, cycle_workspace: *gsl_integration_workspace, wf: *gsl_integration_qawo_table, result: *float64, abserr: *float64) -> s32 #foreign libgsl;

anon_struct_21 :: struct {
    n:           size_t;
    x:           *float64;
    w:           *float64;
    precomputed: s32;
}

gsl_integration_glfixed_table :: anon_struct_21;

gsl_integration_glfixed_table_alloc :: (n: size_t) -> *gsl_integration_glfixed_table #foreign libgsl;

gsl_integration_glfixed_table_free :: (t: *gsl_integration_glfixed_table) -> void #foreign libgsl;

gsl_integration_glfixed :: (f: *gsl_function, a: float64, b: float64, t: *gsl_integration_glfixed_table) -> float64 #foreign libgsl;

gsl_integration_glfixed_point :: (a: float64, b: float64, i: size_t, xi: *float64, wi: *float64, t: *gsl_integration_glfixed_table) -> s32 #foreign libgsl;

anon_struct_22 :: struct {
    a:      float64;
    b:      float64;
    c:      [64] float64;
    fx:     [33] float64;
    igral:  float64;
    err:    float64;
    depth:  s32;
    rdepth: s32;
    ndiv:   s32;
}

gsl_integration_cquad_ival :: anon_struct_22;

anon_struct_23 :: struct {
    size:  size_t;
    ivals: *gsl_integration_cquad_ival;
    heap:  *size_t;
}

gsl_integration_cquad_workspace :: anon_struct_23;

gsl_integration_cquad_workspace_alloc :: (n: size_t) -> *gsl_integration_cquad_workspace #foreign libgsl;

gsl_integration_cquad_workspace_free :: (w: *gsl_integration_cquad_workspace) -> void #foreign libgsl;

gsl_integration_cquad :: (f: *gsl_function, a: float64, b: float64, epsabs: float64, epsrel: float64, ws: *gsl_integration_cquad_workspace, result: *float64, abserr: *float64, nevals: *size_t) -> s32 #foreign libgsl;

anon_struct_24 :: struct {
    n:     size_t;
    work1: *float64;
    work2: *float64;
}

gsl_integration_romberg_workspace :: anon_struct_24;

gsl_integration_romberg_alloc :: (n: size_t) -> *gsl_integration_romberg_workspace #foreign libgsl;
gsl_integration_romberg_free :: (w: *gsl_integration_romberg_workspace) -> void #foreign libgsl;
gsl_integration_romberg :: (f: *gsl_function, a: float64, b: float64, epsabs: float64, epsrel: float64, result: *float64, neval: *size_t, w: *gsl_integration_romberg_workspace) -> s32 #foreign libgsl;

anon_struct_25 :: struct {
    alpha: float64;
    beta:  float64;
    a:     float64;
    b:     float64;
    zemu:  float64;
    shft:  float64;
    slp:   float64;
    al:    float64;
    be:    float64;
}

gsl_integration_fixed_params :: anon_struct_25;

anon_struct_26 :: struct {
    check: #type (a0: size_t, a1: *gsl_integration_fixed_params) -> s32 #c_call;
    init:  #type (a0: size_t, a1: *float64, a2: *float64, a3: *gsl_integration_fixed_params) -> s32 #c_call;
}

gsl_integration_fixed_type :: anon_struct_26;

anon_struct_27 :: struct {
    n:       size_t;
    weights: *float64;
    x:       *float64;
    diag:    *float64;
    subdiag: *float64;
    type:    *gsl_integration_fixed_type;
}

gsl_integration_fixed_workspace :: anon_struct_27;

gsl_integration_fixed_legendre_: *gsl_integration_fixed_type;
gsl_integration_fixed_chebyshev_: *gsl_integration_fixed_type;
gsl_integration_fixed_gegenbauer_: *gsl_integration_fixed_type;
gsl_integration_fixed_jacobi_: *gsl_integration_fixed_type;
gsl_integration_fixed_laguerre_: *gsl_integration_fixed_type;
gsl_integration_fixed_hermite_: *gsl_integration_fixed_type;
gsl_integration_fixed_exponential_: *gsl_integration_fixed_type;
gsl_integration_fixed_rational_: *gsl_integration_fixed_type;
gsl_integration_fixed_chebyshev2_: *gsl_integration_fixed_type;

gsl_integration_fixed_alloc :: (type: *gsl_integration_fixed_type, n: size_t, a: float64, b: float64, alpha: float64, beta: float64) -> *gsl_integration_fixed_workspace #foreign libgsl;

gsl_integration_fixed_free :: (w: *gsl_integration_fixed_workspace) -> void #foreign libgsl;

gsl_integration_fixed_n :: (w: *gsl_integration_fixed_workspace) -> size_t #foreign libgsl;

gsl_integration_fixed_nodes :: (w: *gsl_integration_fixed_workspace) -> *float64 #foreign libgsl;

gsl_integration_fixed_weights :: (w: *gsl_integration_fixed_workspace) -> *float64 #foreign libgsl;

gsl_integration_fixed :: (func: *gsl_function, result: *float64, w: *gsl_integration_fixed_workspace) -> s32 #foreign libgsl;

anon_struct_28 :: struct {
    name:       *u8;
    max:        u64;
    min:        u64;
    size:       size_t;
    set:        #type (a0: *void, a1: u64) -> void #c_call;
    get:        #type (a0: *void) -> u64 #c_call;
    get_double: #type (a0: *void) -> float64 #c_call;
}

gsl_rng_type :: anon_struct_28;

anon_struct_29 :: struct {
    type:  *gsl_rng_type;
    state: *void;
}

gsl_rng :: anon_struct_29;

gsl_rng_borosh13_: *gsl_rng_type;
gsl_rng_coveyou_: *gsl_rng_type;
gsl_rng_cmrg_: *gsl_rng_type;
gsl_rng_fishman18_: *gsl_rng_type;
gsl_rng_fishman20_: *gsl_rng_type;
gsl_rng_fishman2x_: *gsl_rng_type;
gsl_rng_gfsr4_: *gsl_rng_type;
gsl_rng_knuthran_: *gsl_rng_type;
gsl_rng_knuthran2_: *gsl_rng_type;
gsl_rng_knuthran2002_: *gsl_rng_type;
gsl_rng_lecuyer21_: *gsl_rng_type;
gsl_rng_minstd_: *gsl_rng_type;
gsl_rng_mrg_: *gsl_rng_type;
gsl_rng_mt19937_: *gsl_rng_type;
gsl_rng_mt19937_1999_: *gsl_rng_type;
gsl_rng_mt19937_1998_: *gsl_rng_type;
gsl_rng_r250_: *gsl_rng_type;
gsl_rng_ran0_: *gsl_rng_type;
gsl_rng_ran1_: *gsl_rng_type;
gsl_rng_ran2_: *gsl_rng_type;
gsl_rng_ran3_: *gsl_rng_type;
gsl_rng_rand_: *gsl_rng_type;
gsl_rng_rand48_: *gsl_rng_type;
gsl_rng_random128_bsd_: *gsl_rng_type;
gsl_rng_random128_glibc2_: *gsl_rng_type;
gsl_rng_random128_libc5_: *gsl_rng_type;
gsl_rng_random256_bsd_: *gsl_rng_type;
gsl_rng_random256_glibc2_: *gsl_rng_type;
gsl_rng_random256_libc5_: *gsl_rng_type;
gsl_rng_random32_bsd_: *gsl_rng_type;
gsl_rng_random32_glibc2_: *gsl_rng_type;
gsl_rng_random32_libc5_: *gsl_rng_type;
gsl_rng_random64_bsd_: *gsl_rng_type;
gsl_rng_random64_glibc2_: *gsl_rng_type;
gsl_rng_random64_libc5_: *gsl_rng_type;
gsl_rng_random8_bsd_: *gsl_rng_type;
gsl_rng_random8_glibc2_: *gsl_rng_type;
gsl_rng_random8_libc5_: *gsl_rng_type;
gsl_rng_random_bsd_: *gsl_rng_type;
gsl_rng_random_glibc2_: *gsl_rng_type;
gsl_rng_random_libc5_: *gsl_rng_type;
gsl_rng_randu_: *gsl_rng_type;
gsl_rng_ranf_: *gsl_rng_type;
gsl_rng_ranlux_: *gsl_rng_type;
gsl_rng_ranlux389_: *gsl_rng_type;
gsl_rng_ranlxd1_: *gsl_rng_type;
gsl_rng_ranlxd2_: *gsl_rng_type;
gsl_rng_ranlxs0_: *gsl_rng_type;
gsl_rng_ranlxs1_: *gsl_rng_type;
gsl_rng_ranlxs2_: *gsl_rng_type;
gsl_rng_ranmar_: *gsl_rng_type;
gsl_rng_slatec_: *gsl_rng_type;
gsl_rng_taus_: *gsl_rng_type;
gsl_rng_taus2_: *gsl_rng_type;
gsl_rng_taus113_: *gsl_rng_type;
gsl_rng_transputer_: *gsl_rng_type;
gsl_rng_tt800_: *gsl_rng_type;
gsl_rng_uni_: *gsl_rng_type;
gsl_rng_uni32_: *gsl_rng_type;
gsl_rng_vax_: *gsl_rng_type;
gsl_rng_waterman14_: *gsl_rng_type;
gsl_rng_zuf_: *gsl_rng_type;

gsl_rng_types_setup :: () -> **gsl_rng_type #foreign libgsl;

gsl_rng_default_: *gsl_rng_type;
gsl_rng_default_seed_: u64;

gsl_rng_alloc :: (T: *gsl_rng_type) -> *gsl_rng #foreign libgsl;
gsl_rng_memcpy :: (dest: *gsl_rng, src: *gsl_rng) -> s32 #foreign libgsl;
gsl_rng_clone :: (r: *gsl_rng) -> *gsl_rng #foreign libgsl;

gsl_rng_free :: (r: *gsl_rng) -> void #foreign libgsl;

gsl_rng_set :: (r: *gsl_rng, seed: u64) -> void #foreign libgsl;
gsl_rng_max :: (r: *gsl_rng) -> u64 #foreign libgsl;
gsl_rng_min :: (r: *gsl_rng) -> u64 #foreign libgsl;
gsl_rng_name :: (r: *gsl_rng) -> *u8 #foreign libgsl;

gsl_rng_fread :: (stream: *FILE, r: *gsl_rng) -> s32 #foreign libgsl;
gsl_rng_fwrite :: (stream: *FILE, r: *gsl_rng) -> s32 #foreign libgsl;

gsl_rng_size :: (r: *gsl_rng) -> size_t #foreign libgsl;
gsl_rng_state :: (r: *gsl_rng) -> *void #foreign libgsl;

gsl_rng_print_state :: (r: *gsl_rng) -> void #foreign libgsl;

gsl_rng_env_setup :: () -> *gsl_rng_type #foreign libgsl;

gsl_rng_get :: (r: *gsl_rng) -> u64 #foreign libgsl;
gsl_rng_uniform :: (r: *gsl_rng) -> float64 #foreign libgsl;
gsl_rng_uniform_pos :: (r: *gsl_rng) -> float64 #foreign libgsl;
gsl_rng_uniform_int :: (r: *gsl_rng, n: u64) -> u64 #foreign libgsl;

anon_struct_30 :: struct {
    name:          *u8;
    max_dimension: u32;
    state_size:    #type (a0: u32) -> size_t #c_call;
    init_state:    #type (a0: *void, a1: u32) -> s32 #c_call;
    get:           #type (a0: *void, a1: u32, a2: *float64) -> s32 #c_call;
}

gsl_qrng_type :: anon_struct_30;

anon_struct_31 :: struct {
    type:       *gsl_qrng_type;
    dimension:  u32;
    state_size: size_t;
    state:      *void;
}

gsl_qrng :: anon_struct_31;

gsl_qrng_niederreiter_2_: *gsl_qrng_type;
gsl_qrng_sobol_: *gsl_qrng_type;
gsl_qrng_halton_: *gsl_qrng_type;
gsl_qrng_reversehalton_: *gsl_qrng_type;

gsl_qrng_alloc :: (T: *gsl_qrng_type, dimension: u32) -> *gsl_qrng #foreign libgsl;

gsl_qrng_memcpy :: (dest: *gsl_qrng, src: *gsl_qrng) -> s32 #foreign libgsl;

gsl_qrng_clone :: (q: *gsl_qrng) -> *gsl_qrng #foreign libgsl;

gsl_qrng_free :: (q: *gsl_qrng) -> void #foreign libgsl;

gsl_qrng_init :: (q: *gsl_qrng) -> void #foreign libgsl;

gsl_qrng_name :: (q: *gsl_qrng) -> *u8 #foreign libgsl;

gsl_qrng_size :: (q: *gsl_qrng) -> size_t #foreign libgsl;

gsl_qrng_state :: (q: *gsl_qrng) -> *void #foreign libgsl;

gsl_qrng_get :: (q: *gsl_qrng, x: *float64) -> s32 #foreign libgsl;

gsl_ran_bernoulli :: (r: *gsl_rng, p: float64) -> u32 #foreign libgsl;
gsl_ran_bernoulli_pdf :: (k: u32, p: float64) -> float64 #foreign libgsl;

gsl_ran_beta :: (r: *gsl_rng, a: float64, b: float64) -> float64 #foreign libgsl;
gsl_ran_beta_pdf :: (x: float64, a: float64, b: float64) -> float64 #foreign libgsl;

gsl_ran_binomial :: (r: *gsl_rng, p: float64, n: u32) -> u32 #foreign libgsl;
gsl_ran_binomial_knuth :: (r: *gsl_rng, p: float64, n: u32) -> u32 #foreign libgsl;
gsl_ran_binomial_tpe :: (r: *gsl_rng, p: float64, n: u32) -> u32 #foreign libgsl;
gsl_ran_binomial_pdf :: (k: u32, p: float64, n: u32) -> float64 #foreign libgsl;

gsl_ran_exponential :: (r: *gsl_rng, mu: float64) -> float64 #foreign libgsl;
gsl_ran_exponential_pdf :: (x: float64, mu: float64) -> float64 #foreign libgsl;

gsl_ran_exppow :: (r: *gsl_rng, a: float64, b: float64) -> float64 #foreign libgsl;
gsl_ran_exppow_pdf :: (x: float64, a: float64, b: float64) -> float64 #foreign libgsl;

gsl_ran_cauchy :: (r: *gsl_rng, a: float64) -> float64 #foreign libgsl;
gsl_ran_cauchy_pdf :: (x: float64, a: float64) -> float64 #foreign libgsl;

gsl_ran_chisq :: (r: *gsl_rng, nu: float64) -> float64 #foreign libgsl;
gsl_ran_chisq_pdf :: (x: float64, nu: float64) -> float64 #foreign libgsl;

gsl_ran_dirichlet :: (r: *gsl_rng, K: size_t, alpha: *float64, theta: *float64) -> void #foreign libgsl;
gsl_ran_dirichlet_pdf :: (K: size_t, alpha: *float64, theta: *float64) -> float64 #foreign libgsl;
gsl_ran_dirichlet_lnpdf :: (K: size_t, alpha: *float64, theta: *float64) -> float64 #foreign libgsl;

gsl_ran_erlang :: (r: *gsl_rng, a: float64, n: float64) -> float64 #foreign libgsl;
gsl_ran_erlang_pdf :: (x: float64, a: float64, n: float64) -> float64 #foreign libgsl;

gsl_ran_fdist :: (r: *gsl_rng, nu1: float64, nu2: float64) -> float64 #foreign libgsl;
gsl_ran_fdist_pdf :: (x: float64, nu1: float64, nu2: float64) -> float64 #foreign libgsl;

gsl_ran_flat :: (r: *gsl_rng, a: float64, b: float64) -> float64 #foreign libgsl;
gsl_ran_flat_pdf :: (x: float64, a: float64, b: float64) -> float64 #foreign libgsl;

gsl_ran_gamma :: (r: *gsl_rng, a: float64, b: float64) -> float64 #foreign libgsl;
gsl_ran_gamma_int :: (r: *gsl_rng, a: u32) -> float64 #foreign libgsl;
gsl_ran_gamma_pdf :: (x: float64, a: float64, b: float64) -> float64 #foreign libgsl;
gsl_ran_gamma_mt :: (r: *gsl_rng, a: float64, b: float64) -> float64 #foreign libgsl;
gsl_ran_gamma_knuth :: (r: *gsl_rng, a: float64, b: float64) -> float64 #foreign libgsl;

gsl_ran_gaussian :: (r: *gsl_rng, sigma: float64) -> float64 #foreign libgsl;
gsl_ran_gaussian_ratio_method :: (r: *gsl_rng, sigma: float64) -> float64 #foreign libgsl;
gsl_ran_gaussian_ziggurat :: (r: *gsl_rng, sigma: float64) -> float64 #foreign libgsl;
gsl_ran_gaussian_pdf :: (x: float64, sigma: float64) -> float64 #foreign libgsl;

gsl_ran_ugaussian :: (r: *gsl_rng) -> float64 #foreign libgsl;
gsl_ran_ugaussian_ratio_method :: (r: *gsl_rng) -> float64 #foreign libgsl;
gsl_ran_ugaussian_pdf :: (x: float64) -> float64 #foreign libgsl;

gsl_ran_gaussian_tail :: (r: *gsl_rng, a: float64, sigma: float64) -> float64 #foreign libgsl;
gsl_ran_gaussian_tail_pdf :: (x: float64, a: float64, sigma: float64) -> float64 #foreign libgsl;

gsl_ran_ugaussian_tail :: (r: *gsl_rng, a: float64) -> float64 #foreign libgsl;
gsl_ran_ugaussian_tail_pdf :: (x: float64, a: float64) -> float64 #foreign libgsl;

gsl_ran_bivariate_gaussian :: (r: *gsl_rng, sigma_x: float64, sigma_y: float64, rho: float64, x: *float64, y: *float64) -> void #foreign libgsl;
gsl_ran_bivariate_gaussian_pdf :: (x: float64, y: float64, sigma_x: float64, sigma_y: float64, rho: float64) -> float64 #foreign libgsl;

gsl_ran_multivariate_gaussian :: (r: *gsl_rng, mu: *gsl_vector, L: *gsl_matrix, result: *gsl_vector) -> s32 #foreign libgsl;
gsl_ran_multivariate_gaussian_log_pdf :: (x: *gsl_vector, mu: *gsl_vector, L: *gsl_matrix, result: *float64, work: *gsl_vector) -> s32 #foreign libgsl;

gsl_ran_multivariate_gaussian_pdf :: (x: *gsl_vector, mu: *gsl_vector, L: *gsl_matrix, result: *float64, work: *gsl_vector) -> s32 #foreign libgsl;

gsl_ran_multivariate_gaussian_mean :: (X: *gsl_matrix, mu_hat: *gsl_vector) -> s32 #foreign libgsl;
gsl_ran_multivariate_gaussian_vcov :: (X: *gsl_matrix, sigma_hat: *gsl_matrix) -> s32 #foreign libgsl;

gsl_ran_wishart :: (r: *gsl_rng, df: float64, L: *gsl_matrix, result: *gsl_matrix, work: *gsl_matrix) -> s32 #foreign libgsl;

gsl_ran_wishart_log_pdf :: (X: *gsl_matrix, L_X: *gsl_matrix, df: float64, L: *gsl_matrix, result: *float64, work: *gsl_matrix) -> s32 #foreign libgsl;

gsl_ran_wishart_pdf :: (X: *gsl_matrix, L_X: *gsl_matrix, df: float64, L: *gsl_matrix, result: *float64, work: *gsl_matrix) -> s32 #foreign libgsl;

gsl_ran_landau :: (r: *gsl_rng) -> float64 #foreign libgsl;
gsl_ran_landau_pdf :: (x: float64) -> float64 #foreign libgsl;

gsl_ran_geometric :: (r: *gsl_rng, p: float64) -> u32 #foreign libgsl;
gsl_ran_geometric_pdf :: (k: u32, p: float64) -> float64 #foreign libgsl;

gsl_ran_hypergeometric :: (r: *gsl_rng, n1: u32, n2: u32, t: u32) -> u32 #foreign libgsl;
gsl_ran_hypergeometric_pdf :: (k: u32, n1: u32, n2: u32, t: u32) -> float64 #foreign libgsl;

gsl_ran_gumbel1 :: (r: *gsl_rng, a: float64, b: float64) -> float64 #foreign libgsl;
gsl_ran_gumbel1_pdf :: (x: float64, a: float64, b: float64) -> float64 #foreign libgsl;

gsl_ran_gumbel2 :: (r: *gsl_rng, a: float64, b: float64) -> float64 #foreign libgsl;
gsl_ran_gumbel2_pdf :: (x: float64, a: float64, b: float64) -> float64 #foreign libgsl;

gsl_ran_logistic :: (r: *gsl_rng, a: float64) -> float64 #foreign libgsl;
gsl_ran_logistic_pdf :: (x: float64, a: float64) -> float64 #foreign libgsl;

gsl_ran_lognormal :: (r: *gsl_rng, zeta: float64, sigma: float64) -> float64 #foreign libgsl;
gsl_ran_lognormal_pdf :: (x: float64, zeta: float64, sigma: float64) -> float64 #foreign libgsl;

gsl_ran_logarithmic :: (r: *gsl_rng, p: float64) -> u32 #foreign libgsl;
gsl_ran_logarithmic_pdf :: (k: u32, p: float64) -> float64 #foreign libgsl;

gsl_ran_multinomial :: (r: *gsl_rng, K: size_t, N: u32, p: *float64, n: *u32) -> void #foreign libgsl;

gsl_ran_multinomial_pdf :: (K: size_t, p: *float64, n: *u32) -> float64 #foreign libgsl;

gsl_ran_multinomial_lnpdf :: (K: size_t, p: *float64, n: *u32) -> float64 #foreign libgsl;

gsl_ran_negative_binomial :: (r: *gsl_rng, p: float64, n: float64) -> u32 #foreign libgsl;
gsl_ran_negative_binomial_pdf :: (k: u32, p: float64, n: float64) -> float64 #foreign libgsl;

gsl_ran_pascal :: (r: *gsl_rng, p: float64, n: u32) -> u32 #foreign libgsl;
gsl_ran_pascal_pdf :: (k: u32, p: float64, n: u32) -> float64 #foreign libgsl;

gsl_ran_pareto :: (r: *gsl_rng, a: float64, b: float64) -> float64 #foreign libgsl;
gsl_ran_pareto_pdf :: (x: float64, a: float64, b: float64) -> float64 #foreign libgsl;

gsl_ran_poisson :: (r: *gsl_rng, mu: float64) -> u32 #foreign libgsl;
gsl_ran_poisson_array :: (r: *gsl_rng, n: size_t, array: *u32, mu: float64) -> void #foreign libgsl;

gsl_ran_poisson_pdf :: (k: u32, mu: float64) -> float64 #foreign libgsl;

gsl_ran_rayleigh :: (r: *gsl_rng, sigma: float64) -> float64 #foreign libgsl;
gsl_ran_rayleigh_pdf :: (x: float64, sigma: float64) -> float64 #foreign libgsl;

gsl_ran_rayleigh_tail :: (r: *gsl_rng, a: float64, sigma: float64) -> float64 #foreign libgsl;
gsl_ran_rayleigh_tail_pdf :: (x: float64, a: float64, sigma: float64) -> float64 #foreign libgsl;

gsl_ran_tdist :: (r: *gsl_rng, nu: float64) -> float64 #foreign libgsl;
gsl_ran_tdist_pdf :: (x: float64, nu: float64) -> float64 #foreign libgsl;

gsl_ran_laplace :: (r: *gsl_rng, a: float64) -> float64 #foreign libgsl;
gsl_ran_laplace_pdf :: (x: float64, a: float64) -> float64 #foreign libgsl;

gsl_ran_levy :: (r: *gsl_rng, c: float64, alpha: float64) -> float64 #foreign libgsl;
gsl_ran_levy_skew :: (r: *gsl_rng, c: float64, alpha: float64, beta: float64) -> float64 #foreign libgsl;

gsl_ran_weibull :: (r: *gsl_rng, a: float64, b: float64) -> float64 #foreign libgsl;
gsl_ran_weibull_pdf :: (x: float64, a: float64, b: float64) -> float64 #foreign libgsl;

gsl_ran_dir_2d :: (r: *gsl_rng, x: *float64, y: *float64) -> void #foreign libgsl;
gsl_ran_dir_2d_trig_method :: (r: *gsl_rng, x: *float64, y: *float64) -> void #foreign libgsl;
gsl_ran_dir_3d :: (r: *gsl_rng, x: *float64, y: *float64, z: *float64) -> void #foreign libgsl;
gsl_ran_dir_nd :: (r: *gsl_rng, n: size_t, x: *float64) -> void #foreign libgsl;

gsl_ran_shuffle :: (r: *gsl_rng, base: *void, nmembm: size_t, size: size_t) -> void #foreign libgsl;
gsl_ran_choose :: (r: *gsl_rng, dest: *void, k: size_t, src: *void, n: size_t, size: size_t) -> s32 #foreign libgsl;
gsl_ran_sample :: (r: *gsl_rng, dest: *void, k: size_t, src: *void, n: size_t, size: size_t) -> void #foreign libgsl;

anon_struct_32 :: struct {
    K: size_t;
    A: *size_t;
    F: *float64;
}

gsl_ran_discrete_t :: anon_struct_32;

gsl_ran_discrete_preproc :: (K: size_t, P: *float64) -> *gsl_ran_discrete_t #foreign libgsl;
gsl_ran_discrete_free :: (g: *gsl_ran_discrete_t) -> void #foreign libgsl;
gsl_ran_discrete :: (r: *gsl_rng, g: *gsl_ran_discrete_t) -> size_t #foreign libgsl;
gsl_ran_discrete_pdf :: (k: size_t, g: *gsl_ran_discrete_t) -> float64 #foreign libgsl;

gsl_cdf_ugaussian_P :: (x: float64) -> float64 #foreign libgsl;
gsl_cdf_ugaussian_Q :: (x: float64) -> float64 #foreign libgsl;

gsl_cdf_ugaussian_Pinv :: (P: float64) -> float64 #foreign libgsl;
gsl_cdf_ugaussian_Qinv :: (Q: float64) -> float64 #foreign libgsl;

gsl_cdf_gaussian_P :: (x: float64, sigma: float64) -> float64 #foreign libgsl;
gsl_cdf_gaussian_Q :: (x: float64, sigma: float64) -> float64 #foreign libgsl;

gsl_cdf_gaussian_Pinv :: (P: float64, sigma: float64) -> float64 #foreign libgsl;
gsl_cdf_gaussian_Qinv :: (Q: float64, sigma: float64) -> float64 #foreign libgsl;

gsl_cdf_gamma_P :: (x: float64, a: float64, b: float64) -> float64 #foreign libgsl;
gsl_cdf_gamma_Q :: (x: float64, a: float64, b: float64) -> float64 #foreign libgsl;

gsl_cdf_gamma_Pinv :: (P: float64, a: float64, b: float64) -> float64 #foreign libgsl;
gsl_cdf_gamma_Qinv :: (Q: float64, a: float64, b: float64) -> float64 #foreign libgsl;

gsl_cdf_cauchy_P :: (x: float64, a: float64) -> float64 #foreign libgsl;
gsl_cdf_cauchy_Q :: (x: float64, a: float64) -> float64 #foreign libgsl;

gsl_cdf_cauchy_Pinv :: (P: float64, a: float64) -> float64 #foreign libgsl;
gsl_cdf_cauchy_Qinv :: (Q: float64, a: float64) -> float64 #foreign libgsl;

gsl_cdf_laplace_P :: (x: float64, a: float64) -> float64 #foreign libgsl;
gsl_cdf_laplace_Q :: (x: float64, a: float64) -> float64 #foreign libgsl;

gsl_cdf_laplace_Pinv :: (P: float64, a: float64) -> float64 #foreign libgsl;
gsl_cdf_laplace_Qinv :: (Q: float64, a: float64) -> float64 #foreign libgsl;

gsl_cdf_rayleigh_P :: (x: float64, sigma: float64) -> float64 #foreign libgsl;
gsl_cdf_rayleigh_Q :: (x: float64, sigma: float64) -> float64 #foreign libgsl;

gsl_cdf_rayleigh_Pinv :: (P: float64, sigma: float64) -> float64 #foreign libgsl;
gsl_cdf_rayleigh_Qinv :: (Q: float64, sigma: float64) -> float64 #foreign libgsl;

gsl_cdf_chisq_P :: (x: float64, nu: float64) -> float64 #foreign libgsl;
gsl_cdf_chisq_Q :: (x: float64, nu: float64) -> float64 #foreign libgsl;

gsl_cdf_chisq_Pinv :: (P: float64, nu: float64) -> float64 #foreign libgsl;
gsl_cdf_chisq_Qinv :: (Q: float64, nu: float64) -> float64 #foreign libgsl;

gsl_cdf_exponential_P :: (x: float64, mu: float64) -> float64 #foreign libgsl;
gsl_cdf_exponential_Q :: (x: float64, mu: float64) -> float64 #foreign libgsl;

gsl_cdf_exponential_Pinv :: (P: float64, mu: float64) -> float64 #foreign libgsl;
gsl_cdf_exponential_Qinv :: (Q: float64, mu: float64) -> float64 #foreign libgsl;

gsl_cdf_exppow_P :: (x: float64, a: float64, b: float64) -> float64 #foreign libgsl;
gsl_cdf_exppow_Q :: (x: float64, a: float64, b: float64) -> float64 #foreign libgsl;

gsl_cdf_tdist_P :: (x: float64, nu: float64) -> float64 #foreign libgsl;
gsl_cdf_tdist_Q :: (x: float64, nu: float64) -> float64 #foreign libgsl;

gsl_cdf_tdist_Pinv :: (P: float64, nu: float64) -> float64 #foreign libgsl;
gsl_cdf_tdist_Qinv :: (Q: float64, nu: float64) -> float64 #foreign libgsl;

gsl_cdf_fdist_P :: (x: float64, nu1: float64, nu2: float64) -> float64 #foreign libgsl;
gsl_cdf_fdist_Q :: (x: float64, nu1: float64, nu2: float64) -> float64 #foreign libgsl;

gsl_cdf_fdist_Pinv :: (P: float64, nu1: float64, nu2: float64) -> float64 #foreign libgsl;
gsl_cdf_fdist_Qinv :: (Q: float64, nu1: float64, nu2: float64) -> float64 #foreign libgsl;

gsl_cdf_beta_P :: (x: float64, a: float64, b: float64) -> float64 #foreign libgsl;
gsl_cdf_beta_Q :: (x: float64, a: float64, b: float64) -> float64 #foreign libgsl;

gsl_cdf_beta_Pinv :: (P: float64, a: float64, b: float64) -> float64 #foreign libgsl;
gsl_cdf_beta_Qinv :: (Q: float64, a: float64, b: float64) -> float64 #foreign libgsl;

gsl_cdf_flat_P :: (x: float64, a: float64, b: float64) -> float64 #foreign libgsl;
gsl_cdf_flat_Q :: (x: float64, a: float64, b: float64) -> float64 #foreign libgsl;

gsl_cdf_flat_Pinv :: (P: float64, a: float64, b: float64) -> float64 #foreign libgsl;
gsl_cdf_flat_Qinv :: (Q: float64, a: float64, b: float64) -> float64 #foreign libgsl;

gsl_cdf_lognormal_P :: (x: float64, zeta: float64, sigma: float64) -> float64 #foreign libgsl;
gsl_cdf_lognormal_Q :: (x: float64, zeta: float64, sigma: float64) -> float64 #foreign libgsl;

gsl_cdf_lognormal_Pinv :: (P: float64, zeta: float64, sigma: float64) -> float64 #foreign libgsl;
gsl_cdf_lognormal_Qinv :: (Q: float64, zeta: float64, sigma: float64) -> float64 #foreign libgsl;

gsl_cdf_gumbel1_P :: (x: float64, a: float64, b: float64) -> float64 #foreign libgsl;
gsl_cdf_gumbel1_Q :: (x: float64, a: float64, b: float64) -> float64 #foreign libgsl;

gsl_cdf_gumbel1_Pinv :: (P: float64, a: float64, b: float64) -> float64 #foreign libgsl;
gsl_cdf_gumbel1_Qinv :: (Q: float64, a: float64, b: float64) -> float64 #foreign libgsl;

gsl_cdf_gumbel2_P :: (x: float64, a: float64, b: float64) -> float64 #foreign libgsl;
gsl_cdf_gumbel2_Q :: (x: float64, a: float64, b: float64) -> float64 #foreign libgsl;

gsl_cdf_gumbel2_Pinv :: (P: float64, a: float64, b: float64) -> float64 #foreign libgsl;
gsl_cdf_gumbel2_Qinv :: (Q: float64, a: float64, b: float64) -> float64 #foreign libgsl;

gsl_cdf_weibull_P :: (x: float64, a: float64, b: float64) -> float64 #foreign libgsl;
gsl_cdf_weibull_Q :: (x: float64, a: float64, b: float64) -> float64 #foreign libgsl;

gsl_cdf_weibull_Pinv :: (P: float64, a: float64, b: float64) -> float64 #foreign libgsl;
gsl_cdf_weibull_Qinv :: (Q: float64, a: float64, b: float64) -> float64 #foreign libgsl;

gsl_cdf_pareto_P :: (x: float64, a: float64, b: float64) -> float64 #foreign libgsl;
gsl_cdf_pareto_Q :: (x: float64, a: float64, b: float64) -> float64 #foreign libgsl;

gsl_cdf_pareto_Pinv :: (P: float64, a: float64, b: float64) -> float64 #foreign libgsl;
gsl_cdf_pareto_Qinv :: (Q: float64, a: float64, b: float64) -> float64 #foreign libgsl;

gsl_cdf_logistic_P :: (x: float64, a: float64) -> float64 #foreign libgsl;
gsl_cdf_logistic_Q :: (x: float64, a: float64) -> float64 #foreign libgsl;

gsl_cdf_logistic_Pinv :: (P: float64, a: float64) -> float64 #foreign libgsl;
gsl_cdf_logistic_Qinv :: (Q: float64, a: float64) -> float64 #foreign libgsl;

gsl_cdf_binomial_P :: (k: u32, p: float64, n: u32) -> float64 #foreign libgsl;
gsl_cdf_binomial_Q :: (k: u32, p: float64, n: u32) -> float64 #foreign libgsl;

gsl_cdf_poisson_P :: (k: u32, mu: float64) -> float64 #foreign libgsl;
gsl_cdf_poisson_Q :: (k: u32, mu: float64) -> float64 #foreign libgsl;

gsl_cdf_geometric_P :: (k: u32, p: float64) -> float64 #foreign libgsl;
gsl_cdf_geometric_Q :: (k: u32, p: float64) -> float64 #foreign libgsl;

gsl_cdf_negative_binomial_P :: (k: u32, p: float64, n: float64) -> float64 #foreign libgsl;
gsl_cdf_negative_binomial_Q :: (k: u32, p: float64, n: float64) -> float64 #foreign libgsl;

gsl_cdf_pascal_P :: (k: u32, p: float64, n: u32) -> float64 #foreign libgsl;
gsl_cdf_pascal_Q :: (k: u32, p: float64, n: u32) -> float64 #foreign libgsl;

gsl_cdf_hypergeometric_P :: (k: u32, n1: u32, n2: u32, t: u32) -> float64 #foreign libgsl;

gsl_cdf_hypergeometric_Q :: (k: u32, n1: u32, n2: u32, t: u32) -> float64 #foreign libgsl;

gsl_stats_mean :: (data: *float64, stride: size_t, n: size_t) -> float64 #foreign libgsl;
gsl_stats_variance :: (data: *float64, stride: size_t, n: size_t) -> float64 #foreign libgsl;
gsl_stats_sd :: (data: *float64, stride: size_t, n: size_t) -> float64 #foreign libgsl;
gsl_stats_variance_with_fixed_mean :: (data: *float64, stride: size_t, n: size_t, mean: float64) -> float64 #foreign libgsl;
gsl_stats_sd_with_fixed_mean :: (data: *float64, stride: size_t, n: size_t, mean: float64) -> float64 #foreign libgsl;
gsl_stats_tss :: (data: *float64, stride: size_t, n: size_t) -> float64 #foreign libgsl;
gsl_stats_tss_m :: (data: *float64, stride: size_t, n: size_t, mean: float64) -> float64 #foreign libgsl;

gsl_stats_absdev :: (data: *float64, stride: size_t, n: size_t) -> float64 #foreign libgsl;
gsl_stats_skew :: (data: *float64, stride: size_t, n: size_t) -> float64 #foreign libgsl;
gsl_stats_kurtosis :: (data: *float64, stride: size_t, n: size_t) -> float64 #foreign libgsl;
gsl_stats_lag1_autocorrelation :: (data: *float64, stride: size_t, n: size_t) -> float64 #foreign libgsl;

gsl_stats_covariance :: (data1: *float64, stride1: size_t, data2: *float64, stride2: size_t, n: size_t) -> float64 #foreign libgsl;
gsl_stats_correlation :: (data1: *float64, stride1: size_t, data2: *float64, stride2: size_t, n: size_t) -> float64 #foreign libgsl;
gsl_stats_spearman :: (data1: *float64, stride1: size_t, data2: *float64, stride2: size_t, n: size_t, work: *float64) -> float64 #foreign libgsl;

gsl_stats_variance_m :: (data: *float64, stride: size_t, n: size_t, mean: float64) -> float64 #foreign libgsl;
gsl_stats_sd_m :: (data: *float64, stride: size_t, n: size_t, mean: float64) -> float64 #foreign libgsl;
gsl_stats_absdev_m :: (data: *float64, stride: size_t, n: size_t, mean: float64) -> float64 #foreign libgsl;
gsl_stats_skew_m_sd :: (data: *float64, stride: size_t, n: size_t, mean: float64, sd: float64) -> float64 #foreign libgsl;
gsl_stats_kurtosis_m_sd :: (data: *float64, stride: size_t, n: size_t, mean: float64, sd: float64) -> float64 #foreign libgsl;
gsl_stats_lag1_autocorrelation_m :: (data: *float64, stride: size_t, n: size_t, mean: float64) -> float64 #foreign libgsl;

gsl_stats_covariance_m :: (data1: *float64, stride1: size_t, data2: *float64, stride2: size_t, n: size_t, mean1: float64, mean2: float64) -> float64 #foreign libgsl;

gsl_stats_wmean :: (w: *float64, wstride: size_t, data: *float64, stride: size_t, n: size_t) -> float64 #foreign libgsl;
gsl_stats_wvariance :: (w: *float64, wstride: size_t, data: *float64, stride: size_t, n: size_t) -> float64 #foreign libgsl;
gsl_stats_wsd :: (w: *float64, wstride: size_t, data: *float64, stride: size_t, n: size_t) -> float64 #foreign libgsl;
gsl_stats_wvariance_with_fixed_mean :: (w: *float64, wstride: size_t, data: *float64, stride: size_t, n: size_t, mean: float64) -> float64 #foreign libgsl;
gsl_stats_wsd_with_fixed_mean :: (w: *float64, wstride: size_t, data: *float64, stride: size_t, n: size_t, mean: float64) -> float64 #foreign libgsl;
gsl_stats_wtss :: (w: *float64, wstride: size_t, data: *float64, stride: size_t, n: size_t) -> float64 #foreign libgsl;
gsl_stats_wtss_m :: (w: *float64, wstride: size_t, data: *float64, stride: size_t, n: size_t, wmean: float64) -> float64 #foreign libgsl;
gsl_stats_wabsdev :: (w: *float64, wstride: size_t, data: *float64, stride: size_t, n: size_t) -> float64 #foreign libgsl;
gsl_stats_wskew :: (w: *float64, wstride: size_t, data: *float64, stride: size_t, n: size_t) -> float64 #foreign libgsl;
gsl_stats_wkurtosis :: (w: *float64, wstride: size_t, data: *float64, stride: size_t, n: size_t) -> float64 #foreign libgsl;

gsl_stats_wvariance_m :: (w: *float64, wstride: size_t, data: *float64, stride: size_t, n: size_t, wmean: float64) -> float64 #foreign libgsl;
gsl_stats_wsd_m :: (w: *float64, wstride: size_t, data: *float64, stride: size_t, n: size_t, wmean: float64) -> float64 #foreign libgsl;
gsl_stats_wabsdev_m :: (w: *float64, wstride: size_t, data: *float64, stride: size_t, n: size_t, wmean: float64) -> float64 #foreign libgsl;
gsl_stats_wskew_m_sd :: (w: *float64, wstride: size_t, data: *float64, stride: size_t, n: size_t, wmean: float64, wsd: float64) -> float64 #foreign libgsl;
gsl_stats_wkurtosis_m_sd :: (w: *float64, wstride: size_t, data: *float64, stride: size_t, n: size_t, wmean: float64, wsd: float64) -> float64 #foreign libgsl;

gsl_stats_pvariance :: (data1: *float64, stride1: size_t, n1: size_t, data2: *float64, stride2: size_t, n2: size_t) -> float64 #foreign libgsl;
gsl_stats_ttest :: (data1: *float64, stride1: size_t, n1: size_t, data2: *float64, stride2: size_t, n2: size_t) -> float64 #foreign libgsl;

gsl_stats_max :: (data: *float64, stride: size_t, n: size_t) -> float64 #foreign libgsl;
gsl_stats_min :: (data: *float64, stride: size_t, n: size_t) -> float64 #foreign libgsl;
gsl_stats_minmax :: (min: *float64, max: *float64, data: *float64, stride: size_t, n: size_t) -> void #foreign libgsl;

gsl_stats_max_index :: (data: *float64, stride: size_t, n: size_t) -> size_t #foreign libgsl;
gsl_stats_min_index :: (data: *float64, stride: size_t, n: size_t) -> size_t #foreign libgsl;
gsl_stats_minmax_index :: (min_index: *size_t, max_index: *size_t, data: *float64, stride: size_t, n: size_t) -> void #foreign libgsl;

gsl_stats_select :: (data: *float64, stride: size_t, n: size_t, k: size_t) -> float64 #foreign libgsl;

gsl_stats_median_from_sorted_data :: (sorted_data: *float64, stride: size_t, n: size_t) -> float64 #foreign libgsl;
gsl_stats_median :: (sorted_data: *float64, stride: size_t, n: size_t) -> float64 #foreign libgsl;
gsl_stats_quantile_from_sorted_data :: (sorted_data: *float64, stride: size_t, n: size_t, f: float64) -> float64 #foreign libgsl;

gsl_stats_trmean_from_sorted_data :: (trim: float64, sorted_data: *float64, stride: size_t, n: size_t) -> float64 #foreign libgsl;
gsl_stats_gastwirth_from_sorted_data :: (sorted_data: *float64, stride: size_t, n: size_t) -> float64 #foreign libgsl;

gsl_stats_mad0 :: (data: *float64, stride: size_t, n: size_t, work: *float64) -> float64 #foreign libgsl;
gsl_stats_mad :: (data: *float64, stride: size_t, n: size_t, work: *float64) -> float64 #foreign libgsl;

gsl_stats_Sn0_from_sorted_data :: (sorted_data: *float64, stride: size_t, n: size_t, work: *float64) -> float64 #foreign libgsl;
gsl_stats_Sn_from_sorted_data :: (sorted_data: *float64, stride: size_t, n: size_t, work: *float64) -> float64 #foreign libgsl;

gsl_stats_Qn0_from_sorted_data :: (sorted_data: *float64, stride: size_t, n: size_t, work: *float64, work_int: *s32) -> float64 #foreign libgsl;
gsl_stats_Qn_from_sorted_data :: (sorted_data: *float64, stride: size_t, n: size_t, work: *float64, work_int: *s32) -> float64 #foreign libgsl;

gsl_stats_int_mean :: (data: *s32, stride: size_t, n: size_t) -> float64 #foreign libgsl;
gsl_stats_int_variance :: (data: *s32, stride: size_t, n: size_t) -> float64 #foreign libgsl;
gsl_stats_int_sd :: (data: *s32, stride: size_t, n: size_t) -> float64 #foreign libgsl;
gsl_stats_int_variance_with_fixed_mean :: (data: *s32, stride: size_t, n: size_t, mean: float64) -> float64 #foreign libgsl;
gsl_stats_int_sd_with_fixed_mean :: (data: *s32, stride: size_t, n: size_t, mean: float64) -> float64 #foreign libgsl;
gsl_stats_int_tss :: (data: *s32, stride: size_t, n: size_t) -> float64 #foreign libgsl;
gsl_stats_int_tss_m :: (data: *s32, stride: size_t, n: size_t, mean: float64) -> float64 #foreign libgsl;

gsl_stats_int_absdev :: (data: *s32, stride: size_t, n: size_t) -> float64 #foreign libgsl;
gsl_stats_int_skew :: (data: *s32, stride: size_t, n: size_t) -> float64 #foreign libgsl;
gsl_stats_int_kurtosis :: (data: *s32, stride: size_t, n: size_t) -> float64 #foreign libgsl;
gsl_stats_int_lag1_autocorrelation :: (data: *s32, stride: size_t, n: size_t) -> float64 #foreign libgsl;

gsl_stats_int_covariance :: (data1: *s32, stride1: size_t, data2: *s32, stride2: size_t, n: size_t) -> float64 #foreign libgsl;
gsl_stats_int_correlation :: (data1: *s32, stride1: size_t, data2: *s32, stride2: size_t, n: size_t) -> float64 #foreign libgsl;
gsl_stats_int_spearman :: (data1: *s32, stride1: size_t, data2: *s32, stride2: size_t, n: size_t, work: *float64) -> float64 #foreign libgsl;

gsl_stats_int_variance_m :: (data: *s32, stride: size_t, n: size_t, mean: float64) -> float64 #foreign libgsl;
gsl_stats_int_sd_m :: (data: *s32, stride: size_t, n: size_t, mean: float64) -> float64 #foreign libgsl;
gsl_stats_int_absdev_m :: (data: *s32, stride: size_t, n: size_t, mean: float64) -> float64 #foreign libgsl;
gsl_stats_int_skew_m_sd :: (data: *s32, stride: size_t, n: size_t, mean: float64, sd: float64) -> float64 #foreign libgsl;
gsl_stats_int_kurtosis_m_sd :: (data: *s32, stride: size_t, n: size_t, mean: float64, sd: float64) -> float64 #foreign libgsl;
gsl_stats_int_lag1_autocorrelation_m :: (data: *s32, stride: size_t, n: size_t, mean: float64) -> float64 #foreign libgsl;

gsl_stats_int_covariance_m :: (data1: *s32, stride1: size_t, data2: *s32, stride2: size_t, n: size_t, mean1: float64, mean2: float64) -> float64 #foreign libgsl;

gsl_stats_int_pvariance :: (data1: *s32, stride1: size_t, n1: size_t, data2: *s32, stride2: size_t, n2: size_t) -> float64 #foreign libgsl;
gsl_stats_int_ttest :: (data1: *s32, stride1: size_t, n1: size_t, data2: *s32, stride2: size_t, n2: size_t) -> float64 #foreign libgsl;

gsl_stats_int_max :: (data: *s32, stride: size_t, n: size_t) -> s32 #foreign libgsl;
gsl_stats_int_min :: (data: *s32, stride: size_t, n: size_t) -> s32 #foreign libgsl;
gsl_stats_int_minmax :: (min: *s32, max: *s32, data: *s32, stride: size_t, n: size_t) -> void #foreign libgsl;

gsl_stats_int_max_index :: (data: *s32, stride: size_t, n: size_t) -> size_t #foreign libgsl;
gsl_stats_int_min_index :: (data: *s32, stride: size_t, n: size_t) -> size_t #foreign libgsl;
gsl_stats_int_minmax_index :: (min_index: *size_t, max_index: *size_t, data: *s32, stride: size_t, n: size_t) -> void #foreign libgsl;

gsl_stats_int_select :: (data: *s32, stride: size_t, n: size_t, k: size_t) -> s32 #foreign libgsl;

gsl_stats_int_median_from_sorted_data :: (sorted_data: *s32, stride: size_t, n: size_t) -> float64 #foreign libgsl;
gsl_stats_int_median :: (sorted_data: *s32, stride: size_t, n: size_t) -> float64 #foreign libgsl;
gsl_stats_int_quantile_from_sorted_data :: (sorted_data: *s32, stride: size_t, n: size_t, f: float64) -> float64 #foreign libgsl;

gsl_stats_int_trmean_from_sorted_data :: (trim: float64, sorted_data: *s32, stride: size_t, n: size_t) -> float64 #foreign libgsl;
gsl_stats_int_gastwirth_from_sorted_data :: (sorted_data: *s32, stride: size_t, n: size_t) -> float64 #foreign libgsl;

gsl_stats_int_mad0 :: (data: *s32, stride: size_t, n: size_t, work: *float64) -> float64 #foreign libgsl;
gsl_stats_int_mad :: (data: *s32, stride: size_t, n: size_t, work: *float64) -> float64 #foreign libgsl;

gsl_stats_int_Sn0_from_sorted_data :: (sorted_data: *s32, stride: size_t, n: size_t, work: *s32) -> s32 #foreign libgsl;
gsl_stats_int_Sn_from_sorted_data :: (sorted_data: *s32, stride: size_t, n: size_t, work: *s32) -> float64 #foreign libgsl;

gsl_stats_int_Qn0_from_sorted_data :: (sorted_data: *s32, stride: size_t, n: size_t, work: *s32, work_int: *s32) -> s32 #foreign libgsl;
gsl_stats_int_Qn_from_sorted_data :: (sorted_data: *s32, stride: size_t, n: size_t, work: *s32, work_int: *s32) -> float64 #foreign libgsl;

anon_struct_33 :: struct {
    n:     size_t;
    range: *float64;
    bin:   *float64;
}

gsl_histogram :: anon_struct_33;

anon_struct_34 :: struct {
    n:     size_t;
    range: *float64;
    sum:   *float64;
}

gsl_histogram_pdf :: anon_struct_34;

gsl_histogram_alloc :: (n: size_t) -> *gsl_histogram #foreign libgsl;

gsl_histogram_calloc :: (n: size_t) -> *gsl_histogram #foreign libgsl;
gsl_histogram_calloc_uniform :: (n: size_t, xmin: float64, xmax: float64) -> *gsl_histogram #foreign libgsl;
gsl_histogram_free :: (h: *gsl_histogram) -> void #foreign libgsl;
gsl_histogram_increment :: (h: *gsl_histogram, x: float64) -> s32 #foreign libgsl;
gsl_histogram_accumulate :: (h: *gsl_histogram, x: float64, weight: float64) -> s32 #foreign libgsl;
gsl_histogram_find :: (h: *gsl_histogram, x: float64, i: *size_t) -> s32 #foreign libgsl;

gsl_histogram_get :: (h: *gsl_histogram, i: size_t) -> float64 #foreign libgsl;
gsl_histogram_get_range :: (h: *gsl_histogram, i: size_t, lower: *float64, upper: *float64) -> s32 #foreign libgsl;

gsl_histogram_max :: (h: *gsl_histogram) -> float64 #foreign libgsl;
gsl_histogram_min :: (h: *gsl_histogram) -> float64 #foreign libgsl;
gsl_histogram_bins :: (h: *gsl_histogram) -> size_t #foreign libgsl;

gsl_histogram_reset :: (h: *gsl_histogram) -> void #foreign libgsl;

gsl_histogram_calloc_range :: (n: size_t, range: *float64) -> *gsl_histogram #foreign libgsl;

gsl_histogram_set_ranges :: (h: *gsl_histogram, range: *float64, size: size_t) -> s32 #foreign libgsl;

gsl_histogram_set_ranges_uniform :: (h: *gsl_histogram, xmin: float64, xmax: float64) -> s32 #foreign libgsl;

gsl_histogram_memcpy :: (dest: *gsl_histogram, source: *gsl_histogram) -> s32 #foreign libgsl;

gsl_histogram_clone :: (source: *gsl_histogram) -> *gsl_histogram #foreign libgsl;

gsl_histogram_max_val :: (h: *gsl_histogram) -> float64 #foreign libgsl;

gsl_histogram_max_bin :: (h: *gsl_histogram) -> size_t #foreign libgsl;

gsl_histogram_min_val :: (h: *gsl_histogram) -> float64 #foreign libgsl;

gsl_histogram_min_bin :: (h: *gsl_histogram) -> size_t #foreign libgsl;

gsl_histogram_equal_bins_p :: (h1: *gsl_histogram, h2: *gsl_histogram) -> s32 #foreign libgsl;

gsl_histogram_add :: (h1: *gsl_histogram, h2: *gsl_histogram) -> s32 #foreign libgsl;

gsl_histogram_sub :: (h1: *gsl_histogram, h2: *gsl_histogram) -> s32 #foreign libgsl;

gsl_histogram_mul :: (h1: *gsl_histogram, h2: *gsl_histogram) -> s32 #foreign libgsl;

gsl_histogram_div :: (h1: *gsl_histogram, h2: *gsl_histogram) -> s32 #foreign libgsl;

gsl_histogram_scale :: (h: *gsl_histogram, scale: float64) -> s32 #foreign libgsl;

gsl_histogram_shift :: (h: *gsl_histogram, shift: float64) -> s32 #foreign libgsl;

gsl_histogram_sigma :: (h: *gsl_histogram) -> float64 #foreign libgsl;

gsl_histogram_mean :: (h: *gsl_histogram) -> float64 #foreign libgsl;

gsl_histogram_sum :: (h: *gsl_histogram) -> float64 #foreign libgsl;

gsl_histogram_fwrite :: (stream: *FILE, h: *gsl_histogram) -> s32 #foreign libgsl;
gsl_histogram_fread :: (stream: *FILE, h: *gsl_histogram) -> s32 #foreign libgsl;
gsl_histogram_fprintf :: (stream: *FILE, h: *gsl_histogram, range_format: *u8, bin_format: *u8) -> s32 #foreign libgsl;

gsl_histogram_fscanf :: (stream: *FILE, h: *gsl_histogram) -> s32 #foreign libgsl;

gsl_histogram_pdf_alloc :: (n: size_t) -> *gsl_histogram_pdf #foreign libgsl;
gsl_histogram_pdf_init :: (p: *gsl_histogram_pdf, h: *gsl_histogram) -> s32 #foreign libgsl;
gsl_histogram_pdf_free :: (p: *gsl_histogram_pdf) -> void #foreign libgsl;
gsl_histogram_pdf_sample :: (p: *gsl_histogram_pdf, r: float64) -> float64 #foreign libgsl;

anon_struct_35 :: struct {
    nx:     size_t;
    ny:     size_t;
    xrange: *float64;
    yrange: *float64;
    bin:    *float64;
}

gsl_histogram2d :: anon_struct_35;

anon_struct_36 :: struct {
    nx:     size_t;
    ny:     size_t;
    xrange: *float64;
    yrange: *float64;
    sum:    *float64;
}

gsl_histogram2d_pdf :: anon_struct_36;

gsl_histogram2d_alloc :: (nx: size_t, ny: size_t) -> *gsl_histogram2d #foreign libgsl;
gsl_histogram2d_calloc :: (nx: size_t, ny: size_t) -> *gsl_histogram2d #foreign libgsl;
gsl_histogram2d_calloc_uniform :: (nx: size_t, ny: size_t, xmin: float64, xmax: float64, ymin: float64, ymax: float64) -> *gsl_histogram2d #foreign libgsl;

gsl_histogram2d_free :: (h: *gsl_histogram2d) -> void #foreign libgsl;

gsl_histogram2d_increment :: (h: *gsl_histogram2d, x: float64, y: float64) -> s32 #foreign libgsl;
gsl_histogram2d_accumulate :: (h: *gsl_histogram2d, x: float64, y: float64, weight: float64) -> s32 #foreign libgsl;

gsl_histogram2d_find :: (h: *gsl_histogram2d, x: float64, y: float64, i: *size_t, j: *size_t) -> s32 #foreign libgsl;

gsl_histogram2d_get :: (h: *gsl_histogram2d, i: size_t, j: size_t) -> float64 #foreign libgsl;
gsl_histogram2d_get_xrange :: (h: *gsl_histogram2d, i: size_t, xlower: *float64, xupper: *float64) -> s32 #foreign libgsl;

gsl_histogram2d_get_yrange :: (h: *gsl_histogram2d, j: size_t, ylower: *float64, yupper: *float64) -> s32 #foreign libgsl;

gsl_histogram2d_xmax :: (h: *gsl_histogram2d) -> float64 #foreign libgsl;
gsl_histogram2d_xmin :: (h: *gsl_histogram2d) -> float64 #foreign libgsl;
gsl_histogram2d_nx :: (h: *gsl_histogram2d) -> size_t #foreign libgsl;

gsl_histogram2d_ymax :: (h: *gsl_histogram2d) -> float64 #foreign libgsl;
gsl_histogram2d_ymin :: (h: *gsl_histogram2d) -> float64 #foreign libgsl;
gsl_histogram2d_ny :: (h: *gsl_histogram2d) -> size_t #foreign libgsl;

gsl_histogram2d_reset :: (h: *gsl_histogram2d) -> void #foreign libgsl;

gsl_histogram2d_calloc_range :: (nx: size_t, ny: size_t, xrange: *float64, yrange: *float64) -> *gsl_histogram2d #foreign libgsl;

gsl_histogram2d_set_ranges_uniform :: (h: *gsl_histogram2d, xmin: float64, xmax: float64, ymin: float64, ymax: float64) -> s32 #foreign libgsl;

gsl_histogram2d_set_ranges :: (h: *gsl_histogram2d, xrange: *float64, xsize: size_t, yrange: *float64, ysize: size_t) -> s32 #foreign libgsl;

gsl_histogram2d_memcpy :: (dest: *gsl_histogram2d, source: *gsl_histogram2d) -> s32 #foreign libgsl;

gsl_histogram2d_clone :: (source: *gsl_histogram2d) -> *gsl_histogram2d #foreign libgsl;

gsl_histogram2d_max_val :: (h: *gsl_histogram2d) -> float64 #foreign libgsl;

gsl_histogram2d_max_bin :: (h: *gsl_histogram2d, i: *size_t, j: *size_t) -> void #foreign libgsl;

gsl_histogram2d_min_val :: (h: *gsl_histogram2d) -> float64 #foreign libgsl;

gsl_histogram2d_min_bin :: (h: *gsl_histogram2d, i: *size_t, j: *size_t) -> void #foreign libgsl;

gsl_histogram2d_xmean :: (h: *gsl_histogram2d) -> float64 #foreign libgsl;

gsl_histogram2d_ymean :: (h: *gsl_histogram2d) -> float64 #foreign libgsl;

gsl_histogram2d_xsigma :: (h: *gsl_histogram2d) -> float64 #foreign libgsl;

gsl_histogram2d_ysigma :: (h: *gsl_histogram2d) -> float64 #foreign libgsl;

gsl_histogram2d_cov :: (h: *gsl_histogram2d) -> float64 #foreign libgsl;

gsl_histogram2d_sum :: (h: *gsl_histogram2d) -> float64 #foreign libgsl;

gsl_histogram2d_equal_bins_p :: (h1: *gsl_histogram2d, h2: *gsl_histogram2d) -> s32 #foreign libgsl;

gsl_histogram2d_add :: (h1: *gsl_histogram2d, h2: *gsl_histogram2d) -> s32 #foreign libgsl;

gsl_histogram2d_sub :: (h1: *gsl_histogram2d, h2: *gsl_histogram2d) -> s32 #foreign libgsl;

gsl_histogram2d_mul :: (h1: *gsl_histogram2d, h2: *gsl_histogram2d) -> s32 #foreign libgsl;

gsl_histogram2d_div :: (h1: *gsl_histogram2d, h2: *gsl_histogram2d) -> s32 #foreign libgsl;

gsl_histogram2d_scale :: (h: *gsl_histogram2d, scale: float64) -> s32 #foreign libgsl;

gsl_histogram2d_shift :: (h: *gsl_histogram2d, shift: float64) -> s32 #foreign libgsl;

gsl_histogram2d_fwrite :: (stream: *FILE, h: *gsl_histogram2d) -> s32 #foreign libgsl;
gsl_histogram2d_fread :: (stream: *FILE, h: *gsl_histogram2d) -> s32 #foreign libgsl;
gsl_histogram2d_fprintf :: (stream: *FILE, h: *gsl_histogram2d, range_format: *u8, bin_format: *u8) -> s32 #foreign libgsl;

gsl_histogram2d_fscanf :: (stream: *FILE, h: *gsl_histogram2d) -> s32 #foreign libgsl;

gsl_histogram2d_pdf_alloc :: (nx: size_t, ny: size_t) -> *gsl_histogram2d_pdf #foreign libgsl;
gsl_histogram2d_pdf_init :: (p: *gsl_histogram2d_pdf, h: *gsl_histogram2d) -> s32 #foreign libgsl;
gsl_histogram2d_pdf_free :: (p: *gsl_histogram2d_pdf) -> void #foreign libgsl;
gsl_histogram2d_pdf_sample :: (p: *gsl_histogram2d_pdf, r1: float64, r2: float64, x: *float64, y: *float64) -> s32 #foreign libgsl;

anon_struct_37 :: struct {
    dim: size_t;
    x:   *float64;
}

gsl_monte_plain_state :: anon_struct_37;

gsl_monte_plain_integrate :: (f: *gsl_monte_function, xl: *float64, xu: *float64, dim: size_t, calls: size_t, r: *gsl_rng, state: *gsl_monte_plain_state, result: *float64, abserr: *float64) -> s32 #foreign libgsl;

gsl_monte_plain_alloc :: (dim: size_t) -> *gsl_monte_plain_state #foreign libgsl;

gsl_monte_plain_init :: (state: *gsl_monte_plain_state) -> s32 #foreign libgsl;

gsl_monte_plain_free :: (state: *gsl_monte_plain_state) -> void #foreign libgsl;

anon_struct_38 :: struct {
    min_calls:               size_t;
    min_calls_per_bisection: size_t;
    dither:                  float64;
    estimate_frac:           float64;
    alpha:                   float64;
    dim:                     size_t;
    estimate_style:          s32;
    depth:                   s32;
    verbose:                 s32;
    x:                       *float64;
    xmid:                    *float64;
    sigma_l:                 *float64;
    sigma_r:                 *float64;
    fmax_l:                  *float64;
    fmax_r:                  *float64;
    fmin_l:                  *float64;
    fmin_r:                  *float64;
    fsum_l:                  *float64;
    fsum_r:                  *float64;
    fsum2_l:                 *float64;
    fsum2_r:                 *float64;
    hits_l:                  *size_t;
    hits_r:                  *size_t;
}

gsl_monte_miser_state :: anon_struct_38;

gsl_monte_miser_integrate :: (f: *gsl_monte_function, xl: *float64, xh: *float64, dim: size_t, calls: size_t, r: *gsl_rng, state: *gsl_monte_miser_state, result: *float64, abserr: *float64) -> s32 #foreign libgsl;

gsl_monte_miser_alloc :: (dim: size_t) -> *gsl_monte_miser_state #foreign libgsl;

gsl_monte_miser_init :: (state: *gsl_monte_miser_state) -> s32 #foreign libgsl;

gsl_monte_miser_free :: (state: *gsl_monte_miser_state) -> void #foreign libgsl;

anon_struct_39 :: struct {
    estimate_frac:           float64;
    min_calls:               size_t;
    min_calls_per_bisection: size_t;
    alpha:                   float64;
    dither:                  float64;
}

gsl_monte_miser_params :: anon_struct_39;

gsl_monte_miser_params_get :: (state: *gsl_monte_miser_state, params: *gsl_monte_miser_params) -> void #foreign libgsl;

gsl_monte_miser_params_set :: (state: *gsl_monte_miser_state, params: *gsl_monte_miser_params) -> void #foreign libgsl;

anon_enum_40 :: enum s32 {
    GSL_VEGAS_MODE_IMPORTANCE      :: 1;
    GSL_VEGAS_MODE_IMPORTANCE_ONLY :: 0;
    GSL_VEGAS_MODE_STRATIFIED      :: -1;
}

anon_struct_41 :: struct {
    dim:           size_t;
    bins_max:      size_t;
    bins:          u32;
    boxes:         u32;
    xi:            *float64;
    xin:           *float64;
    delx:          *float64;
    weight:        *float64;
    vol:           float64;

    x:             *float64;
    bin:           *s32;
    box:           *s32;

    d:             *float64;

    alpha:         float64;
    mode:          s32;
    verbose:       s32;
    iterations:    u32;
    stage:         s32;

    jac:           float64;
    wtd_int_sum:   float64;
    sum_wgts:      float64;
    chi_sum:       float64;
    chisq:         float64;

    result:        float64;
    sigma:         float64;

    it_start:      u32;
    it_num:        u32;
    samples:       u32;
    calls_per_box: u32;

    ostream:       *FILE;
}

gsl_monte_vegas_state :: anon_struct_41;

gsl_monte_vegas_integrate :: (f: *gsl_monte_function, xl: *float64, xu: *float64, dim: size_t, calls: size_t, r: *gsl_rng, state: *gsl_monte_vegas_state, result: *float64, abserr: *float64) -> s32 #foreign libgsl;

gsl_monte_vegas_alloc :: (dim: size_t) -> *gsl_monte_vegas_state #foreign libgsl;

gsl_monte_vegas_init :: (state: *gsl_monte_vegas_state) -> s32 #foreign libgsl;

gsl_monte_vegas_free :: (state: *gsl_monte_vegas_state) -> void #foreign libgsl;

gsl_monte_vegas_chisq :: (state: *gsl_monte_vegas_state) -> float64 #foreign libgsl;
gsl_monte_vegas_runval :: (state: *gsl_monte_vegas_state, result: *float64, sigma: *float64) -> void #foreign libgsl;

anon_struct_42 :: struct {
    alpha:      float64;
    iterations: size_t;
    stage:      s32;
    mode:       s32;
    verbose:    s32;
    ostream:    *FILE;
}

gsl_monte_vegas_params :: anon_struct_42;

gsl_monte_vegas_params_get :: (state: *gsl_monte_vegas_state, params: *gsl_monte_vegas_params) -> void #foreign libgsl;

gsl_monte_vegas_params_set :: (state: *gsl_monte_vegas_state, params: *gsl_monte_vegas_params) -> void #foreign libgsl;

gsl_siman_Efunc_t :: #type (a0: *void) -> float64 #c_call;
gsl_siman_step_t :: #type (a0: *gsl_rng, a1: *void, a2: float64) -> void #c_call;
gsl_siman_metric_t :: #type (a0: *void, a1: *void) -> float64 #c_call;
gsl_siman_print_t :: #type (a0: *void) -> void #c_call;
gsl_siman_copy_t :: #type (a0: *void, a1: *void) -> void #c_call;
gsl_siman_copy_construct_t :: #type (a0: *void) -> *void #c_call;
gsl_siman_destroy_t :: #type (a0: *void) -> void #c_call;

anon_struct_43 :: struct {
    n_tries:       s32;
    iters_fixed_T: s32;
    step_size:     float64;

    k:             float64;
    t_initial:     float64;
    mu_t:          float64;
    t_min:         float64;
}

gsl_siman_params_t :: anon_struct_43;

gsl_siman_solve :: (r: *gsl_rng, x0_p: *void, Ef: gsl_siman_Efunc_t, take_step: gsl_siman_step_t, distance: gsl_siman_metric_t, print_position: gsl_siman_print_t, copyfunc: gsl_siman_copy_t, copy_constructor: gsl_siman_copy_construct_t, destructor: gsl_siman_destroy_t, element_size: size_t, params: gsl_siman_params_t) -> void #foreign libgsl;

gsl_siman_solve_many :: (r: *gsl_rng, x0_p: *void, Ef: gsl_siman_Efunc_t, take_step: gsl_siman_step_t, distance: gsl_siman_metric_t, print_position: gsl_siman_print_t, element_size: size_t, params: gsl_siman_params_t) -> void #foreign libgsl;

anon_struct_44 :: struct {
    function:  #type (a0: float64, a1: *float64, a2: *float64, a3: *void) -> s32 #c_call;
    jacobian:  #type (a0: float64, a1: *float64, a2: *float64, a3: *float64, a4: *void) -> s32 #c_call;
    dimension: size_t;
    params:    *void;
}

gsl_odeiv_system :: anon_struct_44;

anon_struct_45 :: struct {
    name:                 *u8;
    can_use_dydt_in:      s32;
    gives_exact_dydt_out: s32;
    alloc:                #type (a0: size_t) -> *void #c_call;
    apply:                #type (a0: *void, a1: size_t, a2: float64, a3: float64, a4: *float64, a5: *float64, a6: *float64, a7: *float64, a8: *gsl_odeiv_system) -> s32 #c_call;
    reset:                #type (a0: *void, a1: size_t) -> s32 #c_call;
    order:                #type (a0: *void) -> u32 #c_call;
    free:                 #type (a0: *void) -> void #c_call;
}

gsl_odeiv_step_type :: anon_struct_45;

anon_struct_46 :: struct {
    type:      *gsl_odeiv_step_type;
    dimension: size_t;
    state:     *void;
}

gsl_odeiv_step :: anon_struct_46;

gsl_odeiv_step_rk2_: *gsl_odeiv_step_type;
gsl_odeiv_step_rk4_: *gsl_odeiv_step_type;
gsl_odeiv_step_rkf45_: *gsl_odeiv_step_type;
gsl_odeiv_step_rkck_: *gsl_odeiv_step_type;
gsl_odeiv_step_rk8pd_: *gsl_odeiv_step_type;
gsl_odeiv_step_rk2imp_: *gsl_odeiv_step_type;
gsl_odeiv_step_rk2simp_: *gsl_odeiv_step_type;
gsl_odeiv_step_rk4imp_: *gsl_odeiv_step_type;
gsl_odeiv_step_bsimp_: *gsl_odeiv_step_type;
gsl_odeiv_step_gear1_: *gsl_odeiv_step_type;
gsl_odeiv_step_gear2_: *gsl_odeiv_step_type;

gsl_odeiv_step_alloc :: (T: *gsl_odeiv_step_type, dim: size_t) -> *gsl_odeiv_step #foreign libgsl;
gsl_odeiv_step_reset :: (s: *gsl_odeiv_step) -> s32 #foreign libgsl;
gsl_odeiv_step_free :: (s: *gsl_odeiv_step) -> void #foreign libgsl;

gsl_odeiv_step_name :: (s: *gsl_odeiv_step) -> *u8 #foreign libgsl;
gsl_odeiv_step_order :: (s: *gsl_odeiv_step) -> u32 #foreign libgsl;

gsl_odeiv_step_apply :: (s: *gsl_odeiv_step, t: float64, h: float64, y: *float64, yerr: *float64, dydt_in: *float64, dydt_out: *float64, dydt: *gsl_odeiv_system) -> s32 #foreign libgsl;

anon_struct_47 :: struct {
    name:    *u8;
    alloc:   #type () -> *void #c_call;
    init:    #type (a0: *void, a1: float64, a2: float64, a3: float64, a4: float64) -> s32 #c_call;
    hadjust: #type (a0: *void, a1: size_t, a2: u32, a3: *float64, a4: *float64, a5: *float64, a6: *float64) -> s32 #c_call;
    free:    #type (a0: *void) -> void #c_call;
}

gsl_odeiv_control_type :: anon_struct_47;

anon_struct_48 :: struct {
    type:  *gsl_odeiv_control_type;
    state: *void;
}

gsl_odeiv_control :: anon_struct_48;

gsl_odeiv_control_alloc :: (T: *gsl_odeiv_control_type) -> *gsl_odeiv_control #foreign libgsl;
gsl_odeiv_control_init :: (c: *gsl_odeiv_control, eps_abs: float64, eps_rel: float64, a_y: float64, a_dydt: float64) -> s32 #foreign libgsl;
gsl_odeiv_control_free :: (c: *gsl_odeiv_control) -> void #foreign libgsl;
gsl_odeiv_control_hadjust :: (c: *gsl_odeiv_control, s: *gsl_odeiv_step, y: *float64, yerr: *float64, dydt: *float64, h: *float64) -> s32 #foreign libgsl;
gsl_odeiv_control_name :: (c: *gsl_odeiv_control) -> *u8 #foreign libgsl;

gsl_odeiv_control_standard_new :: (eps_abs: float64, eps_rel: float64, a_y: float64, a_dydt: float64) -> *gsl_odeiv_control #foreign libgsl;
gsl_odeiv_control_y_new :: (eps_abs: float64, eps_rel: float64) -> *gsl_odeiv_control #foreign libgsl;
gsl_odeiv_control_yp_new :: (eps_abs: float64, eps_rel: float64) -> *gsl_odeiv_control #foreign libgsl;

gsl_odeiv_control_scaled_new :: (eps_abs: float64, eps_rel: float64, a_y: float64, a_dydt: float64, scale_abs: *float64, dim: size_t) -> *gsl_odeiv_control #foreign libgsl;

anon_struct_49 :: struct {
    dimension:    size_t;
    y0:           *float64;
    yerr:         *float64;
    dydt_in:      *float64;
    dydt_out:     *float64;
    last_step:    float64;
    count:        u64;
    failed_steps: u64;
}

gsl_odeiv_evolve :: anon_struct_49;

gsl_odeiv_evolve_alloc :: (dim: size_t) -> *gsl_odeiv_evolve #foreign libgsl;
gsl_odeiv_evolve_apply :: (e: *gsl_odeiv_evolve, con: *gsl_odeiv_control, step: *gsl_odeiv_step, dydt: *gsl_odeiv_system, t: *float64, t1: float64, h: *float64, y: *float64) -> s32 #foreign libgsl;
gsl_odeiv_evolve_reset :: (e: *gsl_odeiv_evolve) -> s32 #foreign libgsl;
gsl_odeiv_evolve_free :: (e: *gsl_odeiv_evolve) -> void #foreign libgsl;

anon_struct_50 :: struct {
    cache:      size_t;
    miss_count: size_t;
    hit_count:  size_t;
}

gsl_interp_accel :: anon_struct_50;

anon_struct_51 :: struct {
    name:        *u8;
    min_size:    u32;
    alloc:       #type (a0: size_t) -> *void #c_call;
    init:        #type (a0: *void, a1: *float64, a2: *float64, a3: size_t) -> s32 #c_call;
    eval:        #type (a0: *void, a1: *float64, a2: *float64, a3: size_t, a4: float64, a5: *gsl_interp_accel, a6: *float64) -> s32 #c_call;
    eval_deriv:  #type (a0: *void, a1: *float64, a2: *float64, a3: size_t, a4: float64, a5: *gsl_interp_accel, a6: *float64) -> s32 #c_call;
    eval_deriv2: #type (a0: *void, a1: *float64, a2: *float64, a3: size_t, a4: float64, a5: *gsl_interp_accel, a6: *float64) -> s32 #c_call;
    eval_integ:  #type (a0: *void, a1: *float64, a2: *float64, a3: size_t, a4: *gsl_interp_accel, a5: float64, a6: float64, a7: *float64) -> s32 #c_call;
    free:        #type (a0: *void) -> void #c_call;
}

gsl_interp_type :: anon_struct_51;

anon_struct_52 :: struct {
    type:  *gsl_interp_type;
    xmin:  float64;
    xmax:  float64;
    size:  size_t;
    state: *void;
}

gsl_interp :: anon_struct_52;

gsl_interp_linear_: *gsl_interp_type;
gsl_interp_polynomial_: *gsl_interp_type;
gsl_interp_cspline_: *gsl_interp_type;
gsl_interp_cspline_periodic_: *gsl_interp_type;
gsl_interp_akima_: *gsl_interp_type;
gsl_interp_akima_periodic_: *gsl_interp_type;
gsl_interp_steffen_: *gsl_interp_type;

gsl_interp_accel_alloc :: () -> *gsl_interp_accel #foreign libgsl;

gsl_interp_accel_reset :: (a: *gsl_interp_accel) -> s32 #foreign libgsl;

gsl_interp_accel_free :: (a: *gsl_interp_accel) -> void #foreign libgsl;

gsl_interp_alloc :: (T: *gsl_interp_type, n: size_t) -> *gsl_interp #foreign libgsl;

gsl_interp_init :: (obj: *gsl_interp, xa: *float64, ya: *float64, size: size_t) -> s32 #foreign libgsl;

gsl_interp_name :: (interp: *gsl_interp) -> *u8 #foreign libgsl;
gsl_interp_min_size :: (interp: *gsl_interp) -> u32 #foreign libgsl;
gsl_interp_type_min_size :: (T: *gsl_interp_type) -> u32 #foreign libgsl;

gsl_interp_eval_e :: (obj: *gsl_interp, xa: *float64, ya: *float64, x: float64, a: *gsl_interp_accel, y: *float64) -> s32 #foreign libgsl;

gsl_interp_eval :: (obj: *gsl_interp, xa: *float64, ya: *float64, x: float64, a: *gsl_interp_accel) -> float64 #foreign libgsl;

gsl_interp_eval_deriv_e :: (obj: *gsl_interp, xa: *float64, ya: *float64, x: float64, a: *gsl_interp_accel, d: *float64) -> s32 #foreign libgsl;

gsl_interp_eval_deriv :: (obj: *gsl_interp, xa: *float64, ya: *float64, x: float64, a: *gsl_interp_accel) -> float64 #foreign libgsl;

gsl_interp_eval_deriv2_e :: (obj: *gsl_interp, xa: *float64, ya: *float64, x: float64, a: *gsl_interp_accel, d2: *float64) -> s32 #foreign libgsl;

gsl_interp_eval_deriv2 :: (obj: *gsl_interp, xa: *float64, ya: *float64, x: float64, a: *gsl_interp_accel) -> float64 #foreign libgsl;

gsl_interp_eval_integ_e :: (obj: *gsl_interp, xa: *float64, ya: *float64, a: float64, b: float64, acc: *gsl_interp_accel, result: *float64) -> s32 #foreign libgsl;

gsl_interp_eval_integ :: (obj: *gsl_interp, xa: *float64, ya: *float64, a: float64, b: float64, acc: *gsl_interp_accel) -> float64 #foreign libgsl;

gsl_interp_free :: (interp: *gsl_interp) -> void #foreign libgsl;

gsl_interp_bsearch :: (x_array: *float64, x: float64, index_lo: size_t, index_hi: size_t) -> size_t #foreign libgsl;

gsl_interp_accel_find :: (a: *gsl_interp_accel, x_array: *float64, size: size_t, x: float64) -> size_t #foreign libgsl;

anon_struct_53 :: struct {
    interp: *gsl_interp;
    x:      *float64;
    y:      *float64;
    size:   size_t;
}

gsl_spline :: anon_struct_53;

gsl_spline_alloc :: (T: *gsl_interp_type, size: size_t) -> *gsl_spline #foreign libgsl;

gsl_spline_init :: (spline: *gsl_spline, xa: *float64, ya: *float64, size: size_t) -> s32 #foreign libgsl;

gsl_spline_name :: (spline: *gsl_spline) -> *u8 #foreign libgsl;
gsl_spline_min_size :: (spline: *gsl_spline) -> u32 #foreign libgsl;

gsl_spline_eval_e :: (spline: *gsl_spline, x: float64, a: *gsl_interp_accel, y: *float64) -> s32 #foreign libgsl;

gsl_spline_eval :: (spline: *gsl_spline, x: float64, a: *gsl_interp_accel) -> float64 #foreign libgsl;

gsl_spline_eval_deriv_e :: (spline: *gsl_spline, x: float64, a: *gsl_interp_accel, y: *float64) -> s32 #foreign libgsl;

gsl_spline_eval_deriv :: (spline: *gsl_spline, x: float64, a: *gsl_interp_accel) -> float64 #foreign libgsl;

gsl_spline_eval_deriv2_e :: (spline: *gsl_spline, x: float64, a: *gsl_interp_accel, y: *float64) -> s32 #foreign libgsl;

gsl_spline_eval_deriv2 :: (spline: *gsl_spline, x: float64, a: *gsl_interp_accel) -> float64 #foreign libgsl;

gsl_spline_eval_integ_e :: (spline: *gsl_spline, a: float64, b: float64, acc: *gsl_interp_accel, y: *float64) -> s32 #foreign libgsl;

gsl_spline_eval_integ :: (spline: *gsl_spline, a: float64, b: float64, acc: *gsl_interp_accel) -> float64 #foreign libgsl;

gsl_spline_free :: (spline: *gsl_spline) -> void #foreign libgsl;

gsl_deriv_central :: (f: *gsl_function, x: float64, h: float64, result: *float64, abserr: *float64) -> s32 #foreign libgsl;

gsl_deriv_backward :: (f: *gsl_function, x: float64, h: float64, result: *float64, abserr: *float64) -> s32 #foreign libgsl;

gsl_deriv_forward :: (f: *gsl_function, x: float64, h: float64, result: *float64, abserr: *float64) -> s32 #foreign libgsl;

gsl_cheb_series_struct :: struct {
    c:        *float64;
    order:    size_t;
    a:        float64;
    b:        float64;

    order_sp: size_t;

    f:        *float64;
}

gsl_cheb_series :: gsl_cheb_series_struct;

gsl_cheb_alloc :: (order: size_t) -> *gsl_cheb_series #foreign libgsl;

gsl_cheb_free :: (cs: *gsl_cheb_series) -> void #foreign libgsl;

gsl_cheb_init :: (cs: *gsl_cheb_series, func: *gsl_function, a: float64, b: float64) -> s32 #foreign libgsl;

gsl_cheb_order :: (cs: *gsl_cheb_series) -> size_t #foreign libgsl;
gsl_cheb_size :: (cs: *gsl_cheb_series) -> size_t #foreign libgsl;
gsl_cheb_coeffs :: (cs: *gsl_cheb_series) -> *float64 #foreign libgsl;

gsl_cheb_eval :: (cs: *gsl_cheb_series, x: float64) -> float64 #foreign libgsl;
gsl_cheb_eval_err :: (cs: *gsl_cheb_series, x: float64, result: *float64, abserr: *float64) -> s32 #foreign libgsl;

gsl_cheb_eval_n :: (cs: *gsl_cheb_series, order: size_t, x: float64) -> float64 #foreign libgsl;

gsl_cheb_eval_n_err :: (cs: *gsl_cheb_series, order: size_t, x: float64, result: *float64, abserr: *float64) -> s32 #foreign libgsl;

gsl_cheb_eval_mode :: (cs: *gsl_cheb_series, x: float64, mode: gsl_mode_t) -> float64 #foreign libgsl;
gsl_cheb_eval_mode_e :: (cs: *gsl_cheb_series, x: float64, mode: gsl_mode_t, result: *float64, abserr: *float64) -> s32 #foreign libgsl;

gsl_cheb_calc_deriv :: (deriv: *gsl_cheb_series, cs: *gsl_cheb_series) -> s32 #foreign libgsl;

gsl_cheb_calc_integ :: (integ: *gsl_cheb_series, cs: *gsl_cheb_series) -> s32 #foreign libgsl;

anon_struct_54 :: struct {
    size:       size_t;
    i:          size_t;
    terms_used: size_t;
    sum_plain:  float64;
    q_num:      *float64;
    q_den:      *float64;
    dq_num:     *float64;
    dq_den:     *float64;
    dsum:       *float64;
}

gsl_sum_levin_u_workspace :: anon_struct_54;

gsl_sum_levin_u_alloc :: (n: size_t) -> *gsl_sum_levin_u_workspace #foreign libgsl;
gsl_sum_levin_u_free :: (w: *gsl_sum_levin_u_workspace) -> void #foreign libgsl;

gsl_sum_levin_u_accel :: (array: *float64, n: size_t, w: *gsl_sum_levin_u_workspace, sum_accel: *float64, abserr: *float64) -> s32 #foreign libgsl;

gsl_sum_levin_u_minmax :: (array: *float64, n: size_t, min_terms: size_t, max_terms: size_t, w: *gsl_sum_levin_u_workspace, sum_accel: *float64, abserr: *float64) -> s32 #foreign libgsl;

gsl_sum_levin_u_step :: (term: float64, n: size_t, nmax: size_t, w: *gsl_sum_levin_u_workspace, sum_accel: *float64) -> s32 #foreign libgsl;

anon_struct_55 :: struct {
    size:       size_t;
    i:          size_t;
    terms_used: size_t;
    sum_plain:  float64;
    q_num:      *float64;
    q_den:      *float64;
    dsum:       *float64;
}

gsl_sum_levin_utrunc_workspace :: anon_struct_55;

gsl_sum_levin_utrunc_alloc :: (n: size_t) -> *gsl_sum_levin_utrunc_workspace #foreign libgsl;
gsl_sum_levin_utrunc_free :: (w: *gsl_sum_levin_utrunc_workspace) -> void #foreign libgsl;

gsl_sum_levin_utrunc_accel :: (array: *float64, n: size_t, w: *gsl_sum_levin_utrunc_workspace, sum_accel: *float64, abserr_trunc: *float64) -> s32 #foreign libgsl;

gsl_sum_levin_utrunc_minmax :: (array: *float64, n: size_t, min_terms: size_t, max_terms: size_t, w: *gsl_sum_levin_utrunc_workspace, sum_accel: *float64, abserr_trunc: *float64) -> s32 #foreign libgsl;

gsl_sum_levin_utrunc_step :: (term: float64, n: size_t, w: *gsl_sum_levin_utrunc_workspace, sum_accel: *float64) -> s32 #foreign libgsl;

anon_enum_56 :: enum s32 {
    gsl_wavelet_forward  :: 1;
    gsl_wavelet_backward :: -1;
}

gsl_wavelet_direction :: anon_enum_56;

anon_struct_57 :: struct {
    name: *u8;
    init: #type (a0: **float64, a1: **float64, a2: **float64, a3: **float64, a4: *size_t, a5: *size_t, a6: size_t) -> s32 #c_call;
}

gsl_wavelet_type :: anon_struct_57;

anon_struct_58 :: struct {
    type:   *gsl_wavelet_type;
    h1:     *float64;
    g1:     *float64;
    h2:     *float64;
    g2:     *float64;
    nc:     size_t;
    offset: size_t;
}

gsl_wavelet :: anon_struct_58;

anon_struct_59 :: struct {
    scratch: *float64;
    n:       size_t;
}

gsl_wavelet_workspace :: anon_struct_59;

gsl_wavelet_daubechies_: *gsl_wavelet_type;
gsl_wavelet_daubechies_centered_: *gsl_wavelet_type;
gsl_wavelet_haar_: *gsl_wavelet_type;
gsl_wavelet_haar_centered_: *gsl_wavelet_type;
gsl_wavelet_bspline_: *gsl_wavelet_type;
gsl_wavelet_bspline_centered_: *gsl_wavelet_type;

gsl_wavelet_alloc :: (T: *gsl_wavelet_type, k: size_t) -> *gsl_wavelet #foreign libgsl;
gsl_wavelet_free :: (w: *gsl_wavelet) -> void #foreign libgsl;
gsl_wavelet_name :: (w: *gsl_wavelet) -> *u8 #foreign libgsl;

gsl_wavelet_workspace_alloc :: (n: size_t) -> *gsl_wavelet_workspace #foreign libgsl;
gsl_wavelet_workspace_free :: (work: *gsl_wavelet_workspace) -> void #foreign libgsl;

gsl_wavelet_transform :: (w: *gsl_wavelet, data: *float64, stride: size_t, n: size_t, dir: gsl_wavelet_direction, work: *gsl_wavelet_workspace) -> s32 #foreign libgsl;

gsl_wavelet_transform_forward :: (w: *gsl_wavelet, data: *float64, stride: size_t, n: size_t, work: *gsl_wavelet_workspace) -> s32 #foreign libgsl;

gsl_wavelet_transform_inverse :: (w: *gsl_wavelet, data: *float64, stride: size_t, n: size_t, work: *gsl_wavelet_workspace) -> s32 #foreign libgsl;

gsl_wavelet2d_transform :: (w: *gsl_wavelet, data: *float64, tda: size_t, size1: size_t, size2: size_t, dir: gsl_wavelet_direction, work: *gsl_wavelet_workspace) -> s32 #foreign libgsl;

gsl_wavelet2d_transform_forward :: (w: *gsl_wavelet, data: *float64, tda: size_t, size1: size_t, size2: size_t, work: *gsl_wavelet_workspace) -> s32 #foreign libgsl;

gsl_wavelet2d_transform_inverse :: (w: *gsl_wavelet, data: *float64, tda: size_t, size1: size_t, size2: size_t, work: *gsl_wavelet_workspace) -> s32 #foreign libgsl;

gsl_wavelet2d_nstransform :: (w: *gsl_wavelet, data: *float64, tda: size_t, size1: size_t, size2: size_t, dir: gsl_wavelet_direction, work: *gsl_wavelet_workspace) -> s32 #foreign libgsl;

gsl_wavelet2d_nstransform_forward :: (w: *gsl_wavelet, data: *float64, tda: size_t, size1: size_t, size2: size_t, work: *gsl_wavelet_workspace) -> s32 #foreign libgsl;

gsl_wavelet2d_nstransform_inverse :: (w: *gsl_wavelet, data: *float64, tda: size_t, size1: size_t, size2: size_t, work: *gsl_wavelet_workspace) -> s32 #foreign libgsl;

gsl_wavelet2d_transform_matrix :: (w: *gsl_wavelet, a: *gsl_matrix, dir: gsl_wavelet_direction, work: *gsl_wavelet_workspace) -> s32 #foreign libgsl;

gsl_wavelet2d_transform_matrix_forward :: (w: *gsl_wavelet, a: *gsl_matrix, work: *gsl_wavelet_workspace) -> s32 #foreign libgsl;

gsl_wavelet2d_transform_matrix_inverse :: (w: *gsl_wavelet, a: *gsl_matrix, work: *gsl_wavelet_workspace) -> s32 #foreign libgsl;

gsl_wavelet2d_nstransform_matrix :: (w: *gsl_wavelet, a: *gsl_matrix, dir: gsl_wavelet_direction, work: *gsl_wavelet_workspace) -> s32 #foreign libgsl;

gsl_wavelet2d_nstransform_matrix_forward :: (w: *gsl_wavelet, a: *gsl_matrix, work: *gsl_wavelet_workspace) -> s32 #foreign libgsl;

gsl_wavelet2d_nstransform_matrix_inverse :: (w: *gsl_wavelet, a: *gsl_matrix, work: *gsl_wavelet_workspace) -> s32 #foreign libgsl;

gsl_dht_struct :: struct {
    size: size_t;
    nu:   float64;
    xmax: float64;
    kmax: float64;
    j:    *float64;
    Jjj:  *float64;
    J2:   *float64;
}

gsl_dht :: gsl_dht_struct;

gsl_dht_alloc :: (size: size_t) -> *gsl_dht #foreign libgsl;
gsl_dht_new :: (size: size_t, nu: float64, xmax: float64) -> *gsl_dht #foreign libgsl;

gsl_dht_init :: (t: *gsl_dht, nu: float64, xmax: float64) -> s32 #foreign libgsl;

gsl_dht_x_sample :: (t: *gsl_dht, n: s32) -> float64 #foreign libgsl;

gsl_dht_k_sample :: (t: *gsl_dht, n: s32) -> float64 #foreign libgsl;

gsl_dht_free :: (t: *gsl_dht) -> void #foreign libgsl;

gsl_dht_apply :: (t: *gsl_dht, f_in: *float64, f_out: *float64) -> s32 #foreign libgsl;

anon_struct_60 :: struct {
    name:    *u8;
    size:    size_t;
    set:     #type (a0: *void, a1: *gsl_function, a2: *float64, a3: float64, a4: float64) -> s32 #c_call;
    iterate: #type (a0: *void, a1: *gsl_function, a2: *float64, a3: *float64, a4: *float64) -> s32 #c_call;
}

gsl_root_fsolver_type :: anon_struct_60;

anon_struct_61 :: struct {
    type:     *gsl_root_fsolver_type;
    function: *gsl_function;
    root:     float64;
    x_lower:  float64;
    x_upper:  float64;
    state:    *void;
}

gsl_root_fsolver :: anon_struct_61;

anon_struct_62 :: struct {
    name:    *u8;
    size:    size_t;
    set:     #type (a0: *void, a1: *gsl_function_fdf, a2: *float64) -> s32 #c_call;
    iterate: #type (a0: *void, a1: *gsl_function_fdf, a2: *float64) -> s32 #c_call;
}

gsl_root_fdfsolver_type :: anon_struct_62;

anon_struct_63 :: struct {
    type:  *gsl_root_fdfsolver_type;
    fdf:   *gsl_function_fdf;
    root:  float64;
    state: *void;
}

gsl_root_fdfsolver :: anon_struct_63;

gsl_root_fsolver_alloc :: (T: *gsl_root_fsolver_type) -> *gsl_root_fsolver #foreign libgsl;
gsl_root_fsolver_free :: (s: *gsl_root_fsolver) -> void #foreign libgsl;

gsl_root_fsolver_set :: (s: *gsl_root_fsolver, f: *gsl_function, x_lower: float64, x_upper: float64) -> s32 #foreign libgsl;

gsl_root_fsolver_iterate :: (s: *gsl_root_fsolver) -> s32 #foreign libgsl;

gsl_root_fsolver_name :: (s: *gsl_root_fsolver) -> *u8 #foreign libgsl;
gsl_root_fsolver_root :: (s: *gsl_root_fsolver) -> float64 #foreign libgsl;
gsl_root_fsolver_x_lower :: (s: *gsl_root_fsolver) -> float64 #foreign libgsl;
gsl_root_fsolver_x_upper :: (s: *gsl_root_fsolver) -> float64 #foreign libgsl;

gsl_root_fdfsolver_alloc :: (T: *gsl_root_fdfsolver_type) -> *gsl_root_fdfsolver #foreign libgsl;

gsl_root_fdfsolver_set :: (s: *gsl_root_fdfsolver, fdf: *gsl_function_fdf, root: float64) -> s32 #foreign libgsl;

gsl_root_fdfsolver_iterate :: (s: *gsl_root_fdfsolver) -> s32 #foreign libgsl;

gsl_root_fdfsolver_free :: (s: *gsl_root_fdfsolver) -> void #foreign libgsl;

gsl_root_fdfsolver_name :: (s: *gsl_root_fdfsolver) -> *u8 #foreign libgsl;
gsl_root_fdfsolver_root :: (s: *gsl_root_fdfsolver) -> float64 #foreign libgsl;

gsl_root_test_interval :: (x_lower: float64, x_upper: float64, epsabs: float64, epsrel: float64) -> s32 #foreign libgsl;

gsl_root_test_residual :: (f: float64, epsabs: float64) -> s32 #foreign libgsl;

gsl_root_test_delta :: (x1: float64, x0: float64, epsabs: float64, epsrel: float64) -> s32 #foreign libgsl;

gsl_root_fsolver_bisection_: *gsl_root_fsolver_type;
gsl_root_fsolver_brent_: *gsl_root_fsolver_type;
gsl_root_fsolver_falsepos_: *gsl_root_fsolver_type;
gsl_root_fdfsolver_newton_: *gsl_root_fdfsolver_type;
gsl_root_fdfsolver_secant_: *gsl_root_fdfsolver_type;
gsl_root_fdfsolver_steffenson_: *gsl_root_fdfsolver_type;

anon_struct_64 :: struct {
    name:    *u8;
    size:    size_t;
    set:     #type (a0: *void, a1: *gsl_function, a2: float64, a3: float64, a4: float64, a5: float64, a6: float64, a7: float64) -> s32 #c_call;
    iterate: #type (a0: *void, a1: *gsl_function, a2: *float64, a3: *float64, a4: *float64, a5: *float64, a6: *float64, a7: *float64) -> s32 #c_call;
}

gsl_min_fminimizer_type :: anon_struct_64;

anon_struct_65 :: struct {
    type:      *gsl_min_fminimizer_type;
    function:  *gsl_function;
    x_minimum: float64;
    x_lower:   float64;
    x_upper:   float64;
    f_minimum: float64;
    f_lower:   float64;
    f_upper:   float64;
    state:     *void;
}

gsl_min_fminimizer :: anon_struct_65;

gsl_min_fminimizer_alloc :: (T: *gsl_min_fminimizer_type) -> *gsl_min_fminimizer #foreign libgsl;

gsl_min_fminimizer_free :: (s: *gsl_min_fminimizer) -> void #foreign libgsl;

gsl_min_fminimizer_set :: (s: *gsl_min_fminimizer, f: *gsl_function, x_minimum: float64, x_lower: float64, x_upper: float64) -> s32 #foreign libgsl;

gsl_min_fminimizer_set_with_values :: (s: *gsl_min_fminimizer, f: *gsl_function, x_minimum: float64, f_minimum: float64, x_lower: float64, f_lower: float64, x_upper: float64, f_upper: float64) -> s32 #foreign libgsl;

gsl_min_fminimizer_iterate :: (s: *gsl_min_fminimizer) -> s32 #foreign libgsl;

gsl_min_fminimizer_name :: (s: *gsl_min_fminimizer) -> *u8 #foreign libgsl;

gsl_min_fminimizer_x_minimum :: (s: *gsl_min_fminimizer) -> float64 #foreign libgsl;
gsl_min_fminimizer_x_lower :: (s: *gsl_min_fminimizer) -> float64 #foreign libgsl;
gsl_min_fminimizer_x_upper :: (s: *gsl_min_fminimizer) -> float64 #foreign libgsl;
gsl_min_fminimizer_f_minimum :: (s: *gsl_min_fminimizer) -> float64 #foreign libgsl;
gsl_min_fminimizer_f_lower :: (s: *gsl_min_fminimizer) -> float64 #foreign libgsl;
gsl_min_fminimizer_f_upper :: (s: *gsl_min_fminimizer) -> float64 #foreign libgsl;

gsl_min_fminimizer_minimum :: (s: *gsl_min_fminimizer) -> float64 #foreign libgsl;

gsl_min_test_interval :: (x_lower: float64, x_upper: float64, epsabs: float64, epsrel: float64) -> s32 #foreign libgsl;

gsl_min_fminimizer_goldensection_: *gsl_min_fminimizer_type;
gsl_min_fminimizer_brent_: *gsl_min_fminimizer_type;
gsl_min_fminimizer_quad_golden_: *gsl_min_fminimizer_type;

gsl_min_bracketing_function :: #type (a0: *gsl_function, a1: *float64, a2: *float64, a3: *float64, a4: *float64, a5: *float64, a6: *float64, a7: size_t) -> s32 #c_call;

gsl_min_find_bracket :: (f: *gsl_function, x_minimum: *float64, f_minimum: *float64, x_lower: *float64, f_lower: *float64, x_upper: *float64, f_upper: *float64, eval_max: size_t) -> s32 #foreign libgsl;

gsl_multiroot_function_struct :: struct {
    f:      #type (a0: *gsl_vector, a1: *void, a2: *gsl_vector) -> s32 #c_call;
    n:      size_t;
    params: *void;
}

gsl_multiroot_function :: gsl_multiroot_function_struct;

gsl_multiroot_fdjacobian :: (F: *gsl_multiroot_function, x: *gsl_vector, f: *gsl_vector, epsrel: float64, jacobian: *gsl_matrix) -> s32 #foreign libgsl;

anon_struct_66 :: struct {
    name:    *u8;
    size:    size_t;
    alloc:   #type (a0: *void, a1: size_t) -> s32 #c_call;
    set:     #type (a0: *void, a1: *gsl_multiroot_function, a2: *gsl_vector, a3: *gsl_vector, a4: *gsl_vector) -> s32 #c_call;
    iterate: #type (a0: *void, a1: *gsl_multiroot_function, a2: *gsl_vector, a3: *gsl_vector, a4: *gsl_vector) -> s32 #c_call;
    free:    #type (a0: *void) -> void #c_call;
}

gsl_multiroot_fsolver_type :: anon_struct_66;

anon_struct_67 :: struct {
    type:     *gsl_multiroot_fsolver_type;
    function: *gsl_multiroot_function;
    x:        *gsl_vector;
    f:        *gsl_vector;
    dx:       *gsl_vector;
    state:    *void;
}

gsl_multiroot_fsolver :: anon_struct_67;

gsl_multiroot_fsolver_alloc :: (T: *gsl_multiroot_fsolver_type, n: size_t) -> *gsl_multiroot_fsolver #foreign libgsl;

gsl_multiroot_fsolver_free :: (s: *gsl_multiroot_fsolver) -> void #foreign libgsl;

gsl_multiroot_fsolver_set :: (s: *gsl_multiroot_fsolver, f: *gsl_multiroot_function, x: *gsl_vector) -> s32 #foreign libgsl;

gsl_multiroot_fsolver_iterate :: (s: *gsl_multiroot_fsolver) -> s32 #foreign libgsl;

gsl_multiroot_fsolver_name :: (s: *gsl_multiroot_fsolver) -> *u8 #foreign libgsl;
gsl_multiroot_fsolver_root :: (s: *gsl_multiroot_fsolver) -> *gsl_vector #foreign libgsl;
gsl_multiroot_fsolver_dx :: (s: *gsl_multiroot_fsolver) -> *gsl_vector #foreign libgsl;
gsl_multiroot_fsolver_f :: (s: *gsl_multiroot_fsolver) -> *gsl_vector #foreign libgsl;

gsl_multiroot_function_fdf_struct :: struct {
    f:      #type (a0: *gsl_vector, a1: *void, a2: *gsl_vector) -> s32 #c_call;
    df:     #type (a0: *gsl_vector, a1: *void, a2: *gsl_matrix) -> s32 #c_call;
    fdf:    #type (a0: *gsl_vector, a1: *void, a2: *gsl_vector, a3: *gsl_matrix) -> s32 #c_call;
    n:      size_t;
    params: *void;
}

gsl_multiroot_function_fdf :: gsl_multiroot_function_fdf_struct;

anon_struct_68 :: struct {
    name:    *u8;
    size:    size_t;
    alloc:   #type (a0: *void, a1: size_t) -> s32 #c_call;
    set:     #type (a0: *void, a1: *gsl_multiroot_function_fdf, a2: *gsl_vector, a3: *gsl_vector, a4: *gsl_matrix, a5: *gsl_vector) -> s32 #c_call;
    iterate: #type (a0: *void, a1: *gsl_multiroot_function_fdf, a2: *gsl_vector, a3: *gsl_vector, a4: *gsl_matrix, a5: *gsl_vector) -> s32 #c_call;
    free:    #type (a0: *void) -> void #c_call;
}

gsl_multiroot_fdfsolver_type :: anon_struct_68;

anon_struct_69 :: struct {
    type:  *gsl_multiroot_fdfsolver_type;
    fdf:   *gsl_multiroot_function_fdf;
    x:     *gsl_vector;
    f:     *gsl_vector;
    J:     *gsl_matrix;
    dx:    *gsl_vector;
    state: *void;
}

gsl_multiroot_fdfsolver :: anon_struct_69;

gsl_multiroot_fdfsolver_alloc :: (T: *gsl_multiroot_fdfsolver_type, n: size_t) -> *gsl_multiroot_fdfsolver #foreign libgsl;

gsl_multiroot_fdfsolver_set :: (s: *gsl_multiroot_fdfsolver, fdf: *gsl_multiroot_function_fdf, x: *gsl_vector) -> s32 #foreign libgsl;

gsl_multiroot_fdfsolver_iterate :: (s: *gsl_multiroot_fdfsolver) -> s32 #foreign libgsl;

gsl_multiroot_fdfsolver_free :: (s: *gsl_multiroot_fdfsolver) -> void #foreign libgsl;

gsl_multiroot_fdfsolver_name :: (s: *gsl_multiroot_fdfsolver) -> *u8 #foreign libgsl;
gsl_multiroot_fdfsolver_root :: (s: *gsl_multiroot_fdfsolver) -> *gsl_vector #foreign libgsl;
gsl_multiroot_fdfsolver_dx :: (s: *gsl_multiroot_fdfsolver) -> *gsl_vector #foreign libgsl;
gsl_multiroot_fdfsolver_f :: (s: *gsl_multiroot_fdfsolver) -> *gsl_vector #foreign libgsl;

gsl_multiroot_test_delta :: (dx: *gsl_vector, x: *gsl_vector, epsabs: float64, epsrel: float64) -> s32 #foreign libgsl;

gsl_multiroot_test_residual :: (f: *gsl_vector, epsabs: float64) -> s32 #foreign libgsl;

gsl_multiroot_fsolver_dnewton_: *gsl_multiroot_fsolver_type;
gsl_multiroot_fsolver_broyden_: *gsl_multiroot_fsolver_type;
gsl_multiroot_fsolver_hybrid_: *gsl_multiroot_fsolver_type;
gsl_multiroot_fsolver_hybrids_: *gsl_multiroot_fsolver_type;

gsl_multiroot_fdfsolver_newton_: *gsl_multiroot_fdfsolver_type;
gsl_multiroot_fdfsolver_gnewton_: *gsl_multiroot_fdfsolver_type;
gsl_multiroot_fdfsolver_hybridj_: *gsl_multiroot_fdfsolver_type;
gsl_multiroot_fdfsolver_hybridsj_: *gsl_multiroot_fdfsolver_type;

gsl_multimin_function_struct :: struct {
    f:      #type (a0: *gsl_vector, a1: *void) -> float64 #c_call;
    n:      size_t;
    params: *void;
}

gsl_multimin_function :: gsl_multimin_function_struct;

gsl_multimin_function_fdf_struct :: struct {
    f:      #type (a0: *gsl_vector, a1: *void) -> float64 #c_call;
    df:     #type (a0: *gsl_vector, a1: *void, a2: *gsl_vector) -> void #c_call;
    fdf:    #type (a0: *gsl_vector, a1: *void, a2: *float64, a3: *gsl_vector) -> void #c_call;
    n:      size_t;
    params: *void;
}

gsl_multimin_function_fdf :: gsl_multimin_function_fdf_struct;

gsl_multimin_diff :: (f: *gsl_multimin_function, x: *gsl_vector, g: *gsl_vector) -> s32 #foreign libgsl;

anon_struct_70 :: struct {
    name:    *u8;
    size:    size_t;
    alloc:   #type (a0: *void, a1: size_t) -> s32 #c_call;
    set:     #type (a0: *void, a1: *gsl_multimin_function, a2: *gsl_vector, a3: *float64, a4: *gsl_vector) -> s32 #c_call;

    iterate: #type (a0: *void, a1: *gsl_multimin_function, a2: *gsl_vector, a3: *float64, a4: *float64) -> s32 #c_call;

    free:    #type (a0: *void) -> void #c_call;
}

gsl_multimin_fminimizer_type :: anon_struct_70;

anon_struct_71 :: struct {
    type:  *gsl_multimin_fminimizer_type;
    f:     *gsl_multimin_function;

    fval:  float64;
    x:     *gsl_vector;

    size:  float64;

    state: *void;
}

gsl_multimin_fminimizer :: anon_struct_71;

gsl_multimin_fminimizer_alloc :: (T: *gsl_multimin_fminimizer_type, n: size_t) -> *gsl_multimin_fminimizer #foreign libgsl;

gsl_multimin_fminimizer_set :: (s: *gsl_multimin_fminimizer, f: *gsl_multimin_function, x: *gsl_vector, step_size: *gsl_vector) -> s32 #foreign libgsl;

gsl_multimin_fminimizer_free :: (s: *gsl_multimin_fminimizer) -> void #foreign libgsl;

gsl_multimin_fminimizer_name :: (s: *gsl_multimin_fminimizer) -> *u8 #foreign libgsl;

gsl_multimin_fminimizer_iterate :: (s: *gsl_multimin_fminimizer) -> s32 #foreign libgsl;

gsl_multimin_fminimizer_x :: (s: *gsl_multimin_fminimizer) -> *gsl_vector #foreign libgsl;

gsl_multimin_fminimizer_minimum :: (s: *gsl_multimin_fminimizer) -> float64 #foreign libgsl;

gsl_multimin_fminimizer_size :: (s: *gsl_multimin_fminimizer) -> float64 #foreign libgsl;

gsl_multimin_test_gradient :: (g: *gsl_vector, epsabs: float64) -> s32 #foreign libgsl;

gsl_multimin_test_size :: (size: float64, epsabs: float64) -> s32 #foreign libgsl;

anon_struct_72 :: struct {
    name:    *u8;
    size:    size_t;
    alloc:   #type (a0: *void, a1: size_t) -> s32 #c_call;
    set:     #type (a0: *void, a1: *gsl_multimin_function_fdf, a2: *gsl_vector, a3: *float64, a4: *gsl_vector, a5: float64, a6: float64) -> s32 #c_call;

    iterate: #type (a0: *void, a1: *gsl_multimin_function_fdf, a2: *gsl_vector, a3: *float64, a4: *gsl_vector, a5: *gsl_vector) -> s32 #c_call;

    restart: #type (a0: *void) -> s32 #c_call;
    free:    #type (a0: *void) -> void #c_call;
}

gsl_multimin_fdfminimizer_type :: anon_struct_72;

anon_struct_73 :: struct {
    type:     *gsl_multimin_fdfminimizer_type;
    fdf:      *gsl_multimin_function_fdf;

    f:        float64;
    x:        *gsl_vector;
    gradient: *gsl_vector;
    dx:       *gsl_vector;

    state:    *void;
}

gsl_multimin_fdfminimizer :: anon_struct_73;

gsl_multimin_fdfminimizer_alloc :: (T: *gsl_multimin_fdfminimizer_type, n: size_t) -> *gsl_multimin_fdfminimizer #foreign libgsl;

gsl_multimin_fdfminimizer_set :: (s: *gsl_multimin_fdfminimizer, fdf: *gsl_multimin_function_fdf, x: *gsl_vector, step_size: float64, tol: float64) -> s32 #foreign libgsl;

gsl_multimin_fdfminimizer_free :: (s: *gsl_multimin_fdfminimizer) -> void #foreign libgsl;

gsl_multimin_fdfminimizer_name :: (s: *gsl_multimin_fdfminimizer) -> *u8 #foreign libgsl;

gsl_multimin_fdfminimizer_iterate :: (s: *gsl_multimin_fdfminimizer) -> s32 #foreign libgsl;

gsl_multimin_fdfminimizer_restart :: (s: *gsl_multimin_fdfminimizer) -> s32 #foreign libgsl;

gsl_multimin_fdfminimizer_x :: (s: *gsl_multimin_fdfminimizer) -> *gsl_vector #foreign libgsl;

gsl_multimin_fdfminimizer_dx :: (s: *gsl_multimin_fdfminimizer) -> *gsl_vector #foreign libgsl;

gsl_multimin_fdfminimizer_gradient :: (s: *gsl_multimin_fdfminimizer) -> *gsl_vector #foreign libgsl;

gsl_multimin_fdfminimizer_minimum :: (s: *gsl_multimin_fdfminimizer) -> float64 #foreign libgsl;

gsl_multimin_fdfminimizer_steepest_descent_: *gsl_multimin_fdfminimizer_type;
gsl_multimin_fdfminimizer_conjugate_pr_: *gsl_multimin_fdfminimizer_type;
gsl_multimin_fdfminimizer_conjugate_fr_: *gsl_multimin_fdfminimizer_type;
gsl_multimin_fdfminimizer_vector_bfgs_: *gsl_multimin_fdfminimizer_type;
gsl_multimin_fdfminimizer_vector_bfgs2_: *gsl_multimin_fdfminimizer_type;
gsl_multimin_fminimizer_nmsimplex_: *gsl_multimin_fminimizer_type;
gsl_multimin_fminimizer_nmsimplex2_: *gsl_multimin_fminimizer_type;
gsl_multimin_fminimizer_nmsimplex2rand_: *gsl_multimin_fminimizer_type;

gsl_fit_linear :: (x: *float64, xstride: size_t, y: *float64, ystride: size_t, n: size_t, c0: *float64, c1: *float64, cov00: *float64, cov01: *float64, cov11: *float64, sumsq: *float64) -> s32 #foreign libgsl;

gsl_fit_wlinear :: (x: *float64, xstride: size_t, w: *float64, wstride: size_t, y: *float64, ystride: size_t, n: size_t, c0: *float64, c1: *float64, cov00: *float64, cov01: *float64, cov11: *float64, chisq: *float64) -> s32 #foreign libgsl;

gsl_fit_linear_est :: (x: float64, c0: float64, c1: float64, cov00: float64, cov01: float64, cov11: float64, y: *float64, y_err: *float64) -> s32 #foreign libgsl;

gsl_fit_mul :: (x: *float64, xstride: size_t, y: *float64, ystride: size_t, n: size_t, c1: *float64, cov11: *float64, sumsq: *float64) -> s32 #foreign libgsl;

gsl_fit_wmul :: (x: *float64, xstride: size_t, w: *float64, wstride: size_t, y: *float64, ystride: size_t, n: size_t, c1: *float64, cov11: *float64, sumsq: *float64) -> s32 #foreign libgsl;

gsl_fit_mul_est :: (x: float64, c1: float64, cov11: float64, y: *float64, y_err: *float64) -> s32 #foreign libgsl;

gsl_multifit_gradient :: (J: *gsl_matrix, f: *gsl_vector, g: *gsl_vector) -> s32 #foreign libgsl;

gsl_multifit_covar :: (J: *gsl_matrix, epsrel: float64, covar: *gsl_matrix) -> s32 #foreign libgsl;
gsl_multifit_covar_QRPT :: (r: *gsl_matrix, perm: *gsl_permutation, epsrel: float64, covar: *gsl_matrix) -> s32 #foreign libgsl;

gsl_multifit_function_struct :: struct {
    f:      #type (a0: *gsl_vector, a1: *void, a2: *gsl_vector) -> s32 #c_call;
    n:      size_t;
    p:      size_t;
    params: *void;
}

gsl_multifit_function :: gsl_multifit_function_struct;

anon_struct_74 :: struct {
    name:    *u8;
    size:    size_t;
    alloc:   #type (a0: *void, a1: size_t, a2: size_t) -> s32 #c_call;
    set:     #type (a0: *void, a1: *gsl_multifit_function, a2: *gsl_vector, a3: *gsl_vector, a4: *gsl_vector) -> s32 #c_call;
    iterate: #type (a0: *void, a1: *gsl_multifit_function, a2: *gsl_vector, a3: *gsl_vector, a4: *gsl_vector) -> s32 #c_call;
    free:    #type (a0: *void) -> void #c_call;
}

gsl_multifit_fsolver_type :: anon_struct_74;

anon_struct_75 :: struct {
    type:     *gsl_multifit_fsolver_type;
    function: *gsl_multifit_function;
    x:        *gsl_vector;
    f:        *gsl_vector;
    dx:       *gsl_vector;
    state:    *void;
}

gsl_multifit_fsolver :: anon_struct_75;

gsl_multifit_fsolver_alloc :: (T: *gsl_multifit_fsolver_type, n: size_t, p: size_t) -> *gsl_multifit_fsolver #foreign libgsl;

gsl_multifit_fsolver_free :: (s: *gsl_multifit_fsolver) -> void #foreign libgsl;

gsl_multifit_fsolver_set :: (s: *gsl_multifit_fsolver, f: *gsl_multifit_function, x: *gsl_vector) -> s32 #foreign libgsl;

gsl_multifit_fsolver_iterate :: (s: *gsl_multifit_fsolver) -> s32 #foreign libgsl;

gsl_multifit_fsolver_driver :: (s: *gsl_multifit_fsolver, maxiter: size_t, epsabs: float64, epsrel: float64) -> s32 #foreign libgsl;

gsl_multifit_fsolver_name :: (s: *gsl_multifit_fsolver) -> *u8 #foreign libgsl;
gsl_multifit_fsolver_position :: (s: *gsl_multifit_fsolver) -> *gsl_vector #foreign libgsl;

gsl_multifit_function_fdf_struct :: struct {
    f:       #type (a0: *gsl_vector, a1: *void, a2: *gsl_vector) -> s32 #c_call;
    df:      #type (a0: *gsl_vector, a1: *void, a2: *gsl_matrix) -> s32 #c_call;
    fdf:     #type (a0: *gsl_vector, a1: *void, a2: *gsl_vector, a3: *gsl_matrix) -> s32 #c_call;
    n:       size_t;
    p:       size_t;
    params:  *void;
    nevalf:  size_t;
    nevaldf: size_t;
}

gsl_multifit_function_fdf :: gsl_multifit_function_fdf_struct;

anon_struct_76 :: struct {
    name:     *u8;
    size:     size_t;
    alloc:    #type (a0: *void, a1: size_t, a2: size_t) -> s32 #c_call;
    set:      #type (a0: *void, a1: *gsl_vector, a2: *gsl_multifit_function_fdf, a3: *gsl_vector, a4: *gsl_vector, a5: *gsl_vector) -> s32 #c_call;

    iterate:  #type (a0: *void, a1: *gsl_vector, a2: *gsl_multifit_function_fdf, a3: *gsl_vector, a4: *gsl_vector, a5: *gsl_vector) -> s32 #c_call;

    gradient: #type (a0: *void, a1: *gsl_vector) -> s32 #c_call;
    jac:      #type (a0: *void, a1: *gsl_matrix) -> s32 #c_call;
    free:     #type (a0: *void) -> void #c_call;
}

gsl_multifit_fdfsolver_type :: anon_struct_76;

anon_struct_77 :: struct {
    type:     *gsl_multifit_fdfsolver_type;
    fdf:      *gsl_multifit_function_fdf;
    x:        *gsl_vector;
    f:        *gsl_vector;
    dx:       *gsl_vector;
    g:        *gsl_vector;
    sqrt_wts: *gsl_vector;
    niter:    size_t;
    state:    *void;
}

gsl_multifit_fdfsolver :: anon_struct_77;

gsl_multifit_fdfsolver_alloc :: (T: *gsl_multifit_fdfsolver_type, n: size_t, p: size_t) -> *gsl_multifit_fdfsolver #foreign libgsl;

gsl_multifit_fdfsolver_set :: (s: *gsl_multifit_fdfsolver, fdf: *gsl_multifit_function_fdf, x: *gsl_vector) -> s32 #foreign libgsl;

gsl_multifit_fdfsolver_wset :: (s: *gsl_multifit_fdfsolver, f: *gsl_multifit_function_fdf, x: *gsl_vector, wts: *gsl_vector) -> s32 #foreign libgsl;

gsl_multifit_fdfsolver_iterate :: (s: *gsl_multifit_fdfsolver) -> s32 #foreign libgsl;

gsl_multifit_fdfsolver_driver :: (s: *gsl_multifit_fdfsolver, maxiter: size_t, xtol: float64, gtol: float64, ftol: float64, info: *s32) -> s32 #foreign libgsl;

gsl_multifit_fdfsolver_jac :: (s: *gsl_multifit_fdfsolver, J: *gsl_matrix) -> s32 #foreign libgsl;

gsl_multifit_fdfsolver_free :: (s: *gsl_multifit_fdfsolver) -> void #foreign libgsl;

gsl_multifit_fdfsolver_name :: (s: *gsl_multifit_fdfsolver) -> *u8 #foreign libgsl;
gsl_multifit_fdfsolver_position :: (s: *gsl_multifit_fdfsolver) -> *gsl_vector #foreign libgsl;
gsl_multifit_fdfsolver_residual :: (s: *gsl_multifit_fdfsolver) -> *gsl_vector #foreign libgsl;
gsl_multifit_fdfsolver_niter :: (s: *gsl_multifit_fdfsolver) -> size_t #foreign libgsl;
gsl_multifit_eval_wf :: (fdf: *gsl_multifit_function_fdf, x: *gsl_vector, wts: *gsl_vector, y: *gsl_vector) -> s32 #foreign libgsl;

gsl_multifit_eval_wdf :: (fdf: *gsl_multifit_function_fdf, x: *gsl_vector, wts: *gsl_vector, dy: *gsl_matrix) -> s32 #foreign libgsl;

gsl_multifit_fdfsolver_test :: (s: *gsl_multifit_fdfsolver, xtol: float64, gtol: float64, ftol: float64, info: *s32) -> s32 #foreign libgsl;

gsl_multifit_test_delta :: (dx: *gsl_vector, x: *gsl_vector, epsabs: float64, epsrel: float64) -> s32 #foreign libgsl;

gsl_multifit_test_gradient :: (g: *gsl_vector, epsabs: float64) -> s32 #foreign libgsl;

gsl_multifit_fdfsolver_dif_df :: (x: *gsl_vector, wts: *gsl_vector, fdf: *gsl_multifit_function_fdf, f: *gsl_vector, J: *gsl_matrix) -> s32 #foreign libgsl;

gsl_multifit_fdfsolver_dif_fdf :: (x: *gsl_vector, fdf: *gsl_multifit_function_fdf, f: *gsl_vector, J: *gsl_matrix) -> s32 #foreign libgsl;

anon_struct_78 :: struct {
    n:      size_t;
    p:      size_t;
    lambda: float64;
    L_diag: *gsl_vector;
    L:      *gsl_matrix;
    f:      *gsl_vector;
    wts:    *gsl_vector;
    s:      *gsl_multifit_fdfsolver;
    fdf:    *gsl_multifit_function_fdf;
    fdftik: gsl_multifit_function_fdf;
}

gsl_multifit_fdfridge :: anon_struct_78;

gsl_multifit_fdfridge_alloc :: (T: *gsl_multifit_fdfsolver_type, n: size_t, p: size_t) -> *gsl_multifit_fdfridge #foreign libgsl;

gsl_multifit_fdfridge_free :: (work: *gsl_multifit_fdfridge) -> void #foreign libgsl;
gsl_multifit_fdfridge_name :: (w: *gsl_multifit_fdfridge) -> *u8 #foreign libgsl;
gsl_multifit_fdfridge_position :: (w: *gsl_multifit_fdfridge) -> *gsl_vector #foreign libgsl;
gsl_multifit_fdfridge_residual :: (w: *gsl_multifit_fdfridge) -> *gsl_vector #foreign libgsl;
gsl_multifit_fdfridge_niter :: (w: *gsl_multifit_fdfridge) -> size_t #foreign libgsl;
gsl_multifit_fdfridge_set :: (w: *gsl_multifit_fdfridge, f: *gsl_multifit_function_fdf, x: *gsl_vector, lambda: float64) -> s32 #foreign libgsl;

gsl_multifit_fdfridge_wset :: (w: *gsl_multifit_fdfridge, f: *gsl_multifit_function_fdf, x: *gsl_vector, lambda: float64, wts: *gsl_vector) -> s32 #foreign libgsl;

gsl_multifit_fdfridge_set2 :: (w: *gsl_multifit_fdfridge, f: *gsl_multifit_function_fdf, x: *gsl_vector, lambda: *gsl_vector) -> s32 #foreign libgsl;

gsl_multifit_fdfridge_wset2 :: (w: *gsl_multifit_fdfridge, f: *gsl_multifit_function_fdf, x: *gsl_vector, lambda: *gsl_vector, wts: *gsl_vector) -> s32 #foreign libgsl;

gsl_multifit_fdfridge_set3 :: (w: *gsl_multifit_fdfridge, f: *gsl_multifit_function_fdf, x: *gsl_vector, L: *gsl_matrix) -> s32 #foreign libgsl;

gsl_multifit_fdfridge_wset3 :: (w: *gsl_multifit_fdfridge, f: *gsl_multifit_function_fdf, x: *gsl_vector, L: *gsl_matrix, wts: *gsl_vector) -> s32 #foreign libgsl;

gsl_multifit_fdfridge_iterate :: (w: *gsl_multifit_fdfridge) -> s32 #foreign libgsl;
gsl_multifit_fdfridge_driver :: (w: *gsl_multifit_fdfridge, maxiter: size_t, xtol: float64, gtol: float64, ftol: float64, info: *s32) -> s32 #foreign libgsl;

gsl_multifit_fdfsolver_lmsder_: *gsl_multifit_fdfsolver_type;
gsl_multifit_fdfsolver_lmder_: *gsl_multifit_fdfsolver_type;
gsl_multifit_fdfsolver_lmniel_: *gsl_multifit_fdfsolver_type;

anon_enum_79 :: enum u32 {
    GSL_IEEE_TYPE_NAN      :: 1;
    GSL_IEEE_TYPE_INF      :: 2;
    GSL_IEEE_TYPE_NORMAL   :: 3;
    GSL_IEEE_TYPE_DENORMAL :: 4;
    GSL_IEEE_TYPE_ZERO     :: 5;
}

anon_struct_80 :: struct {
    sign:     s32;
    mantissa: [24] u8;
    exponent: s32;
    type:     s32;
}

gsl_ieee_float_rep :: anon_struct_80;

anon_struct_81 :: struct {
    sign:     s32;
    mantissa: [53] u8;
    exponent: s32;
    type:     s32;
}

gsl_ieee_double_rep :: anon_struct_81;

gsl_ieee_printf_float :: (x: *float) -> void #foreign libgsl;
gsl_ieee_printf_double :: (x: *float64) -> void #foreign libgsl;

gsl_ieee_fprintf_float :: (stream: *FILE, x: *float) -> void #foreign libgsl;
gsl_ieee_fprintf_double :: (stream: *FILE, x: *float64) -> void #foreign libgsl;

gsl_ieee_float_to_rep :: (x: *float, r: *gsl_ieee_float_rep) -> void #foreign libgsl;
gsl_ieee_double_to_rep :: (x: *float64, r: *gsl_ieee_double_rep) -> void #foreign libgsl;

anon_enum_82 :: enum u32 {
    GSL_IEEE_SINGLE_PRECISION   :: 1;
    GSL_IEEE_DOUBLE_PRECISION   :: 2;
    GSL_IEEE_EXTENDED_PRECISION :: 3;
}

anon_enum_83 :: enum u32 {
    GSL_IEEE_ROUND_TO_NEAREST :: 1;
    GSL_IEEE_ROUND_DOWN       :: 2;
    GSL_IEEE_ROUND_UP         :: 3;
    GSL_IEEE_ROUND_TO_ZERO    :: 4;
}

anon_enum_84 :: enum u32 {
    GSL_IEEE_MASK_INVALID          :: 1;
    GSL_IEEE_MASK_DENORMALIZED     :: 2;
    GSL_IEEE_MASK_DIVISION_BY_ZERO :: 4;
    GSL_IEEE_MASK_OVERFLOW         :: 8;
    GSL_IEEE_MASK_UNDERFLOW        :: 16;
    GSL_IEEE_MASK_ALL              :: 31;
    GSL_IEEE_TRAP_INEXACT          :: 32;
}

gsl_ieee_env_setup :: () -> void #foreign libgsl;
gsl_ieee_read_mode_string :: (description: *u8, precision: *s32, rounding: *s32, exception_mask: *s32) -> s32 #foreign libgsl;

gsl_ieee_set_mode :: (precision: s32, rounding: s32, exception_mask: s32) -> s32 #foreign libgsl;

#scope_file

libgsl :: #foreign_system_library "libgsl";
libgslcblas :: #foreign_system_library "libgslcblas";
