import { CronDate } from 'cron-parser'

export def isMatch first\CronDate, second\Date
	first.subtractMinute()

	# if second.getSeconds() > 0
	# 	return false

	first.getFullYear() == second.getFullYear() && first.getMonth() == second.getMonth() && first.getDay() == second.getDay() && first.getHours() == second.getHours() && first.getMinutes() == second.getMinutes()
