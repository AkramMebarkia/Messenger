# CMake generated Testfile for 
# Source directory: /opt/workspace
# Build directory: /opt/workspace
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test([=[opendds_devguide_messenger_test_info_repo]=] "/usr/bin/perl" "run_test.pl")
set_tests_properties([=[opendds_devguide_messenger_test_info_repo]=] PROPERTIES  ENVIRONMENT "ACE_ROOT=/opt/OpenDDS/ACE_wrappers;TAO_ROOT=/opt/OpenDDS/ACE_wrappers/TAO;LD_LIBRARY_PATH=/opt/OpenDDS/ACE_wrappers/lib:/usr/local/lib;PERL5LIB=/opt/OpenDDS/bin:/opt/OpenDDS/ACE_wrappers/bin;OPENDDS_SOURCE_DIR=/opt/OpenDDS" _BACKTRACE_TRIPLES "/usr/local/share/cmake/OpenDDS/opendds_testing.cmake;25;add_test;/opt/workspace/CMakeLists.txt;45;opendds_add_test;/opt/workspace/CMakeLists.txt;0;")
add_test([=[opendds_devguide_messenger_test_rtps]=] "/usr/bin/perl" "run_test.pl" "--rtps")
set_tests_properties([=[opendds_devguide_messenger_test_rtps]=] PROPERTIES  ENVIRONMENT "ACE_ROOT=/opt/OpenDDS/ACE_wrappers;TAO_ROOT=/opt/OpenDDS/ACE_wrappers/TAO;LD_LIBRARY_PATH=/opt/OpenDDS/ACE_wrappers/lib:/usr/local/lib;PERL5LIB=/opt/OpenDDS/bin:/opt/OpenDDS/ACE_wrappers/bin;OPENDDS_SOURCE_DIR=/opt/OpenDDS" _BACKTRACE_TRIPLES "/usr/local/share/cmake/OpenDDS/opendds_testing.cmake;25;add_test;/opt/workspace/CMakeLists.txt;46;opendds_add_test;/opt/workspace/CMakeLists.txt;0;")
