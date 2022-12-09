# Formidable Scheduler

Formidable Scheduler is a Task Scheduling based on GNU crontab.

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

### Imba

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

### TypeScript

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
