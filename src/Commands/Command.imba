import { Command as BaseCommand } from '@formidablejs/framework'
import type { Schedule } from '../../types/index'

const state = {
	# @type {Schedule}
	cron: null
}

export class Command < BaseCommand

	# Set cron
	static def setCron cron\Schedule
		if state.cron
			throw new Error 'Cron already set'

		state.cron = cron

	# Get cron
	def getCron\Schedule
		state.cron
