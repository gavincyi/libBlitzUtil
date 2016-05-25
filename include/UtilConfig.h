/* 
 * File:   UtilConfig.h
 * Author: Gavin Chan
 *
 * Created on April 30, 2016, 6:11 AM
 */

#ifndef UTILCONFIG_H
#define	UTILCONFIG_H

#include <pugiconfig.hpp>
#include <pugixml.hpp>

namespace blitzkrieg
{
	using node_t = pugi::xml_node;
	
	class UtilConfig {
	public:

		UtilConfig() = default;

		virtual ~UtilConfig() = default;

		/**
		 * Initialize the config by input file 
		 * @param file File name
		 * @return true if succeed
		 */
		bool Initialize(const std::string& file);

		/**
		 * Write the xml config to file 
		 * @param file Output file name
		 * @return true if succeed
		 */	
		bool WriteFile(const std::string& file);

		/**
		 * Create a node at document start and return the end node
		 * @param name Name of the node
		 * @param end_node Returned end node
		 * @return true if succeed
		 */
		bool CreateNode(const std::string& 	name,
						node_t&				end_node);

		/**
		 * Create a node with given start and return the end node
		 * @param name Name of the node
		 * @param end_node Returned end node
		 * @param start_node Input start node
		 * @return true if succeed
		 */
		bool CreateNode(const std::string& name,
						node_t&			   end_node,
						node_t&      	   start_node);
		
		/**
		 * Write key and value pair at document start and return the end node
		 * @param field Key string
		 * @param value Value string
		 * @param end_node Returned end node
		 * @return true if succeed
		 */
		bool WriteValue(const std::string& 	field,
						const std::string& 	value,
						node_t&				end_node);

		/**
		 * Write key and value pair with given start and return the end node
		 * @param field Key string
		 * @param value Value string
		 * @param end_node Returned end node
		 * @param start_node Input start node
		 * @return true if succeed
		 */
		bool WriteValue(const std::string& 	field,
						const std::string& 	value,
						node_t&				end_node,
						node_t&     		start_node);

		/**
		 * Load the node from the given starting node 
		 * @param name Node name to access
		 * @param end_node Accessed node
		 * @param start_node Starting node
		 * @return true if succeed
		 */
		bool LoadNode(const std::string& 	name,
					  node_t& 	  			end_node,
					  const node_t& 		start_node) const;

		/**
		 * Load the node from the root
		 * @param name Node name to access
		 * @param end_node Accessed node
		 * @return true if succeed
		 */
		bool LoadNode(const std::string& name,
					  node_t& 	  		 end_node) const;

		/**
		 * Get the child value from the given starting node 
		 * @param field Node name to access
		 * @param value Child value to return
		 * @param end_node Accessed node
		 * @param start_node Starting node
		 * @return true if succeed
		 */
		bool GetValue(const std::string&	field,
					  std::string& 			value,
					  node_t& 				end_node,
					  const node_t&     	start_node) const;

		/**
		 * Get the child value from the root
		 * @param field Node name to access
		 * @param value Child value to return
		 * @param end_node Accessed node
		 * @return true if succeed
		 */
		bool GetValue(const std::string&  	field,
					  std::string& 			value,
					  node_t& 				end_node) const;

	private:
		UtilConfig(const UtilConfig& orig) = delete;

		pugi::xml_document doc;

	};
}

#endif	/* UTILCONFIG_H */

