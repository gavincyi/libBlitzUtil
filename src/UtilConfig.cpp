/* 
 * File:   UtilConfig.cpp
 * Author: Gavin Chan
 * 
 * Created on April 30, 2016, 6:11 AM
 */

#include "UtilConfig.h"
#include <iostream>

namespace blitzkrieg
{

using namespace pugi;

bool UtilConfig::Initialize(const std::string& file) {
	xml_parse_result result = doc.load_file(file.c_str());
	return result.status == xml_parse_status::status_ok;
}

bool UtilConfig::WriteFile(const std::string& file) {
	return doc.save_file(file.c_str());
}

bool UtilConfig::CreateNode(const std::string& 	name,
							node_t&				end_node,
							node_t&     	    start_node)
{
	end_node = start_node.append_child(name.c_str());
	return true;
}

bool UtilConfig::CreateNode(const std::string& 	name,
							node_t&				end_node)
{
	return CreateNode(name, end_node, doc);
}

bool UtilConfig::WriteValue(const std::string& 	field,
							const std::string& 	value,
							node_t&				end_node,
							node_t&     		start_node)
{
	end_node = start_node.append_child(field.c_str());
	return end_node.append_child(pugi::node_pcdata).set_value(value.c_str());
}

bool UtilConfig::WriteValue(const std::string& 	field,
							const std::string& 	value,
							node_t&				end_node)
{
	return WriteValue(field, value, end_node, doc);
}

bool UtilConfig::LoadNode(const std::string& 	name,
			  			  node_t& 	  			end_node,
			  			  const node_t& 	  	start_node) const
{
	end_node = start_node.child(name.c_str());
	return !end_node.empty();
}

bool UtilConfig::LoadNode(const std::string& 	name,
			  			  node_t& 	  			end_node) const
{
	return LoadNode(name, end_node, doc);
}

bool UtilConfig::GetValue(const std::string&  		field,
			  			  std::string& 				value,
						  node_t&      				end_node,
			  			  const node_t&     		start_node) const
{
	value = start_node.child_value(field.c_str());
	return true;
}
	
bool UtilConfig::GetValue(const std::string&  field,
						  std::string& 		  value,
			  			  node_t&      		  end_node) const
{
	return GetValue(field, value, end_node, doc);
}


}