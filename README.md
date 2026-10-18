# App Click-through Rate (CTR) - Facebook SQL Interview Question

## Purpose
This query uses Facebook app analytics data to calculate the
click-through rate (CTR) of each app for 2022. CTR expresses, as a
percentage, how often an app was clicked out of every 100 times it was
shown.

## What Does the Query Do?
The query examines the table where app events are recorded. Each row
in this table represents a single event (an impression or a click) that
happened in an app, along with the time it occurred.

The query works in the following order:
1. It first selects only the events that happened in 2022 and ignores
   records from other years.
2. It groups the remaining events by app, so each app is evaluated
   separately.
3. For each app, it counts the total number of clicks and the total
   number of impressions.
4. It divides the number of clicks by the number of impressions and
   converts the result into a percentage.
5. It rounds the result to two decimal places so it is easy to read.

## Points of Attention
- **Decimal calculation:** If the division were done with whole
  numbers, small rates would be rounded down to zero. The query
  performs the calculation with decimals to get the correct percentage.
- **Division-by-zero protection:** For an app with no impressions, the
  division would cause an error. The query handles this case in
  advance, does not fail, and returns an empty value (NULL) for that
  app's rate.
- **Consistent output format:** Results are always shown with two
  decimal places (e.g. 50.00).

## Output
The result contains one row per app:
- The app's ID
- Its click-through rate for 2022 (as a percentage)

## Example Scenario
If an app was shown 2 times in 2022 and clicked once, its CTR is
50.00%. If another app was shown once and clicked once, its CTR is
100.00%.

## Use Case
This kind of analysis is used to measure which apps attract more user
interest and to compare advertising or product performance.

# NOTE: This query was written entirely through my own effort, without
# any help from artificial intelligence.
# Best regards,
# Azat Hallyyev

Istanbul Gelisim University student, Turkey, Istanbul
2nd-year Management Information Systems student
Data analyst and software developer
