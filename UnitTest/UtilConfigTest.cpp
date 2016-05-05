#include "../UtilConfig.h"

#include "catch.hpp"

using namespace blitzkrieg;

TEST_CASE ( "Write file" ) {
	UtilConfig config;
	const std::string file_name = "UtilConfigTest.out";
	node_t node;
	node_t node_next;
	
	REQUIRE(config.CreateNode("Node", node));
	REQUIRE(config.CreateNode("Node2", node, node));
	REQUIRE(config.WriteValue("Key1", "Value1", node_next, node));
	REQUIRE(config.WriteValue("Key2", "Value2", node_next, node));

	REQUIRE(config.WriteFile(file_name));
}

TEST_CASE ( "Read file" ) {
	UtilConfig config;
	const std::string file_name = "UtilConfigTest.out";
	node_t node;
	node_t node_next;
	std::string value;

	REQUIRE(config.Initialize(file_name));
	REQUIRE(config.LoadNode("Node", node));
	REQUIRE(config.LoadNode("Node2", node, node));
	REQUIRE(config.GetValue("Key1", value, node_next, node));
	REQUIRE(value == "Value1");
	REQUIRE(config.GetValue("Key2", value, node_next, node));
	REQUIRE(value == "Value2");

}
