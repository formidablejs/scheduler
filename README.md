# Formidable Scheduler

Formidable Scheduler is a Task Scheduler based on GNU crontab.

## Requirements

  * [@formidablejs/framework](https://www.npmjs.com/package/@formidablejs/framework): `*`

## Install

### npm

```bash
npm i @formidablejs/scheduler
```

### yarn

```bash
yarn add @formidablejs/scheduler
```

## Usage

Before you can start Scheduling Tasks in your Formidable Application, you will need to enable this package:

Open the `app.imba` or `app.ts` config file under the `config` directory and import `SchedulerServiceResolver` from `@formidablejs/scheduler` and add it under `resolvers`:

```js
import { SchedulerServiceResolver } from '@formidablejs/scheduler'
...

export default {
    ...
    resolvers: {
        ...
        SchedulerServiceResolver

```

Then, you can open the `Kernel.imba` or `Kernel.ts` file under the `app/Console` directory and a `schedule` function:

#### Imba

```imba
import { ConsoleKernel } from '@formidablejs/framework'
import { Schedule } from '@formidablejs/scheduler'

export class Kernel < ConsoleKernel

    get registered
        [

        ]

    def schedule schedule\Schedule
        schedule.call(do
            console.log 'Hello World'
        ).everyMinute!

```

#### TypeScript

```typescript
import { ConsoleKernel } from '@formidablejs/framework'
import { Schedule } from '@formidablejs/scheduler'

export class Kernel extends ConsoleKernel {
	get registered(): Array<object> {
		return [
			//
		]
	}

	schedule(schedule: Schedule): void {
		schedule.call(() => {
			console.log('Hello World')
		}).everyMinute()
	}
}

```

### Schedule Frequency Options

Below is a list of available methods you can use:

 Method             | Description                                                          | Example
--------------------|----------------------------------------------------------------------|-------------------------
 `every`            | Run the task every `nth` Time                                        | `.every(5).minutes()`
 ` `                |                                                                      | `.every(2).hours()`
 ` `                |                                                                      | `.every(4).days()`
 `everyMinute`      | Run the task every minute                                            | `.everyMinute()`
 `everyHour`        | Run the task every hour                                              | `.everyHour()`
 `everyHourAt`      | Run the task every hour at the 20th minute                           | `.everyHourAt(20)`
 `everyDay`         | Run the task every day                                               | `.everyDay()`
 `everyDayAt`       | Run the task every day at 13th hour                                  | `.everyDayAt(13)`
 ` `                | Run the task every day at 13th hour and 20th minute                  | `.everyDayAt(13, 20)`
 `everySunday`      | Run the task every Sunday                                            | `.everySunday()`
 `everySundayAt`    | Run the task every Sunday at 8th hour                                | `.everySundayAt(8)`
 ` `                | Run the task every Sunday at 8th hour and 20th minute                | `.everySundayAt(8, 20)`
 `everyMonday`      | Run the task every Monday                                            | `.everyMonday()`
 `everyMondayAt`    | Run the task every Monday at 8th hour                                | `.everyMondayAt(8)`
 ` `                | Run the task every Monday at 8th hour and 20th minute                | `.everyMondayAt(8, 20)`
 `everyTuesday`     | Run the task every Tuesday                                           | `.everyTuesday()`
 `everyTuesdayAt`   | Run the task every Tuesday at 8th hour                               | `.everyTuesdayAt(8)`
 ` `                | Run the task every Tuesday at 8th hour and 20th minute               | `.everyTuesdayAt(8, 20)`
 `everyWednesday`   | Run the task every Wednesday                                         | `.everyWednesday()`
 `everyWednesdayAt` | Run the task every Wednesday at 8th hour                             | `.everyWednesdayAt(8)`
 ` `                | Run the task every Wednesday at 8th hour and 20th minute             | `.everyWednesdayAt(8, 20)`
 `everyThursday`    | Run the task every Thursday                                          | `.everyThursday()`
 `everyThursdayAt`  | Run the task every Thursday at 8th hour                              | `.everyThursdayAt(8)`
 ` `                | Run the task every Thursday at 8th hour and 20th minute              | `.everyThursdayAt(8, 20)`
 `everyFriday`      | Run the task every Friday                                            | `.everyFriday()`
 `everyFridayAt`    | Run the task every Friday at 8th hour                                | `.everyFridayAt(8)`
 ` `                | Run the task every Friday at 8th hour and 20th minute                | `.everyFridayAt(8, 20)`
 `everySaturday`    | Run the task every Saturday                                          | `.everySaturday()`
 `everySaturdayAt`  | Run the task every Saturday at 8th hour                              | `.everySaturdayAt(8)`
 ` `                | Run the task every Saturday at 8th hour and 20th minute              | `.everyFridayAt(8, 20)`
 `onSpecificDays`   | Run the task every Monday and Friday                                 | `.onSpecificDays(['monday', 'friday'])`
 `onSpecificDaysAt` | Run the task every Monday and Friday at the 8th hour                 | `.onSpecificDays(['monday', 'friday'], 8)`
 ` `                | Run the task every Monday and Friday at the 8th hour and 20th minute | `.onSpecificDays(['monday', 'friday'], 8)`
 ` `                | Run the task every Monday and Friday at the 8th hour and 20th minute | `.onSpecificDays(['monday', 'friday'], 8, 20)`

> List incomplete

Credits
-------

A special thanks to the maintainers of the following projects:

- [node-cron](https://github.com/node-cron/node-cron)
- [cron-time-generator](https://github.com/trapcodeio/cron-time)

Security
-------

If you discover any security related issues, please email donaldpakkies@gmail.com instead of using the issue tracker.

License
-------

The MIT License (MIT). Please see [License File](LICENSE) for more information.
