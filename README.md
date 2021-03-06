# eGFR-Visualization-Tool

This is an RShiny app originally developed by Scott Frodsham that gives users a few different options for plotting patient eGFR data. The data as a whole can be plotted on a histogram, eGFR measurements can be plotted per patient on a line plot, they can be plotted with a linear regression indicating the slope of rapid or slow decliners, and the app also displays a table of all or selected patient information. Some functions of the app remain limited or are missing completely and will be subject to future development.

### USAGE:
This app can only be run on the University of Utah CHPC Protected Environment. Electronic Health records required by the app to run should only be stored in the protected environment. Thus the current method for running this app is that it will only work on on our data in the protected environment by users that have access/permissions to the IRB directory where the EHR files are stored (user must be on the IRB). This ensures that the patient data is kept secure and is used within the parameters set by the IRB.

#### A Couple of Ways to Run the App within the PE:
```
# Install the following R packages:
# • shiny
# • shinyjs
# • DT
# • tidyverse
# • ggplot2

Then use the following command in the RStudio console or in R in a terminal:
shiny::runGitHub("PezzolesiLab/eGFR-Visualization-Tool", ref="main")
```

```
# First clone the repository with git. If you have cloned it into
# ~/eGFRVisualizationTool, go to that directory, then use runApp():
setwd("~/eGFRVisualizationTool")
runApp()
```

### Getting it Running
In the server.r the paths to these 4 files need to be changed to whatever files you want to view (I reccomend the most recent files from the lab's uddb):
```
master.file = read_tsv("")
bmi.file = read_tsv("")
bp.file = read_tsv("")
outpatient.egfr.3om = read_tsv("")
```
TODO: Finish with my script...its a lot of work
If you want to use the most recent from the database, I would reccomend using my script "" included in this repository.
