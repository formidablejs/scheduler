import cronTime from 'cron-time-generator'

export class EveryTime

	prop cron
	prop callback\Function
	prop interval\number

	def constructor name\string = null, cron, callback\Function, timezone\string = null, interval\number
		self._name = name
		self.cron = cron
		self.callback = callback
		self.interval = interval
		self._timezone = timezone

	# Every nth Minute
	def minutes
		self.run(cronTime.every(interval).minutes())

	# Every nth Hour
	def hours
		self.run(cronTime.every(interval).hours())

	# Every nth Day
	def days
		self.run(cronTime.every(interval).days())

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
