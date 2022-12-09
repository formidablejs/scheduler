import { ConsoleKernel, ServiceResolver } from '@formidablejs/framework'
import { Scheduler } from './Scheduler'
import cron from 'node-cron'

export class SchedulerServiceResolver < ServiceResolver

	def boot
		cron.call = do(callback) new Scheduler(cron, callback)

		self.app
			.make(ConsoleKernel)
			.schedule(cron)
