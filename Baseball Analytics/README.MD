# Overview

This program analyzes a databank containing stats of baseball players, teams, and games from 1871 to 2015.
The databank can be found here: https://www.kaggle.com/datasets/open-source-sports/baseball-databank

My hope for writing this program was to introduce myself to R language and explore what its capable of for data analytics.

[Software Demo Video](https://www.youtube.com/watch?v=D4fKuooLTLI)


# Data Analysis Results

To test the analytics capabilites of R, I came up with three simple questions that could be tested for using a independent samples T-test.

QUESTION 1: From players nominated for the hall of fame, do the ones who are inducted score more RBI's than those who are not?
Results:    Using an alpha value of 0.05, there is sufficient evidence to suggest the alternate hypothesis is true.
            In other words, it seems likely that hall of fame players do score more RBIs on average throughout their career.

Question 2: From players nominated to the hall of fame, do the ones who are inducted have a higher salary than those who are not?
Results:    Using an alpha value of 0.05, there is insufficient evidence to suggest the alrenate hypothesis is true.
            In other words, it seems unlikely that hall of fame players have a higher salary.

Question 3: What team has a hall of fame player the greatest number of years combined across all players?
Results:    The Chicago Cubs had the most with 108 active years combined.


# Development Environment

Developed using Visual Studio Code and RGui

Written using R Language version 4.2.0


# Useful Websites

* [Statistical Tools for High-throughput Data Analysis](http://www.sthda.com/english/wiki/unpaired-two-samples-t-test-in-r)
* [Software Carpentry](https://swcarpentry.github.io/r-novice-inflammation/11-supp-read-write-csv/)
* [Tutorials Point](https://www.tutorialspoint.com/r/r_operators.htm#:~:text=An%20operator%20is%20a%20symbol,provides%20following%20types%20of%20operators.)
* [Naval Postgraduate School](https://faculty.nps.edu/sebuttre/home/R/text.html#:~:text=The%20most%20commonly%20used%20are,a%20(single)%20backslash%20character.)
* [R CODER](https://r-coder.com/aggregate-r/)
* [Quick-R](https://www.statmethods.net/management/operators.html)
* [ProgrammingR](https://www.programmingr.com/examples/r-dataframe/sort-r-data-frame/)
* [W3 Schools](https://www.w3schools.com/r/r_for_loop.asp)
* [Journal Dev](https://www.journaldev.com/45274/which-function-in-r)
* [Stack Overflow](https://stackoverflow.com/)


# Future Work

* Do addditional tests to ensure that dataframes are being copied the way the program expects.
* Try out other kinds of statistical tests (ANOVA, Chi Square, ect).
* Explore R applications for machine learning.