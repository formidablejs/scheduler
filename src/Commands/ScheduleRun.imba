import { parseExpression } from 'cron-parser'
import { Command } from './Command'
import { isMatch } from '../Helpers/isMatch'

export class ScheduleRun < Command

	get signature
		'schedule:run'

	get description
		'Run scheduled tasks'

	def handle
		const date = new Date
		const tasks = getCron!.getTasks!
		const matched = []

		tasks.forEach do(task)
			const options = {
				currentDate: date
			}

			if task.options.timezone
				options.timezone = task.options.timezone

			const parsed = parseExpression(task.options.expression, options)

			if isMatch(parsed.next(), date)
				matched.push task

		matched.forEach do(task)
			task.now!

		this.exit!
