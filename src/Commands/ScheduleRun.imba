import { Command } from './Command'

def matchPattern pattern, value
	if pattern.indexOf(',') !== -1
		const patterns = pattern.split(',')
		return patterns.indexOf(value.toString()) !== -1

	pattern === value.toString()

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

			task._scheduler.timeMatcher.shouldRun = do(date\Date)
				date = this.apply(date)

				const runOnMinute = matchPattern(this.expressions[1], date.getMinutes())
				const runOnHour = matchPattern(this.expressions[2], date.getHours())
				const runOnDay = matchPattern(this.expressions[3], date.getDate())
				const runOnMonth = matchPattern(this.expressions[4], date.getMonth() + 1)
				const runOnWeekDay = matchPattern(this.expressions[5], date.getDay())

				runOnMinute && runOnHour && runOnDay && runOnMonth && runOnWeekDay

			if task._scheduler.timeMatcher.shouldRun(date)
				matched.push task._task

		let successful = 0

		def resolve task
			task.on 'task-failed', do(error)
				successful += 1

				console.error('error', error)

			task.on 'task-finished', do successful += 1

			await task.execute('manual')

		await Promise.all(matched.map(resolve))

		while successful !== matched.length
			await new Promise do(resolve) setTimeout(resolve, 1000)

		this.exit!
