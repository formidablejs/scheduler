import { EveryTime } from './EveryTime'
import cronTime from 'cron-time-generator'

export class Scheduler

	prop cron
	prop callback\Function

	def constructor cron, callback\Function
		self.cron = cron
		self.callback = callback

	# Every nth Time
	# @returns {EveryTime}
	def every interval\number
		new EveryTime(this.cron, callback, interval)

	# Every Minute
	def everyMinute
		this.cron.schedule(cronTime.everyMinute!, this.callback)

	# Every Hour
	def everyHour
		this.cron.schedule(cronTime.everyHour!, this.callback)

	# Every Hour At
	def everyHourAt minuteOfTheHour\number
		this.cron.schedule(cronTime.everyHourAt(minuteOfTheHour), this.callback)

	# Every Day
	def everyDay
		this.cron.schedule(cronTime.everyDay!, this.callback)

	# Every Day At
	#
	# @param {number} hourOfTheDay - Hour of the day
	# @param {number} minuteOfTheHour - Minute of the Hour
	def everyDayAt hourOfTheDay\number, minuteOfTheHour\number = null
		this.cron.schedule(cronTime.everyDayAt(hourOfTheDay, minuteOfTheHour), this.callback)

	# Every Sunday
	def everySunday
		this.cron.schedule(cronTime.everySunday!, this.callback)

	# Every Sunday At
	#
	# @param {number} hourOfTheDay - Hour of the day
	# @param {number} minuteOfTheHour - Minute of the Hour
	def everySundayAt hourOfTheDay\number, minuteOfTheHour\number = null
		this.cron.schedule(cronTime.everySundayAt(hourOfTheDay, minuteOfTheHour), this.callback)

	# Every Monday
	def everyMonday
		this.cron.schedule(cronTime.everyMonday!, this.callback)

	# Every Monday At
	#
	# @param {number} hourOfTheDay - Hour of the day
	# @param {number} minuteOfTheHour - Minute of the Hour
	def everyMondayAt hourOfTheDay\number, minuteOfTheHour\number = null
		this.cron.schedule(cronTime.everyMondayAt(hourOfTheDay, minuteOfTheHour), this.callback)

	# Every Tuesday
	def everyTuesday
		this.cron.schedule(cronTime.everyTuesday!, this.callback)

	# Every Tuesday At
	#
	# @param {number} hourOfTheDay - Hour of the day
	# @param {number} minuteOfTheHour - Minute of the Hour
	def everyTuesdayAt hourOfTheDay\number, minuteOfTheHour\number = null
		this.cron.schedule(cronTime.everyTuesdayAt(hourOfTheDay, minuteOfTheHour), this.callback)

	# Every Wednesday
	def everyWednesday
		this.cron.schedule(cronTime.everyWednesday!, this.callback)

	# Every Wednesday At
	#
	# @param {number} hourOfTheDay - Hour of the day
	# @param {number} minuteOfTheHour - Minute of the Hour
	def everyWednesdayAt hourOfTheDay\number, minuteOfTheHour\number = null
		this.cron.schedule(cronTime.everyMondayAt(hourOfTheDay, minuteOfTheHour), this.callback)

	# Every Thursday
	def everyThursday
		this.cron.schedule(cronTime.everyThursday!, this.callback)

	# Every Thursday At
	#
	# @param {number} hourOfTheDay - Hour of the day
	# @param {number} minuteOfTheHour - Minute of the Hour
	def everyThursdayAt hourOfTheDay\number, minuteOfTheHour\number = null
		this.cron.schedule(cronTime.everyThursdayAt(hourOfTheDay, minuteOfTheHour), this.callback)

	# Every Friday
	def everyFriday
		this.cron.schedule(cronTime.everyFriday!, this.callback)

	# Every Friday At
	#
	# @param {number} hourOfTheDay - Hour of the day
	# @param {number} minuteOfTheHour - Minute of the Hour
	def everyFridayAt hourOfTheDay\number, minuteOfTheHour\number = null
		this.cron.schedule(cronTime.everyFridayAt(hourOfTheDay, minuteOfTheHour), this.callback)

	# Every Saturday
	def everySaturday
		this.cron.schedule(cronTime.everySaturday!, this.callback)

	# Every Saturday At
	#
	# @param {number} hourOfTheDay - Hour of the day
	# @param {number} minuteOfTheHour - Minute of the Hour
	def everySaturdayAt hourOfTheDay\number, minuteOfTheHour\number = null
		this.cron.schedule(cronTime.everySaturdayAt(hourOfTheDay, minuteOfTheHour), this.callback)

	# On Specific Days
	#
	# @param {(string|number)[]} days
	def onSpecificDays days\(string|number)[]
		this.cron.schedule(cronTime.onSpecificDays(days), this.callback)

	# On Specific Days At
	#
	# @param {(string|number)[]} days
	# @param {number} hourOfTheDay - Hour of the Day
	# @param {number} minuteOfTheHour - Minute of the hour
	def onSpecificDaysAt days\(string|number)[], hourOfTheDay\number, minuteOfTheHour\number = null
		this.cron.schedule(cronTime.onSpecificDaysAt(days, hourOfTheDay, minuteOfTheHour), this.callback)

	# Every Week
	def everyWeek
		this.cron.schedule(cronTime.everyWeek!, this.callback)

	# Every Week At
	#
	# @param {number} dayOfTheWeek - Day of the week
	# @param {number} hourOfTheDay - Hour of the day
	# @param {number} minuteOfTheHour - Minute of the Hour
	def everyWeekAt dayOfTheWeek\number, hourOfTheDay\number = null, minuteOfTheHour\number = null
		this.cron.schedule(cronTime.everyWeekAt(dayOfTheWeek, hourOfTheDay, minuteOfTheHour), this.callback)

	# Every WeekDay
	#
	# @param {number|string} startDay - Starting day (Monday=1, Sunday=0)
	# @param {number|string} endDay - Starting day (Monday=1, Sunday=0)
	def everyWeekDay startDay\string|number = null, endDay\string|number = null
		this.cron.schedule(cronTime.everyWeekDay(startDay, endDay))

	# Every WeekDay At
	#
	# @param {number} hourOfTheDay - Hour of the day
	# @param {number} minuteOfTheHour - Minute of the Hour
	# @param {number|string} startDay - Starting day (Monday=1, Sunday=0)
	# @param {number|string} endDay - Starting day (Monday=1, Sunday=0)
	def everyWeekDayAt hourOfTheDay\number, minuteOfTheHour\number = null, startDay\string|number = null, endDay\string|number = null
		this.cron.schedule(cronTime.everyWeekDayAt(hourOfTheDay, minuteOfTheHour, startDay, endDay), this.callback)

	# Every Weekend
	#
	# @param {number|string} startDay - Starting day (Monday=1, Sunday=0)
	# @param {number|string} endDay - Starting day (Monday=1, Sunday=0)
	def everyWeekend startDay\string|number = null, endDay\string|number = null
		this.cron.schedule(cronTime.everyWeekend(startDay, endDay))

	# Every Weekend At
	#
	# @param {number} hourOfTheDay - Hour of the day
	# @param {number} minuteOfTheHour - Minute of the Hour
	# @param {number|string} startDay - Starting day (Monday=1, Sunday=0)
	# @param {number|string} endDay - Starting day (Monday=1, Sunday=0)
	def everyWeekendAt hourOfTheDay\number, minuteOfTheHour\number = null, startDay\string|number = null, endDay\string|number = null
		this.cron.schedule(cronTime.everyWeekendAt(hourOfTheDay, minuteOfTheHour, startDay, endDay))

	# Every Month
	def everyMonth
		this.cron.schedule(cronTime.everyMonth!, this.callback)

	# Every Month on
	#
	# @param {number} dayOfTheMonth - Day of the month
	# @param {number} hourOfTheDay - Hour of the day
	# @param {number} minuteOfTheHour - Minute of the Hour
	def everyMonthOn dayOfTheMonth\number, hourOfTheDay\number = null, minuteOfTheHour\number = null
		this.cron.schedule(cronTime.everyMonthOn(dayOfTheMonth, hourOfTheDay, minuteOfTheHour), this.callback)

	# Every Year
	def everyYear
		this.cron.schedule(cronTime.everyYear!, this.callback)

	# Every Year In
	#
	# @param {number} monthOfTheYear  - Month of the year
	# @param {number} dayOfTheMonth - Day of the month
	# @param {number} hourOfTheDay - Hour of the day
	# @param {number} minuteOfTheHour - Minute of the Hour
	def everyYearIn monthOfTheYear, dayOfTheMonth\number = null, hourOfTheDay\number = null, minuteOfTheHour\number = null
		this.cron.schedule(cronTime.everyYearIn(monthOfTheYear, dayOfTheMonth, hourOfTheDay, minuteOfTheHour), this.callback)

	# Between Time Frames
	#
	# @param {number} start - Start
	# @param {number} end - End
	def between start\number, end\number
		this.cron.schedule(cronTime.between(start, end), this.callback)
