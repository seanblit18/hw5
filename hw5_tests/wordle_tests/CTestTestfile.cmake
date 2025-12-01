# CMake generated Testfile for 
# Source directory: /home/codio/workspace/hw5/hw5_tests/wordle_tests
# Build directory: /home/codio/workspace/hw5/hw5_tests/wordle_tests
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(Wordle.Empty "/usr/bin/valgrind" "--tool=memcheck" "--leak-check=yes" "--trace-children=no" "/home/codio/workspace/hw5/hw5_tests/wordle_tests/wordle_tests" "--gtest_filter=Wordle.Empty")
add_test(Wordle.NoSolutions "/usr/bin/valgrind" "--tool=memcheck" "--leak-check=yes" "--trace-children=no" "/home/codio/workspace/hw5/hw5_tests/wordle_tests/wordle_tests" "--gtest_filter=Wordle.NoSolutions")
add_test(Wordle.OneLetterUnconstrained "/usr/bin/valgrind" "--tool=memcheck" "--leak-check=yes" "--trace-children=no" "/home/codio/workspace/hw5/hw5_tests/wordle_tests/wordle_tests" "--gtest_filter=Wordle.OneLetterUnconstrained")
add_test(Wordle.OneLetterConstrained "/usr/bin/valgrind" "--tool=memcheck" "--leak-check=yes" "--trace-children=no" "/home/codio/workspace/hw5/hw5_tests/wordle_tests/wordle_tests" "--gtest_filter=Wordle.OneLetterConstrained")
add_test(Wordle.TwoLetterUnconstrained "/usr/bin/valgrind" "--tool=memcheck" "--leak-check=yes" "--trace-children=no" "/home/codio/workspace/hw5/hw5_tests/wordle_tests/wordle_tests" "--gtest_filter=Wordle.TwoLetterUnconstrained")
add_test(Wordle.TwoLetterConstrained "/usr/bin/valgrind" "--tool=memcheck" "--leak-check=yes" "--trace-children=no" "/home/codio/workspace/hw5/hw5_tests/wordle_tests/wordle_tests" "--gtest_filter=Wordle.TwoLetterConstrained")
add_test(Wordle.ThreeLetterFull "/usr/bin/valgrind" "--tool=memcheck" "--leak-check=yes" "--trace-children=no" "/home/codio/workspace/hw5/hw5_tests/wordle_tests/wordle_tests" "--gtest_filter=Wordle.ThreeLetterFull")
add_test(Wordle.OneOption "/usr/bin/valgrind" "--tool=memcheck" "--leak-check=yes" "--trace-children=no" "/home/codio/workspace/hw5/hw5_tests/wordle_tests/wordle_tests" "--gtest_filter=Wordle.OneOption")
add_test(Wordle.Nominal1 "/usr/bin/valgrind" "--tool=memcheck" "--leak-check=yes" "--trace-children=no" "/home/codio/workspace/hw5/hw5_tests/wordle_tests/wordle_tests" "--gtest_filter=Wordle.Nominal1")
add_test(Wordle.Nominal2 "/usr/bin/valgrind" "--tool=memcheck" "--leak-check=yes" "--trace-children=no" "/home/codio/workspace/hw5/hw5_tests/wordle_tests/wordle_tests" "--gtest_filter=Wordle.Nominal2")
add_test(Wordle.Nominal3 "/usr/bin/valgrind" "--tool=memcheck" "--leak-check=yes" "--trace-children=no" "/home/codio/workspace/hw5/hw5_tests/wordle_tests/wordle_tests" "--gtest_filter=Wordle.Nominal3")
add_test(Wordle.Long "/usr/bin/valgrind" "--tool=memcheck" "--leak-check=yes" "--trace-children=no" "/home/codio/workspace/hw5/hw5_tests/wordle_tests/wordle_tests" "--gtest_filter=Wordle.Long")
set_tests_properties(Wordle.Long PROPERTIES  TIMEOUT "100")
add_test(Wordle.Instructor1 "/usr/bin/valgrind" "--tool=memcheck" "--leak-check=yes" "--trace-children=no" "/home/codio/workspace/hw5/hw5_tests/wordle_tests/wordle_tests" "--gtest_filter=Wordle.Instructor1")
set_tests_properties(Wordle.Instructor1 PROPERTIES  TIMEOUT "100")
add_test(Wordle.Instructor2 "/usr/bin/valgrind" "--tool=memcheck" "--leak-check=yes" "--trace-children=no" "/home/codio/workspace/hw5/hw5_tests/wordle_tests/wordle_tests" "--gtest_filter=Wordle.Instructor2")
set_tests_properties(Wordle.Instructor2 PROPERTIES  TIMEOUT "100")
add_test(Wordle.Instructor3 "/usr/bin/valgrind" "--tool=memcheck" "--leak-check=yes" "--trace-children=no" "/home/codio/workspace/hw5/hw5_tests/wordle_tests/wordle_tests" "--gtest_filter=Wordle.Instructor3")
set_tests_properties(Wordle.Instructor3 PROPERTIES  TIMEOUT "100")
