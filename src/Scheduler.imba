import { EveryTime } from './EveryTime'
import cronTime from 'cron-time-generator'

export class Scheduler

	prop cron
	prop callback\Function

	def constructor cron, callback\Function
		self.cron = cron
		self.callback = callback

	# Set task name
	def name name\string
		self._name = name

		self

	# Set default timezone for tasks
	def timezone timezone\string
		self._timezone = timezone

		self

	# Every nth Time
	def every\EveryTime interval\number
		new EveryTime(this._name, this.cron, self.callback, self._timezone, interval)

	# Every Minute
	def everyMinute
		this.run(cronTime.everyMinute!)

	# Every Hour
	def everyHour
		this.run(cronTime.everyHour!)

	# Every Hour At
	def everyHourAt minuteOfTheHour\number
		this.run(cronTime.everyHourAt(minuteOfTheHour))

	# Every Day
	def everyDay
		this.run(cronTime.everyDay!)

	# Every Day At
	#
	# @param {number} hourOfTheDay - Hour of the day
	# @param {number} minuteOfTheHour - Minute of the Hour
	def everyDayAt hourOfTheDay\number, minuteOfTheHour\number = null
		this.run(cronTime.everyDayAt(hourOfTheDay, minuteOfTheHour))

	# Every Sunday
	def everySunday
		this.run(cronTime.everySunday!)

	# Every Sunday At
	#
	# @param {number} hourOfTheDay - Hour of the day
	# @param {number} minuteOfTheHour - Minute of the Hour
	def everySundayAt hourOfTheDay\number, minuteOfTheHour\number = null
		this.run(cronTime.everySundayAt(hourOfTheDay, minuteOfTheHour))

	# Every Monday
	def everyMonday
		this.run(cronTime.everyMonday!)

	# Every Monday At
	#
	# @param {number} hourOfTheDay - Hour of the day
	# @param {number} minuteOfTheHour - Minute of the Hour
	def everyMondayAt hourOfTheDay\number, minuteOfTheHour\number = null
		this.run(cronTime.everyMondayAt(hourOfTheDay, minuteOfTheHour))

	# Every Tuesday
	def everyTuesday
		this.run(cronTime.everyTuesday!)

	# Every Tuesday At
	#
	# @param {number} hourOfTheDay - Hour of the day
	# @param {number} minuteOfTheHour - Minute of the Hour
	def everyTuesdayAt hourOfTheDay\number, minuteOfTheHour\number = null
		this.run(cronTime.everyTuesdayAt(hourOfTheDay, minuteOfTheHour))

	# Every Wednesday
	def everyWednesday
		this.run(cronTime.everyWednesday!)

	# Every Wednesday At
	#
	# @param {number} hourOfTheDay - Hour of the day
	# @param {number} minuteOfTheHour - Minute of the Hour
	def everyWednesdayAt hourOfTheDay\number, minuteOfTheHour\number = null
		this.run(cronTime.everyMondayAt(hourOfTheDay, minuteOfTheHour))

	# Every Thursday
	def everyThursday
		this.run(cronTime.everyThursday!)

	# Every Thursday At
	#
	# @param {number} hourOfTheDay - Hour of the day
	# @param {number} minuteOfTheHour - Minute of the Hour
	def everyThursdayAt hourOfTheDay\number, minuteOfTheHour\number = null
		this.run(cronTime.everyThursdayAt(hourOfTheDay, minuteOfTheHour))

	# Every Friday
	def everyFriday
		this.run(cronTime.everyFriday!)

	# Every Friday At
	#
	# @param {number} hourOfTheDay - Hour of the day
	# @param {number} minuteOfTheHour - Minute of the Hour
	def everyFridayAt hourOfTheDay\number, minuteOfTheHour\number = null
		this.run(cronTime.everyFridayAt(hourOfTheDay, minuteOfTheHour))

	# Every Saturday
	def everySaturday
		this.run(cronTime.everySaturday!)

	# Every Saturday At
	#
	# @param {number} hourOfTheDay - Hour of the day
	# @param {number} minuteOfTheHour - Minute of the Hour
	def everySaturdayAt hourOfTheDay\number, minuteOfTheHour\number = null
		this.run(cronTime.everySaturdayAt(hourOfTheDay, minuteOfTheHour))

	# On Specific Days
	#
	# @param {(string|number)[]} days
	def onSpecificDays days\(string|number)[]
		this.run(cronTime.onSpecificDays(days))

	# On Specific Days At
	#
	# @param {(string|number)[]} days
	# @param {number} hourOfTheDay - Hour of the Day
	# @param {number} minuteOfTheHour - Minute of the hour
	def onSpecificDaysAt days\(string|number)[], hourOfTheDay\number, minuteOfTheHour\number = null
		this.run(cronTime.onSpecificDaysAt(days, hourOfTheDay, minuteOfTheHour))

	# Every Week
	def everyWeek
		this.run(cronTime.everyWeek!)

	# Every Week At
	#
	# @param {number} dayOfTheWeek - Day of the week
	# @param {number} hourOfTheDay - Hour of the day
	# @param {number} minuteOfTheHour - Minute of the Hour
	def everyWeekAt dayOfTheWeek\number, hourOfTheDay\number = null, minuteOfTheHour\number = null
		this.run(cronTime.everyWeekAt(dayOfTheWeek, hourOfTheDay, minuteOfTheHour))

	# Every WeekDay
	#
	# @param {number|string} startDay - Starting day (Monday=1, Sunday=0)
	# @param {number|string} endDay - Starting day (Monday=1, Sunday=0)
	def everyWeekDay startDay\string|number = null, endDay\string|number = null
		this.run(cronTime.everyWeekDay(startDay, endDay))

	# Every WeekDay At
	#
	# @param {number} hourOfTheDay - Hour of the day
	# @param {number} minuteOfTheHour - Minute of the Hour
	# @param {number|string} startDay - Starting day (Monday=1, Sunday=0)
	# @param {number|string} endDay - Starting day (Monday=1, Sunday=0)
	def everyWeekDayAt hourOfTheDay\number, minuteOfTheHour\number = null, startDay\string|number = null, endDay\string|number = null
		this.run(cronTime.everyWeekDayAt(hourOfTheDay, minuteOfTheHour, startDay, endDay))

	# Every Weekend
	#
	# @param {number|string} startDay - Starting day (Monday=1, Sunday=0)
	# @param {number|string} endDay - Starting day (Monday=1, Sunday=0)
	def everyWeekend startDay\string|number = null, endDay\string|number = null
		this.run(cronTime.everyWeekend(startDay, endDay))

	# Every Weekend At
	#
	# @param {number} hourOfTheDay - Hour of the day
	# @param {number} minuteOfTheHour - Minute of the Hour
	# @param {number|string} startDay - Starting day (Monday=1, Sunday=0)
	# @param {number|string} endDay - Starting day (Monday=1, Sunday=0)
	def everyWeekendAt hourOfTheDay\number, minuteOfTheHour\number = null, startDay\string|number = null, endDay\string|number = null
		this.run(cronTime.everyWeekendAt(hourOfTheDay, minuteOfTheHour, startDay, endDay))

	# Every Month
	def everyMonth
		this.run(cronTime.everyMonth!)

	# Every Month on
	#
	# @param {number} dayOfTheMonth - Day of the month
	# @param {number} hourOfTheDay - Hour of the day
	# @param {number} minuteOfTheHour - Minute of the Hour
	def everyMonthOn dayOfTheMonth\number, hourOfTheDay\number = null, minuteOfTheHour\number = null
		this.run(cronTime.everyMonthOn(dayOfTheMonth, hourOfTheDay, minuteOfTheHour))

	# Every Year
	def everyYear
		this.run(cronTime.everyYear!)

	# Every Year In
	#
	# @param {number} monthOfTheYear  - Month of the year
	# @param {number} dayOfTheMonth - Day of the month
	# @param {number} hourOfTheDay - Hour of the day
	# @param {number} minuteOfTheHour - Minute of the Hour
	def everyYearIn monthOfTheYear\number, dayOfTheMonth\number = null, hourOfTheDay\number = null, minuteOfTheHour\number = null
		this.run(cronTime.everyYearIn(monthOfTheYear, dayOfTheMonth, hourOfTheDay, minuteOfTheHour))

	# Run scheduler
	def run expression\string
		const config = {
			expression
			scheduled: false
			runOnInit: false
		}

		config.timezone = self._timezone if self._timezone
		config.name = self._name if self._name

		this.cron.schedule(expression, this.callback, config)
