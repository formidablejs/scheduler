import { Command as BaseCommand } from '@formidablejs/framework'
import { Schedule } from '../Schedule'

export class Command extends BaseCommand {
    /**
     * Set cron
     */
    static setCron: (cron: Schedule) => unknown

    /**
     * Get cron
     */
    getCron: () => Schedule
}
