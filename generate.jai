/*
 * This is based on the ImGui generator.jai code from jai/modules/ImGui
 */

GSL_PATH :: "/usr/include/gsl";

// We have custom declarations for these in module.jai:
GSL_TYPES_TO_OMIT :: string.[
];


GSL_SOURCE_FILES :: string.[
    "gsl_poly.h",
    "gsl_sf.h",
    "gsl_block.h",
    "gsl_vector.h",
    "gsl_matrix.h",
    "gsl_permutation.h",
    "gsl_combination.h",
    "gsl_blas.h",       // We already have this from MathExtensions though?
    "gsl_linalg.h",
    "gsl_eigen.h",
    "gsl_fft_complex.h",
    "gsl_fft_real.h",
    "gsl_integration.h",
    "gsl_rng.h",
    "gsl_qrng.h",
    "gsl_randist.h",
    "gsl_cdf.h",
    "gsl_statistics_double.h",
    "gsl_statistics_int.h",
    "gsl_statistics.h",
    "gsl_histogram.h",
    "gsl_histogram2d.h",
    "gsl_monte_plain.h",
    "gsl_monte_miser.h",
    "gsl_monte_vegas.h",
    "gsl_siman.h",
    "gsl_odeiv.h",
    "gsl_interp.h",
    "gsl_spline.h",
    "gsl_deriv.h",
    "gsl_chebyshev.h",
    "gsl_sum.h",
    "gsl_wavelet.h",
    "gsl_wavelet2d.h",
    "gsl_dht.h",
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


#run {
    set_build_options_dc(.{do_output=false});

    write_file := true;
    user_args := compiler_get_command_line_arguments();
    for user_args {
        if it == "-no_write"    write_file = false;
    }
    generate_bindings(write_file = write_file);
};


generate_bindings :: (write_file := true) {
    gsl_data: GSL_Bindings_Gen_Data;

    output_filename: string;
    opts: Generate_Bindings_Options;
    {
        using opts;

        #if OS == .LINUX {
            array_add(*libpaths,      "/usr/lib/x86_64-linux-gnu");
            output_filename          = "unix.jai";
        } else #if OS == .WINDOWS {
            array_add(*libpaths,      "windows");
            output_filename          = "windows.jai";
        } else {
            assert(false);
        }

        array_add(*libnames,      "libgsl");
        array_add(*libnames,      "libgslcblas");
        array_add(*system_include_paths, "../../jai/modules/Bindings_Generator/bin/clang/11.1.0/include");
        for GSL_SOURCE_FILES {
            array_add(*source_files,  tprint("%/%", GSL_PATH, it));
        }
        auto_detect_enum_prefixes = false;
        user_data                = *gsl_data;

        will_print_bindings = () {
            // we'll also walk all the declarations recursively, making some
            // changes. see gsl_visitor below.
            for context.compiler.global_scope.members {
                visit_declarations(gsl_visitor, it);
            }
        };
        //get_func_args_for_printing = gsl_get_function_arg_for_printing;
    }

    bindings_builder, success := generate_bindings(opts);
    if !success     return;
    defer free_buffers(*bindings_builder);
    show_generator_results();

    if write_file {
        success = write_entire_file(output_filename, bindings_builder);
        if !success {
            log_error("Could not write generated output to \"%\"\n", output_filename);
            return;
        }    
        log("\nOK! generated '%'\n", output_filename);
    }
}

GSL_Bindings_Gen_Data :: struct {
    begin_end_string_args: [..]*Declaration;
}


gsl_visitor :: (decl: *Declaration, parent_decl: *Declaration) -> Declaration_Visit_Result {
    // TODO: We want to do a few things here
    // - Manage complex numbers
    // - Clear up the anonymous enums
    
    return .RECURSE;
}


#import "Basic";
#import "Bindings_Generator";
#import "Compiler";
#import "File";
#import "String";
#import "System";
