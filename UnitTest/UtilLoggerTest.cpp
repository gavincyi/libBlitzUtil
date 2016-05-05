#include "../UtilLogger.h"

#include "catch.hpp"

TEST_CASE( "Initalize" ) {
	blitzkrieg::UtilLogger::Initialize(".", "testing");	
	LOG(INFO) << "Info mode";
	LOG(DEBUG) << "Debug mode";
	LOG(WARNING) << "Warning mode";
	REQUIRE(1==1);
}
