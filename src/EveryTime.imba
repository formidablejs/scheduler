import cronTime from 'cron-time-generator'

export class EveryTime

	prop cron
	prop callback\Function
	prop interval\number

	def constructor cron, callback\Function, interval\number
		self.cron = cron
		self.callback = callback
		self.interval = interval

	# Every nth Minute
	def minutes
		this.cron.schedule(cronTime.every(interval).minutes(), this.callback)

	# Every nth Hour
	def hours
		this.cron.schedule(cronTime.every(interval).hours(), this.callback)

	# Every nth Day
	def days
		this.cron.schedule(cronTime.every(interval).days(), this.callback)
