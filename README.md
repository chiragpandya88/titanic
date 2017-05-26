# Titanic 
Data Wrangling Project II  by **Chirag Pandya** May 26, 2017

In this project, I am working on the famous Titanic Data set. The data set contains details about passengers survival and data associated with these passengers.The project focuses on dealing with missing values and generating inferencial columms to map survival expectancy.  

Description of data set can be found [here](https://www.kaggle.com/c/titanic/data)  
The data set can be found [here](http://biostat.mc.vanderbilt.edu/wiki/pub/Main/DataSets/titanic3.xls)  
There are four files 
  1. Refine.R - Contains wrangling code
  2. Titanic.R - Contains visualization code
  3. titanic3.xls - Original dataset
  4. titanic_clean.csv - Cleaned dataset

## Refine.R  
This file contains the code for wrangling.   

### First - Cleaning the embarked column
The first part of the program deals with filling missing values in the _embarked_ column. This column specifies the passengers who emabakred at Southampton. The code deals with missing values which are either a blank string or an empty observation.  

### Second - Missing values in the age column  
The missing values in the _age_ column can be filled using various methods. I have used mean in my code but my suggestion would be to use _kNNImpute_ from the _DMwR_ package or any other clustering algorithm.  

### Third - Lifeboat  
Many passengers did not make it to a lifeboat. This part of the code deals with filling empty observations in the _boat_ column with NA.  

### Fourth - Using the cabin number 
A mising _cabin number_ observation may indicate a chance of survival. Creating a new variable in the dataset _has cabin number_ and filling observations with "1" and "0" respectively

## Titanic.R
This file contains code for visualizations  

### First plot  
Using bar geometrics to find survival chances  
### Second plot  
Adding a facet_grid of survival variable to the first plot
### Third plot  
Improvising: using jitter and setting trasnperancy to overcome overlapping in the second plot 





