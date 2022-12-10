import { Command } from './Commands/Command'
import { EveryTime } from "./EveryTime";
import { SchedulerServiceResolver } from "./SchedulerServiceResolver";
import { Schedule } from "./Schedule";
import * as Formidable from '@formidablejs/framework'

declare module '@formidablejs/framework' {
    export class ConsoleKernel {
        /**
         * Define the application's command schedule.
         *
         * @param {Schedule} schedule
         */
        schedule(schedule: Schedule): void
    }
}

export {
    Command,
    EveryTime,
    Schedule,
    Scheduler,
    SchedulerServiceResolver
};
