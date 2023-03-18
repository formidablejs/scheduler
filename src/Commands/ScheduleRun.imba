import { Command } from './Command'

export class ScheduleRun < Command

	get signature
		'schedule:run'

	get description
		'Run the scheduled tasks'

	def handle
		if getCron!.getTasks!.size == 0
			this.message 'info', 'No scheduled tasks have been defined'

			return this.exit!

		this.message 'info', 'Running scheduled tasks every minute.'

		getCron!.getTasks!.forEach do(task)
			task._scheduler.start!
