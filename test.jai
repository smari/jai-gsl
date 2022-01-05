#import "GSL";
#import "Basic";

main :: () {
    test_sf_bessel();
}


test_sf_bessel :: () {
    x := 5.0;
    y := gsl_sf_bessel_J0(x);
    print("J0(%) = %\n", x, y);
}
