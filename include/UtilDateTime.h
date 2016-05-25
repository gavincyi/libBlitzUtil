/* 
 * File:   UtilDateTime.h
 * Author: Gavin Chan
 *
 * Created on April 29, 2016, 10:45 PM
 */

#ifndef UTILDATETIME_H
#define	UTILDATETIME_H

#include <boost/date_time/posix_time/posix_time.hpp>

namespace blitzkrieg
{
	class UtilDateTime : public boost::posix_time::ptime
	{
	public:

		/**
		 * Copy constructor
		 * 
		 * @param pt ptime
		 */
		UtilDateTime(boost::posix_time::ptime pt);
		
		/**
		 * Constructor
		 * @param date Gregorian date
		 * @param dur  Time duration
		 */
		UtilDateTime(boost::gregorian::date date, boost::posix_time::ptime::time_duration_type dur);

		/**
		 * Constructor
		 * 
		 * @param years Gregorian year
		 * @param months Gregorian month
		 * @param days Gregorian day 
		 */
		UtilDateTime(boost::gregorian::date::year_type years,
					  boost::gregorian::date::month_type months,
					  boost::gregorian::date::day_type days);

		/**
		 * Constructor
		 * 
		 * @param years Gregorian year
		 * @param months Gregorian month
		 * @param days Gregorian day 
		 * @param hour Hour
		 * @param minutes Minutes
		 * @param seconds Seconds
		 */
		UtilDateTime(boost::gregorian::date::year_type years,
					  boost::gregorian::date::month_type months,
					  boost::gregorian::date::day_type days, 
					  int hour,
					  int minutes,
					  int seconds);

		/**
		 * Destructor
		 */
		virtual ~UtilDateTime();

		// Convert boost date time to string

		/**
		 * Convert boost date time to string
		 * 
		 * @param time Posix time
		 * @param dateString Date string reference
		 * @param timeString Time string reference
		 */
		static void TimeConvertString(boost::posix_time::ptime time,
									  std::string &dateString,
									  std::string &timeString);

		/**
		 * Get the current time in string
		 * 
		 * @param date Date string reference
		 * @param time Time string reference
		 */
		static void GetCurrentTimeString(std::string &date,
										 std::string &time);

		static UtilDateTime GetCurrentTime()
		{ return UtilDateTime(boost::posix_time::microsec_clock::local_time());}

	private:
		UtilDateTime();
	};
}

#endif	/* UTILDATETIME_H */

