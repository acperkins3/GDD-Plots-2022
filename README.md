# GDD-Plots-2022
GDD tracking for our 2022 fields by AP and DCL

This (very clunky) code webscrapes weather data for our GDD tracking. The output is intended to be viewed in the GoogleSheet, which is in the same format that was used by past lab members.

GDDs are calculated using the equation

```
calc.daily.GDD <- function (max, min) {
  min <- ifelse(min < 50, 50, min)
  max <- ifelse(max > 86, 86, max)
  mean <- (min + max) / 2
  ifelse(mean < 50, 0, mean - 50)
}
```

with all temperatures being in ºF.

In brief, new weather observations are webscraped from the Middleton Airport (WMARS) or Michigan State (ARL and HAN), summarized, and saved. Then, they are merged with existing observations and saved to the GoogleSheet. Finally, the plots are upadated.

Please let us know if you have any questions or concerns!

<p align="center"><img src="https://raw.githubusercontent.com/acperkins3/GDD-Plots-2022/main/TrialGDDs.png" /></p>

<p align="center"><img src="https://raw.githubusercontent.com/acperkins3/GDD-Plots-2022/main/Silage.png" /></p>