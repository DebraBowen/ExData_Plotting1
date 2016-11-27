# Course 4: Exploratory Data Analysis

## Week 1 Project

## Using R base plotting 

##Description of R functions

### Section 1: Description of run_analysis.

### Introduction: There are 4 R functions: plot1.R, plot2.R, plot3.R and plot4.R. In all 4 functions, the following processing takes place first:

Set working dir </br>
Load data.table package </br>
Set filepath for read       
Read data set into a data frame housepower </br>
Convert Date/Time columns to datetime format dd/mm/yyyy hh:mm:ss </br>
Select data from 02/01/2007 and 02/02/2007 only </br>
Open png device </br>
### plot1.R
Create histogram plot of Global_active_power vs. Frequency
### plot2.R
Create line plot of DatTime vs. Global_active_power
### plot3.R
Create line plot with 3 sets of data:</br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DateTime vs. Sub\_metering\_1 in black</br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DateTime vs. Sub\_metering\_2 in red</br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DateTime vs. Sub\_metering\_3 in blue</br>
### plot4.R
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Set plot frame for 2 rows and 2 columns</br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Plot Global Active Power</br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Plot Voltage vs. DateTime</br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Replicate the plot from plot3.R</br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Plot Global Reactive Power
</br>
### Final step in all functions: 
Close all graphics

