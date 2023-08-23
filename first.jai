#run build();

build :: () {
    set_build_options_dc(.{do_output=false});

    options := get_build_options();

    if !generate_bindings() {
        compiler_set_workspace_status(.FAILED);
        return;
    }

    w := compiler_create_workspace("Making test program");

    options.output_type     = .EXECUTABLE;
    options.output_executable_name = "example";
    set_build_options(options, w);

    compiler_begin_intercept(w);
    add_build_file("test.jai", w);

    while true {
        message := compiler_wait_for_message();
        if message.kind == {
          case .TYPECHECKED;
            do_error_checking(null, message);

          case .COMPLETE;
            break;
        }
    }

    compiler_end_intercept(w);
}


generate_bindings :: () -> bool {
    output_filename: string;
    opts: Generate_Bindings_Options;
    {
        using opts;

        #if OS == .WINDOWS {
            output_filename          = "windows.jai";
            strip_flags = 0;
        } else #if OS == .LINUX {
            output_filename          = "linux.jai";
            strip_flags = .INLINED_FUNCTIONS; // Inlined constructor doesn't exist in the library
        } else #if OS == .MACOS {
            // @ToDo: Determine dynamically? Customize?
            array_add(*system_include_paths, "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include");
            output_filename          = "macos.jai";
            strip_flags = .INLINED_FUNCTIONS; // Inlined constructor doesn't exist in the library
        } else {
            assert(false);
        }

        array_add(*libpaths,       ".");
        array_add(*libnames,      "libgsl");
        array_add(*libnames,      "libgslcblas");
        array_add(*include_paths, "/usr/include/gsl/");
        array_add(*system_include_paths, GENERATOR_DEFAULT_SYSTEM_INCLUDE_PATH);
        array_add(*system_include_paths, "../../jai/modules/Bindings_Generator/bin/clang/11.1.0/include");
        for GSL_SOURCE_FILES {
            array_add(*source_files,  tprint("%/%", GSL_PATH, it));
        }

        //array_add(*extra_clang_arguments, "-x", "c++", "-DWIN32_LEAN_AND_MEAN");

        // strip_flags &= ~(Strip_Flags.CONSTRUCTORS | .DESTRUCTORS);
    }

    return generate_bindings(opts, output_filename);
}

#scope_file

#import "Basic";
#import "Compiler";
#import "BuildCpp";
#import "Check";
#import "Bindings_Generator";
#import "File";
/*
 * This is based on the ImGui generator.jai code from jai/modules/ImGui
 */

GSL_PATH :: "/usr/include/gsl";

// We have custom declarations for these in module.jai:
GSL_TYPES_TO_OMIT :: string.[
];


GSL_SOURCE_FILES :: string.[
    "gsl_cblas.h",
    "gsl_blas_types.h",       // We already have this from MathExtensions though?
    "gsl_math.h",

    "gsl_complex.h",
    "gsl_complex_math.h",

    "gsl_block_short.h",
    "gsl_block_ushort.h",
    "gsl_block_char.h",
    "gsl_block_uchar.h",
    "gsl_block_int.h",
    "gsl_block_uint.h",
    "gsl_block_ulong.h",
    "gsl_block_long.h",
    "gsl_block_complex_float.h",
    "gsl_block_complex_long_double.h",
    "gsl_block.h",

    "gsl_vector_complex_long_double.h",
    "gsl_vector_complex_double.h",
    "gsl_vector_complex_float.h",
    "gsl_vector_long_double.h",
    "gsl_vector_double.h",
    "gsl_vector_float.h",
    "gsl_vector_ulong.h",
    "gsl_vector_long.h",
    "gsl_vector_uint.h",
    "gsl_vector_int.h",
    "gsl_vector_ushort.h",
    "gsl_vector_short.h",
    "gsl_vector_uchar.h",
    "gsl_vector_char.h",
    "gsl_matrix_float.h",
    "gsl_matrix_complex_float.h",
    "gsl_matrix_complex_long_double.h",

    "gsl_blas.h",       // We already have this from MathExtensions though?

    "gsl_mode.h",
    "gsl_permutation.h",
    "gsl_vector.h",
    "gsl_matrix.h",
    "gsl_rng.h",
    "gsl_qrng.h",
    "gsl_randist.h",
    "gsl_cdf.h",
    "gsl_statistics.h",
    "gsl_histogram.h",
    "gsl_histogram2d.h",
    "gsl_linalg.h",
    "gsl_fft.h",
    "gsl_fft_real.h",
    "gsl_fft_complex.h",
    "gsl_combination.h",

    "gsl_interp.h",
    "gsl_spline.h",
    "gsl_deriv.h",
    "gsl_chebyshev.h",
    "gsl_sum.h",
    "gsl_wavelet.h",
    "gsl_wavelet2d.h",
    "gsl_dht.h",

    "gsl_sf.h",
    "gsl_poly.h",
    "gsl_eigen.h",
    "gsl_integration.h",
    "gsl_monte_plain.h",
    "gsl_monte_miser.h",
    "gsl_monte_vegas.h",
    "gsl_siman.h",
    "gsl_odeiv.h",
    "gsl_roots.h",
    "gsl_min.h",
    "gsl_multiroots.h",
    "gsl_multimin.h",
    "gsl_fit.h",
    "gsl_multifit_nlin.h",
    "gsl_const_mksa.h",
    "gsl_const_cgsm.h",
    "gsl_const_num.h",
    "gsl_ieee_utils.h",
];
