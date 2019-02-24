MyAppPitch
========================================================
author: 
date: 
autosize: true

My App to predict the control of anticoagulation with vit K antagonists
========================================================
Author: Philip Wikman
Date 24/02/2018

Version: Embryonic prototype


The App
========================================================

You can find the App here: https://pwjpwj.shinyapps.io/MyApp/
Basically it predicts if you will be well controled with vitamin K antagonists
depending on the number of tablets you take every day for other diseases

Just introduce the number of tablets in the box that you take per day and
press submit

Data used
========================================================

It uses data from a study done by my internal medicine department
It was a retrospective cohort study of patients taking vitK antagonists
due to a nonvalvular atrial fibrilation

The model
========================================================

This was the model accuracy

```r
modFit1<-load(file="modFit1.R")
print(modFit[4])
```

```
$results
            cp  Accuracy        Kappa AccuracySD    KappaSD
1 0.0000000000 0.6636593 -0.009707633 0.01983064 0.02137045
2 0.0007788162 0.6641890 -0.009970816 0.02015137 0.02124920
3 0.0015576324 0.6660656 -0.007761028 0.02027802 0.01921534
```






