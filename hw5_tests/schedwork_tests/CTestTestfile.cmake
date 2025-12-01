# CMake generated Testfile for 
# Source directory: /home/codio/workspace/hw5/hw5_tests/schedwork_tests
# Build directory: /home/codio/workspace/hw5/hw5_tests/schedwork_tests
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(Schedule.SimpleSol1 "/usr/bin/valgrind" "--tool=memcheck" "--leak-check=yes" "--trace-children=no" "/home/codio/workspace/hw5/hw5_tests/schedwork_tests/schedwork_tests" "--gtest_filter=Schedule.SimpleSol1")
add_test(Schedule.SimpleNoSolMaxShifts "/usr/bin/valgrind" "--tool=memcheck" "--leak-check=yes" "--trace-children=no" "/home/codio/workspace/hw5/hw5_tests/schedwork_tests/schedwork_tests" "--gtest_filter=Schedule.SimpleNoSolMaxShifts")
add_test(Schedule.SimpleNoSolNoAvail1 "/usr/bin/valgrind" "--tool=memcheck" "--leak-check=yes" "--trace-children=no" "/home/codio/workspace/hw5/hw5_tests/schedwork_tests/schedwork_tests" "--gtest_filter=Schedule.SimpleNoSolNoAvail1")
add_test(Schedule.SimpleNoSolNoAvail2 "/usr/bin/valgrind" "--tool=memcheck" "--leak-check=yes" "--trace-children=no" "/home/codio/workspace/hw5/hw5_tests/schedwork_tests/schedwork_tests" "--gtest_filter=Schedule.SimpleNoSolNoAvail2")
add_test(Schedule.SimpleNoSolNoAvail3 "/usr/bin/valgrind" "--tool=memcheck" "--leak-check=yes" "--trace-children=no" "/home/codio/workspace/hw5/hw5_tests/schedwork_tests/schedwork_tests" "--gtest_filter=Schedule.SimpleNoSolNoAvail3")
add_test(Schedule.Nominal1 "/usr/bin/valgrind" "--tool=memcheck" "--leak-check=yes" "--trace-children=no" "/home/codio/workspace/hw5/hw5_tests/schedwork_tests/schedwork_tests" "--gtest_filter=Schedule.Nominal1")
add_test(Schedule.Nominal1NoSol1 "/usr/bin/valgrind" "--tool=memcheck" "--leak-check=yes" "--trace-children=no" "/home/codio/workspace/hw5/hw5_tests/schedwork_tests/schedwork_tests" "--gtest_filter=Schedule.Nominal1NoSol1")
add_test(Schedule.Nominal1NoSol2 "/usr/bin/valgrind" "--tool=memcheck" "--leak-check=yes" "--trace-children=no" "/home/codio/workspace/hw5/hw5_tests/schedwork_tests/schedwork_tests" "--gtest_filter=Schedule.Nominal1NoSol2")
add_test(Schedule.Nominal2 "/usr/bin/valgrind" "--tool=memcheck" "--leak-check=yes" "--trace-children=no" "/home/codio/workspace/hw5/hw5_tests/schedwork_tests/schedwork_tests" "--gtest_filter=Schedule.Nominal2")
add_test(Schedule.Instructor1 "/usr/bin/valgrind" "--tool=memcheck" "--leak-check=yes" "--trace-children=no" "/home/codio/workspace/hw5/hw5_tests/schedwork_tests/schedwork_tests" "--gtest_filter=Schedule.Instructor1")
add_test(Schedule.Instructor2NoSol "/usr/bin/valgrind" "--tool=memcheck" "--leak-check=yes" "--trace-children=no" "/home/codio/workspace/hw5/hw5_tests/schedwork_tests/schedwork_tests" "--gtest_filter=Schedule.Instructor2NoSol")
