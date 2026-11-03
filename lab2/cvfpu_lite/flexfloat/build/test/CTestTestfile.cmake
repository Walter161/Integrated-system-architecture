# CMake generated Testfile for 
# Source directory: /home/ubuntu/example/flexfloat/test
# Build directory: /home/ubuntu/example/flexfloat/build/test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(test_conversion "/home/ubuntu/example/flexfloat/build/test/conversion")
set_tests_properties(test_conversion PROPERTIES  _BACKTRACE_TRIPLES "/home/ubuntu/example/flexfloat/test/CMakeLists.txt;5;add_test;/home/ubuntu/example/flexfloat/test/CMakeLists.txt;0;")
add_test(test_assignment "/home/ubuntu/example/flexfloat/build/test/assignment")
set_tests_properties(test_assignment PROPERTIES  _BACKTRACE_TRIPLES "/home/ubuntu/example/flexfloat/test/CMakeLists.txt;9;add_test;/home/ubuntu/example/flexfloat/test/CMakeLists.txt;0;")
add_test(test_sanitize "/home/ubuntu/example/flexfloat/build/test/sanitize")
set_tests_properties(test_sanitize PROPERTIES  _BACKTRACE_TRIPLES "/home/ubuntu/example/flexfloat/test/CMakeLists.txt;13;add_test;/home/ubuntu/example/flexfloat/test/CMakeLists.txt;0;")
add_test(test_nearest_rounding "/home/ubuntu/example/flexfloat/build/test/nearest_rounding")
set_tests_properties(test_nearest_rounding PROPERTIES  _BACKTRACE_TRIPLES "/home/ubuntu/example/flexfloat/test/CMakeLists.txt;17;add_test;/home/ubuntu/example/flexfloat/test/CMakeLists.txt;0;")
add_test(test_exception_flags "/home/ubuntu/example/flexfloat/build/test/exception_flags")
set_tests_properties(test_exception_flags PROPERTIES  _BACKTRACE_TRIPLES "/home/ubuntu/example/flexfloat/test/CMakeLists.txt;21;add_test;/home/ubuntu/example/flexfloat/test/CMakeLists.txt;0;")
add_test(test_upward_rounding "/home/ubuntu/example/flexfloat/build/test/upward_rounding")
set_tests_properties(test_upward_rounding PROPERTIES  _BACKTRACE_TRIPLES "/home/ubuntu/example/flexfloat/test/CMakeLists.txt;25;add_test;/home/ubuntu/example/flexfloat/test/CMakeLists.txt;0;")
add_test(test_downward_rounding "/home/ubuntu/example/flexfloat/build/test/downward_rounding")
set_tests_properties(test_downward_rounding PROPERTIES  _BACKTRACE_TRIPLES "/home/ubuntu/example/flexfloat/test/CMakeLists.txt;29;add_test;/home/ubuntu/example/flexfloat/test/CMakeLists.txt;0;")
add_test(test_NanInf "/home/ubuntu/example/flexfloat/build/test/NanInf")
set_tests_properties(test_NanInf PROPERTIES  _BACKTRACE_TRIPLES "/home/ubuntu/example/flexfloat/test/CMakeLists.txt;37;add_test;/home/ubuntu/example/flexfloat/test/CMakeLists.txt;0;")
add_test(test_rel_ops "/home/ubuntu/example/flexfloat/build/test/rel_ops")
set_tests_properties(test_rel_ops PROPERTIES  _BACKTRACE_TRIPLES "/home/ubuntu/example/flexfloat/test/CMakeLists.txt;41;add_test;/home/ubuntu/example/flexfloat/test/CMakeLists.txt;0;")
add_test(test_arithmetic "/home/ubuntu/example/flexfloat/build/test/arithmetic")
set_tests_properties(test_arithmetic PROPERTIES  _BACKTRACE_TRIPLES "/home/ubuntu/example/flexfloat/test/CMakeLists.txt;45;add_test;/home/ubuntu/example/flexfloat/test/CMakeLists.txt;0;")
add_test(test_value_representation "/home/ubuntu/example/flexfloat/build/test/value_representation")
set_tests_properties(test_value_representation PROPERTIES  _BACKTRACE_TRIPLES "/home/ubuntu/example/flexfloat/test/CMakeLists.txt;51;add_test;/home/ubuntu/example/flexfloat/test/CMakeLists.txt;0;")
add_test(test_value_representation_half "/home/ubuntu/example/flexfloat/build/test/value_representation_half")
set_tests_properties(test_value_representation_half PROPERTIES  _BACKTRACE_TRIPLES "/home/ubuntu/example/flexfloat/test/CMakeLists.txt;59;add_test;/home/ubuntu/example/flexfloat/test/CMakeLists.txt;0;")
subdirs("googletest-build")
