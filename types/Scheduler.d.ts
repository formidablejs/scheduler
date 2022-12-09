// auto-generated

export class Scheduler {
    /**
    @param {Function} callback
    */
    constructor(cron: any, callback: Function);
    cron: any;
    callback: Function;
    /**
    @param {number} interval
    */
    every(interval: number): EveryTime;
    everyMinute(): any;
    everyHour(): any;
    /**
    @param {number} minuteOfTheHour
    */
    everyHourAt(minuteOfTheHour: number): any;
    everyDay(): any;
    /** @param {number} hourOfTheDay - Hour of the day*/
    /** @param {number} minuteOfTheHour - Minute of the Hour*/
    /**
    @param {number} hourOfTheDay
    @param {number} minuteOfTheHour
    */
    everyDayAt(hourOfTheDay: number, minuteOfTheHour?: number): any;
    everySunday(): any;
    /** @param {number} hourOfTheDay - Hour of the day*/
    /** @param {number} minuteOfTheHour - Minute of the Hour*/
    /**
    @param {number} hourOfTheDay
    @param {number} minuteOfTheHour
    */
    everySundayAt(hourOfTheDay: number, minuteOfTheHour?: number): any;
    everyMonday(): any;
    /** @param {number} hourOfTheDay - Hour of the day*/
    /** @param {number} minuteOfTheHour - Minute of the Hour*/
    /**
    @param {number} hourOfTheDay
    @param {number} minuteOfTheHour
    */
    everyMondayAt(hourOfTheDay: number, minuteOfTheHour?: number): any;
    everyTuesday(): any;
    /** @param {number} hourOfTheDay - Hour of the day*/
    /** @param {number} minuteOfTheHour - Minute of the Hour*/
    /**
    @param {number} hourOfTheDay
    @param {number} minuteOfTheHour
    */
    everyTuesdayAt(hourOfTheDay: number, minuteOfTheHour?: number): any;
    everyWednesday(): any;
    /** @param {number} hourOfTheDay - Hour of the day*/
    /** @param {number} minuteOfTheHour - Minute of the Hour*/
    /**
    @param {number} hourOfTheDay
    @param {number} minuteOfTheHour
    */
    everyWednesdayAt(hourOfTheDay: number, minuteOfTheHour?: number): any;
    everyThursday(): any;
    /** @param {number} hourOfTheDay - Hour of the day*/
    /** @param {number} minuteOfTheHour - Minute of the Hour*/
    /**
    @param {number} hourOfTheDay
    @param {number} minuteOfTheHour
    */
    everyThursdayAt(hourOfTheDay: number, minuteOfTheHour?: number): any;
    everyFriday(): any;
    /** @param {number} hourOfTheDay - Hour of the day*/
    /** @param {number} minuteOfTheHour - Minute of the Hour*/
    /**
    @param {number} hourOfTheDay
    @param {number} minuteOfTheHour
    */
    everyFridayAt(hourOfTheDay: number, minuteOfTheHour?: number): any;
    everySaturday(): any;
    /** @param {number} hourOfTheDay - Hour of the day*/
    /** @param {number} minuteOfTheHour - Minute of the Hour*/
    /**
    @param {number} hourOfTheDay
    @param {number} minuteOfTheHour
    */
    everySaturdayAt(hourOfTheDay: number, minuteOfTheHour?: number): any;
    /** @param {(string|number)[]} days*/
    /**
    @param {(string|number)[]} days
    */
    onSpecificDays(days: (string | number)[]): any;
    /** @param {(string|number)[]} days*/
    /** @param {number} hourOfTheDay - Hour of the Day*/
    /** @param {number} minuteOfTheHour - Minute of the hour*/
    /**
    @param {(string|number)[]} days
    @param {number} hourOfTheDay
    @param {number} minuteOfTheHour
    */
    onSpecificDaysAt(days: (string | number)[], hourOfTheDay: number, minuteOfTheHour?: number): any;
    everyWeek(): any;
    /** @param {number} dayOfTheWeek - Day of the week*/
    /** @param {number} hourOfTheDay - Hour of the day*/
    /** @param {number} minuteOfTheHour - Minute of the Hour*/
    /**
    @param {number} dayOfTheWeek
    @param {number} hourOfTheDay
    @param {number} minuteOfTheHour
    */
    everyWeekAt(dayOfTheWeek: number, hourOfTheDay?: number, minuteOfTheHour?: number): any;
    /** @param {number|string} startDay - Starting day (Monday=1, Sunday=0)*/
    /** @param {number|string} endDay - Starting day (Monday=1, Sunday=0)*/
    /**
    @param {string|number} startDay
    @param {string|number} endDay
    */
    everyWeekDay(startDay?: string | number, endDay?: string | number): any;
    /** @param {number} hourOfTheDay - Hour of the day*/
    /** @param {number} minuteOfTheHour - Minute of the Hour*/
    /** @param {number|string} startDay - Starting day (Monday=1, Sunday=0)*/
    /** @param {number|string} endDay - Starting day (Monday=1, Sunday=0)*/
    /**
    @param {number} hourOfTheDay
    @param {number} minuteOfTheHour
    @param {string|number} startDay
    @param {string|number} endDay
    */
    everyWeekDayAt(hourOfTheDay: number, minuteOfTheHour?: number, startDay?: string | number, endDay?: string | number): any;
    /** @param {number|string} startDay - Starting day (Monday=1, Sunday=0)*/
    /** @param {number|string} endDay - Starting day (Monday=1, Sunday=0)*/
    /**
    @param {string|number} startDay
    @param {string|number} endDay
    */
    everyWeekend(startDay?: string | number, endDay?: string | number): any;
    /** @param {number} hourOfTheDay - Hour of the day*/
    /** @param {number} minuteOfTheHour - Minute of the Hour*/
    /** @param {number|string} startDay - Starting day (Monday=1, Sunday=0)*/
    /** @param {number|string} endDay - Starting day (Monday=1, Sunday=0)*/
    /**
    @param {number} hourOfTheDay
    @param {number} minuteOfTheHour
    @param {string|number} startDay
    @param {string|number} endDay
    */
    everyWeekendAt(hourOfTheDay: number, minuteOfTheHour?: number, startDay?: string | number, endDay?: string | number): any;
    everyMonth(): any;
    /** @param {number} dayOfTheMonth - Day of the month*/
    /** @param {number} hourOfTheDay - Hour of the day*/
    /** @param {number} minuteOfTheHour - Minute of the Hour*/
    /**
    @param {number} dayOfTheMonth
    @param {number} hourOfTheDay
    @param {number} minuteOfTheHour
    */
    everyMonthOn(dayOfTheMonth: number, hourOfTheDay?: number, minuteOfTheHour?: number): any;
    everyYear(): any;
    /** @param {number} monthOfTheYear  - Month of the year*/
    /** @param {number} dayOfTheMonth - Day of the month*/
    /** @param {number} hourOfTheDay - Hour of the day*/
    /** @param {number} minuteOfTheHour - Minute of the Hour*/
    /**
    @param {number} dayOfTheMonth
    @param {number} hourOfTheDay
    @param {number} minuteOfTheHour
    */
    everyYearIn(monthOfTheYear: any, dayOfTheMonth?: number, hourOfTheDay?: number, minuteOfTheHour?: number): any;
    /** @param {number} start - Start*/
    /** @param {number} end - End*/
    /**
    @param {number} start
    @param {number} end
    */
    between(start: number, end: number): any;
}
import { EveryTime } from "./EveryTime";
