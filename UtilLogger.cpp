/* 
 * File:   UtilLogger.cpp
 * Author: Gavin Chan
 * 
 * Created on April 27, 2016, 11:03 PM
 */

#include "UtilLogger.h"

namespace blitzkrieg
{

void UtilLogger::Initialize(
		std::string path,
		std::string fileName)
{
	static std::unique_ptr<g3::LogWorker> worker = g3::LogWorker::createLogWorker();
	auto handler = worker->addDefaultLogger(fileName, path);
	g3::initializeLogging(worker.get());	
}

}