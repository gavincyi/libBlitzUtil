/* 
 * File:   UtilLogger.h
 * Author: Gavin Chan
 *
 * Created on April 27, 2016, 11:03 PM
 */

#ifndef UTILLOGGER_H
#define	UTILLOGGER_H

#include <g3log/g3log.hpp>
#include <g3log/logworker.hpp>
#include <g3log/sinkhandle.hpp>
#include <g3log/filesink.hpp>

namespace blitzkrieg
{
	namespace UtilLogger {
		/**
		 * Initialize logger
		 * @param path File path of the logger
		 * @param fileName File name of the logger
		 */
		void Initialize(
				std::string path,
				std::string fileName);

	}
}

#endif	/* UTILLOGGER_H */

