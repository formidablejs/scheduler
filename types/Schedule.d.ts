import { EventEmitter } from 'events';
import { Scheduler } from './Scheduler';

export interface ScheduledTask extends EventEmitter {
    now: (now?: Date) => void;
    start: () => void;
    stop: () => void;
}

export interface ScheduleOptions {
    /**
     * A boolean to set if the created task is scheduled.
     *
     * Defaults to `true`
     */
    scheduled?: boolean | undefined;
    /**
     * The timezone that is used for job scheduling
     */
    timezone?: string;
    /**
     * Specifies whether to recover missed executions instead of skipping them.
     *
     * Defaults to `false`
     */
    recoverMissedExecutions?: boolean;
    /**
     * The schedule name
     */
    name?: string;
}

export type Schedule = {
    schedule(cronExpression: string, func: ((now: Date | "manual") => void) | string, options?: ScheduleOptions): ScheduledTask;

    call(callback: CallableFunction): Scheduler;

    validate(cronExpression: string): boolean;

    getTasks(): Map<string, ScheduledTask>;
}