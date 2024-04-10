import { ConsoleKernel, ServiceResolver } from '@formidablejs/framework'
import { Scheduler } from './Scheduler'
import { Command } from './Commands/Command'
import { ScheduleList } from './Commands/ScheduleList'
import { ScheduleRun } from './Commands/ScheduleRun'
import { ScheduleWork } from './Commands/ScheduleWork'
import cron from 'node-cron'

export class SchedulerServiceResolver < ServiceResolver

	def boot
		cron.call = do(callback) new Scheduler(cron, callback)

		self.app
			.make(ConsoleKernel)
			.schedule(cron)

		# pass cron to "schedule" commands
		Command.setCron(cron)

		# register command to application
		self.app.registerCommand(ScheduleList)
		self.app.registerCommand(ScheduleRun)
		self.app.registerCommand(ScheduleWork)
