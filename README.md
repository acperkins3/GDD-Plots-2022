# GDD-Plots-2022
GDD tracking for our 2022 fields

By AP and DCL

This (very clunky) code webscrapes weather data for our GDD tracking. The output is intended to be viewed in the GoogleSheet, which is in a format that we inherited from past lab members.

GDDs are calculated using the equation

```
calc.daily.GDD <- function (max, min) {
  min <- ifelse(min < 50, 50, min)
  max <- ifelse(max > 86, 86, max)
  mean <- (min + max) / 2
  ifelse(mean < 50, 0, mean - 50)
}
```

with all temperatures being in ºF

Essentially, new weather observations are webscraped from the Middleton Airport (WMARS) or Michigan State (ARL and HAN), summarized, and saved. Then, they are merged with existing observations and saved to the GoogleSheet. Finally, the plots are upadated.

Please let us know if you have any questions or concerns!