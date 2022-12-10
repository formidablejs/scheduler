import { Command } from './Command'

export class ScheduleRun < Command

	get signature
		'schedule:run'

	get description
		'Run the scheduled tasks'

	def handle
		getCron!.getTasks!.forEach do(task)
			task._scheduler.start!
