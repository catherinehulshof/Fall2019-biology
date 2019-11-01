---
layout: exercise
topic: Scientific
title: Tree Biomass Challenge
language: R
---

Understanding the total amount of biomass (the total mass of all individuals) in forests is important for understanding the global carbon budget and how the earth will respond to increases in carbon dioxide emissions. 

We don’t normally measure the mass of a tree, but take a measurement of the diameter or circumference of the trunk and then estimate mass using equations like M = 0.124 * D^2.53.

1. Estimate total tree biomass in a 96 hectare area of the Western Ghats in India using the following steps:

[Download the data]({{ site.baseurl }}/data/Ramesh2010-macroplots.csv) and load the data into R.

Write a function that takes a vector of tree diameters as an argument and returns a vector of tree masses. (Thanks to vector math this function is basically just the equation above).

If you look at the file or [the metadata](http://esapubs.org/archive/ecol/E091/216/metadata.htm) carefully you'll notice that the data is actually in girth (i.e., circumference, which is equal to pi * diameter) rather than diameter. Write a function to take a vector of circumferences as an argument and return a vector of diameters.

2. Use the function you've written to estimate the total biomass (i.e., the sum of the masses) of trees in this dataset and print the result to the screen.
