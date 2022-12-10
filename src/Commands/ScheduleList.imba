import { Command } from './Command'
import parser from 'cron-parser'

export class ScheduleList < Command

	get signature
		'schedule:list'

	get description
		'List the scheduled tasks'

	def handle
		const tasks = []

		getCron!.getTasks!.forEach do(task)
			const options = {
				tz: task.options.timezone
			}

			tasks.push {
				Name: task.options.name
				Interval: task.options.expression
				Timezone: task.options.timezone ?? 'UTC'
				'Next Due': parser.parseExpression(task.options.expression, options).next!.toString!
			}

		table tasks

		this.exit!
