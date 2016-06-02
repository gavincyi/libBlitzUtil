#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=GNU-Linux-x86
CND_DLIB_EXT=so
CND_CONF=Debug
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/src/FixEngine/FIX44_classes.o \
	${OBJECTDIR}/src/FixEngine/FIX44_traits.o \
	${OBJECTDIR}/src/FixEngine/FIX44_types.o \
	${OBJECTDIR}/src/FixEngine/FIX50SP2_classes.o \
	${OBJECTDIR}/src/FixEngine/FIX50SP2_traits.o \
	${OBJECTDIR}/src/FixEngine/FIX50SP2_types.o \
	${OBJECTDIR}/src/Utilities/UtilConfig.o \
	${OBJECTDIR}/src/Utilities/UtilDateTime.o \
	${OBJECTDIR}/src/Utilities/UtilLogger.o \
	${OBJECTDIR}/third-party/pugixml/src/pugixml.o

# Test Directory
TESTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}/tests

# Test Files
TESTFILES= \
	${TESTDIR}/TestFiles/f1

# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=-std=c++11
CXXFLAGS=-std=c++11

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk lib/${CND_CONF}/libblitzutil.a

lib/${CND_CONF}/libblitzutil.a: ${OBJECTFILES}
	${MKDIR} -p lib/${CND_CONF}
	${RM} lib/${CND_CONF}/libblitzutil.a
	${AR} -rv lib/${CND_CONF}/libblitzutil.a ${OBJECTFILES} 
	$(RANLIB) lib/${CND_CONF}/libblitzutil.a

${OBJECTDIR}/src/FixEngine/FIX44_classes.o: src/FixEngine/FIX44_classes.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/FixEngine
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/include -Ithird-party/pugixml/src -Iinclude -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/FixEngine/FIX44_classes.o src/FixEngine/FIX44_classes.cpp

${OBJECTDIR}/src/FixEngine/FIX44_traits.o: src/FixEngine/FIX44_traits.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/FixEngine
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/include -Ithird-party/pugixml/src -Iinclude -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/FixEngine/FIX44_traits.o src/FixEngine/FIX44_traits.cpp

${OBJECTDIR}/src/FixEngine/FIX44_types.o: src/FixEngine/FIX44_types.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/FixEngine
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/include -Ithird-party/pugixml/src -Iinclude -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/FixEngine/FIX44_types.o src/FixEngine/FIX44_types.cpp

${OBJECTDIR}/src/FixEngine/FIX50SP2_classes.o: src/FixEngine/FIX50SP2_classes.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/FixEngine
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/include -Ithird-party/pugixml/src -Iinclude -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/FixEngine/FIX50SP2_classes.o src/FixEngine/FIX50SP2_classes.cpp

${OBJECTDIR}/src/FixEngine/FIX50SP2_traits.o: src/FixEngine/FIX50SP2_traits.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/FixEngine
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/include -Ithird-party/pugixml/src -Iinclude -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/FixEngine/FIX50SP2_traits.o src/FixEngine/FIX50SP2_traits.cpp

${OBJECTDIR}/src/FixEngine/FIX50SP2_types.o: src/FixEngine/FIX50SP2_types.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/FixEngine
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/include -Ithird-party/pugixml/src -Iinclude -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/FixEngine/FIX50SP2_types.o src/FixEngine/FIX50SP2_types.cpp

${OBJECTDIR}/src/Utilities/UtilConfig.o: src/Utilities/UtilConfig.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Utilities
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/include -Ithird-party/pugixml/src -Iinclude -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Utilities/UtilConfig.o src/Utilities/UtilConfig.cpp

${OBJECTDIR}/src/Utilities/UtilDateTime.o: src/Utilities/UtilDateTime.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Utilities
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/include -Ithird-party/pugixml/src -Iinclude -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Utilities/UtilDateTime.o src/Utilities/UtilDateTime.cpp

${OBJECTDIR}/src/Utilities/UtilLogger.o: src/Utilities/UtilLogger.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Utilities
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/include -Ithird-party/pugixml/src -Iinclude -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Utilities/UtilLogger.o src/Utilities/UtilLogger.cpp

${OBJECTDIR}/third-party/pugixml/src/pugixml.o: third-party/pugixml/src/pugixml.cpp 
	${MKDIR} -p ${OBJECTDIR}/third-party/pugixml/src
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/include -Ithird-party/pugixml/src -Iinclude -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/third-party/pugixml/src/pugixml.o third-party/pugixml/src/pugixml.cpp

# Subprojects
.build-subprojects:

# Build Test Targets
.build-tests-conf: .build-conf ${TESTFILES}
${TESTDIR}/TestFiles/f1: ${TESTDIR}/UnitTest/UtilConfigTest.o ${TESTDIR}/UnitTest/UtilDateTimeTest.o ${TESTDIR}/UnitTest/UtilLoggerTest.o ${TESTDIR}/UnitTest/UtilMain.o ${OBJECTFILES:%.o=%_nomain.o}
	${MKDIR} -p ${TESTDIR}/TestFiles
	${LINK.cc}   -o ${TESTDIR}/TestFiles/f1 $^ ${LDLIBSOPTIONS} -L/usr/local/lib/ -lg3logger -lboost_date_time 


${TESTDIR}/UnitTest/UtilConfigTest.o: UnitTest/UtilConfigTest.cpp 
	${MKDIR} -p ${TESTDIR}/UnitTest
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/include -Ithird-party/pugixml/src -Iinclude -I/usr/local/include/Catch/include -MMD -MP -MF "$@.d" -o ${TESTDIR}/UnitTest/UtilConfigTest.o UnitTest/UtilConfigTest.cpp


${TESTDIR}/UnitTest/UtilDateTimeTest.o: UnitTest/UtilDateTimeTest.cpp 
	${MKDIR} -p ${TESTDIR}/UnitTest
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/include -Ithird-party/pugixml/src -Iinclude -I/usr/local/include/Catch/include -MMD -MP -MF "$@.d" -o ${TESTDIR}/UnitTest/UtilDateTimeTest.o UnitTest/UtilDateTimeTest.cpp


${TESTDIR}/UnitTest/UtilLoggerTest.o: UnitTest/UtilLoggerTest.cpp 
	${MKDIR} -p ${TESTDIR}/UnitTest
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/include -Ithird-party/pugixml/src -Iinclude -I/usr/local/include/Catch/include -MMD -MP -MF "$@.d" -o ${TESTDIR}/UnitTest/UtilLoggerTest.o UnitTest/UtilLoggerTest.cpp


${TESTDIR}/UnitTest/UtilMain.o: UnitTest/UtilMain.cpp 
	${MKDIR} -p ${TESTDIR}/UnitTest
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/include -Ithird-party/pugixml/src -Iinclude -I/usr/local/include/Catch/include -MMD -MP -MF "$@.d" -o ${TESTDIR}/UnitTest/UtilMain.o UnitTest/UtilMain.cpp


${OBJECTDIR}/src/FixEngine/FIX44_classes_nomain.o: ${OBJECTDIR}/src/FixEngine/FIX44_classes.o src/FixEngine/FIX44_classes.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/FixEngine
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/FixEngine/FIX44_classes.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -I/usr/local/include -Ithird-party/pugixml/src -Iinclude -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/FixEngine/FIX44_classes_nomain.o src/FixEngine/FIX44_classes.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/FixEngine/FIX44_classes.o ${OBJECTDIR}/src/FixEngine/FIX44_classes_nomain.o;\
	fi

${OBJECTDIR}/src/FixEngine/FIX44_traits_nomain.o: ${OBJECTDIR}/src/FixEngine/FIX44_traits.o src/FixEngine/FIX44_traits.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/FixEngine
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/FixEngine/FIX44_traits.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -I/usr/local/include -Ithird-party/pugixml/src -Iinclude -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/FixEngine/FIX44_traits_nomain.o src/FixEngine/FIX44_traits.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/FixEngine/FIX44_traits.o ${OBJECTDIR}/src/FixEngine/FIX44_traits_nomain.o;\
	fi

${OBJECTDIR}/src/FixEngine/FIX44_types_nomain.o: ${OBJECTDIR}/src/FixEngine/FIX44_types.o src/FixEngine/FIX44_types.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/FixEngine
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/FixEngine/FIX44_types.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -I/usr/local/include -Ithird-party/pugixml/src -Iinclude -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/FixEngine/FIX44_types_nomain.o src/FixEngine/FIX44_types.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/FixEngine/FIX44_types.o ${OBJECTDIR}/src/FixEngine/FIX44_types_nomain.o;\
	fi

${OBJECTDIR}/src/FixEngine/FIX50SP2_classes_nomain.o: ${OBJECTDIR}/src/FixEngine/FIX50SP2_classes.o src/FixEngine/FIX50SP2_classes.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/FixEngine
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/FixEngine/FIX50SP2_classes.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -I/usr/local/include -Ithird-party/pugixml/src -Iinclude -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/FixEngine/FIX50SP2_classes_nomain.o src/FixEngine/FIX50SP2_classes.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/FixEngine/FIX50SP2_classes.o ${OBJECTDIR}/src/FixEngine/FIX50SP2_classes_nomain.o;\
	fi

${OBJECTDIR}/src/FixEngine/FIX50SP2_traits_nomain.o: ${OBJECTDIR}/src/FixEngine/FIX50SP2_traits.o src/FixEngine/FIX50SP2_traits.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/FixEngine
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/FixEngine/FIX50SP2_traits.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -I/usr/local/include -Ithird-party/pugixml/src -Iinclude -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/FixEngine/FIX50SP2_traits_nomain.o src/FixEngine/FIX50SP2_traits.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/FixEngine/FIX50SP2_traits.o ${OBJECTDIR}/src/FixEngine/FIX50SP2_traits_nomain.o;\
	fi

${OBJECTDIR}/src/FixEngine/FIX50SP2_types_nomain.o: ${OBJECTDIR}/src/FixEngine/FIX50SP2_types.o src/FixEngine/FIX50SP2_types.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/FixEngine
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/FixEngine/FIX50SP2_types.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -I/usr/local/include -Ithird-party/pugixml/src -Iinclude -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/FixEngine/FIX50SP2_types_nomain.o src/FixEngine/FIX50SP2_types.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/FixEngine/FIX50SP2_types.o ${OBJECTDIR}/src/FixEngine/FIX50SP2_types_nomain.o;\
	fi

${OBJECTDIR}/src/Utilities/UtilConfig_nomain.o: ${OBJECTDIR}/src/Utilities/UtilConfig.o src/Utilities/UtilConfig.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Utilities
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/Utilities/UtilConfig.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -I/usr/local/include -Ithird-party/pugixml/src -Iinclude -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Utilities/UtilConfig_nomain.o src/Utilities/UtilConfig.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/Utilities/UtilConfig.o ${OBJECTDIR}/src/Utilities/UtilConfig_nomain.o;\
	fi

${OBJECTDIR}/src/Utilities/UtilDateTime_nomain.o: ${OBJECTDIR}/src/Utilities/UtilDateTime.o src/Utilities/UtilDateTime.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Utilities
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/Utilities/UtilDateTime.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -I/usr/local/include -Ithird-party/pugixml/src -Iinclude -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Utilities/UtilDateTime_nomain.o src/Utilities/UtilDateTime.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/Utilities/UtilDateTime.o ${OBJECTDIR}/src/Utilities/UtilDateTime_nomain.o;\
	fi

${OBJECTDIR}/src/Utilities/UtilLogger_nomain.o: ${OBJECTDIR}/src/Utilities/UtilLogger.o src/Utilities/UtilLogger.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Utilities
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/Utilities/UtilLogger.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -I/usr/local/include -Ithird-party/pugixml/src -Iinclude -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Utilities/UtilLogger_nomain.o src/Utilities/UtilLogger.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/Utilities/UtilLogger.o ${OBJECTDIR}/src/Utilities/UtilLogger_nomain.o;\
	fi

${OBJECTDIR}/third-party/pugixml/src/pugixml_nomain.o: ${OBJECTDIR}/third-party/pugixml/src/pugixml.o third-party/pugixml/src/pugixml.cpp 
	${MKDIR} -p ${OBJECTDIR}/third-party/pugixml/src
	@NMOUTPUT=`${NM} ${OBJECTDIR}/third-party/pugixml/src/pugixml.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -I/usr/local/include -Ithird-party/pugixml/src -Iinclude -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/third-party/pugixml/src/pugixml_nomain.o third-party/pugixml/src/pugixml.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/third-party/pugixml/src/pugixml.o ${OBJECTDIR}/third-party/pugixml/src/pugixml_nomain.o;\
	fi

# Run Test Targets
.test-conf:
	@if [ "${TEST}" = "" ]; \
	then  \
	    ${TESTDIR}/TestFiles/f1 || true; \
	else  \
	    ./${TEST} || true; \
	fi

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} lib/${CND_CONF}/libblitzutil.a

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
