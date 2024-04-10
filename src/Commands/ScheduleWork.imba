import { Command } from './Command'

export class ScheduleWork < Command

	get signature
		'schedule:work'

	get description
		'Continuesly run scheduled tasks'

	def handle
		const tasks = getCron!.getTasks!

		if tasks.size == 0
			this.message 'info', 'No scheduled tasks have been defined'

			return this.exit!

		this.message 'info', 'Running scheduled tasks every minute.'

		for task of tasks
			await task[1]._scheduler.start!
