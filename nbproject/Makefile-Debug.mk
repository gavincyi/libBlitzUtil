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
	${OBJECTDIR}/UtilConfig.o \
	${OBJECTDIR}/UtilDateTime.o \
	${OBJECTDIR}/UtilLogger.o \
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
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/liblibblitzutil.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/liblibblitzutil.a: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/liblibblitzutil.a
	${AR} -rv ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/liblibblitzutil.a ${OBJECTFILES} 
	$(RANLIB) ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/liblibblitzutil.a

${OBJECTDIR}/UtilConfig.o: UtilConfig.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/include -Ithird-party/pugixml/src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/UtilConfig.o UtilConfig.cpp

${OBJECTDIR}/UtilDateTime.o: UtilDateTime.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/include -Ithird-party/pugixml/src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/UtilDateTime.o UtilDateTime.cpp

${OBJECTDIR}/UtilLogger.o: UtilLogger.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/include -Ithird-party/pugixml/src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/UtilLogger.o UtilLogger.cpp

${OBJECTDIR}/third-party/pugixml/src/pugixml.o: third-party/pugixml/src/pugixml.cpp 
	${MKDIR} -p ${OBJECTDIR}/third-party/pugixml/src
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/include -Ithird-party/pugixml/src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/third-party/pugixml/src/pugixml.o third-party/pugixml/src/pugixml.cpp

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
	$(COMPILE.cc) -g -I/usr/local/include -Ithird-party/pugixml/src -I/usr/local/include/Catch/include -MMD -MP -MF "$@.d" -o ${TESTDIR}/UnitTest/UtilConfigTest.o UnitTest/UtilConfigTest.cpp


${TESTDIR}/UnitTest/UtilDateTimeTest.o: UnitTest/UtilDateTimeTest.cpp 
	${MKDIR} -p ${TESTDIR}/UnitTest
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/include -Ithird-party/pugixml/src -I/usr/local/include/Catch/include -MMD -MP -MF "$@.d" -o ${TESTDIR}/UnitTest/UtilDateTimeTest.o UnitTest/UtilDateTimeTest.cpp


${TESTDIR}/UnitTest/UtilLoggerTest.o: UnitTest/UtilLoggerTest.cpp 
	${MKDIR} -p ${TESTDIR}/UnitTest
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/include -Ithird-party/pugixml/src -I/usr/local/include/Catch/include -MMD -MP -MF "$@.d" -o ${TESTDIR}/UnitTest/UtilLoggerTest.o UnitTest/UtilLoggerTest.cpp


${TESTDIR}/UnitTest/UtilMain.o: UnitTest/UtilMain.cpp 
	${MKDIR} -p ${TESTDIR}/UnitTest
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/include -Ithird-party/pugixml/src -I/usr/local/include/Catch/include -MMD -MP -MF "$@.d" -o ${TESTDIR}/UnitTest/UtilMain.o UnitTest/UtilMain.cpp


${OBJECTDIR}/UtilConfig_nomain.o: ${OBJECTDIR}/UtilConfig.o UtilConfig.cpp 
	${MKDIR} -p ${OBJECTDIR}
	@NMOUTPUT=`${NM} ${OBJECTDIR}/UtilConfig.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -I/usr/local/include -Ithird-party/pugixml/src -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/UtilConfig_nomain.o UtilConfig.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/UtilConfig.o ${OBJECTDIR}/UtilConfig_nomain.o;\
	fi

${OBJECTDIR}/UtilDateTime_nomain.o: ${OBJECTDIR}/UtilDateTime.o UtilDateTime.cpp 
	${MKDIR} -p ${OBJECTDIR}
	@NMOUTPUT=`${NM} ${OBJECTDIR}/UtilDateTime.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -I/usr/local/include -Ithird-party/pugixml/src -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/UtilDateTime_nomain.o UtilDateTime.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/UtilDateTime.o ${OBJECTDIR}/UtilDateTime_nomain.o;\
	fi

${OBJECTDIR}/UtilLogger_nomain.o: ${OBJECTDIR}/UtilLogger.o UtilLogger.cpp 
	${MKDIR} -p ${OBJECTDIR}
	@NMOUTPUT=`${NM} ${OBJECTDIR}/UtilLogger.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -I/usr/local/include -Ithird-party/pugixml/src -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/UtilLogger_nomain.o UtilLogger.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/UtilLogger.o ${OBJECTDIR}/UtilLogger_nomain.o;\
	fi

${OBJECTDIR}/third-party/pugixml/src/pugixml_nomain.o: ${OBJECTDIR}/third-party/pugixml/src/pugixml.o third-party/pugixml/src/pugixml.cpp 
	${MKDIR} -p ${OBJECTDIR}/third-party/pugixml/src
	@NMOUTPUT=`${NM} ${OBJECTDIR}/third-party/pugixml/src/pugixml.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -I/usr/local/include -Ithird-party/pugixml/src -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/third-party/pugixml/src/pugixml_nomain.o third-party/pugixml/src/pugixml.cpp;\
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
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/liblibblitzutil.a

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
