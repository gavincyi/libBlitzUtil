#include "../UtilDateTime.h"

#include "catch.hpp"

using namespace std;
using namespace blitzkrieg;

TEST_CASE ( "DateConvertYYYYMMDD" ) {

	UtilDateTime datetime(2000, 1, 1);
	string date = "";
	string time = "";

	UtilDateTime::TimeConvertString(datetime, date, time);

	REQUIRE(date == "20000101");

	REQUIRE(time == "00:00:00");

}

TEST_CASE( "DateTimeConvertString" )
{
	UtilDateTime datetime(2000, 1, 1, 11, 10, 22);
	string date = "";
	string time = "";

	UtilDateTime::TimeConvertString(datetime, date, time);

	REQUIRE(date == "20000101");

	REQUIRE(time == "11:10:22");
}
