# <a href="https://digitalkoine.github.io/je_prismatic_generalmap/">Type-Token Ratio (TTR) Jane Eyre French Translations</a>

This repository contains an R code for creating an interactive line plot using the ggplot2 and plotly libraries. The line plot displays multiple lines from a CSV dataset, allowing users to interactively explore the data.

Features

Displays multiple lines on a single plot
Interactive tooltips to show data values on hover
Supports zooming, panning, and other interactive features
Vertical lines for each data point
Chapter numbers displayed on the x-axis
Requirements

Make sure you have the following libraries installed in your R environment:

ggplot2
plotly

Usage

Clone this repository or download the R code file.
Set the appropriate path to your dataset CSV file in the code (dataset <- read.csv("path/to/your/dataset.csv")).
Run the code in an R environment or editor.
The resulting interactive line plot will be displayed in the R graphics device.

Customization

You can customize the plot by modifying the code:

Adjust the color palette for the lines by modifying the color_palette variable.
Change the title and subtitle of the plot using the labs() function.
Modify the theme settings to change the appearance of the plot.
Feel free to experiment and tailor the code to your specific requirements.

Example Dataset

The code is designed to work with a CSV dataset containing chapters and corresponding values. The dataset should have the following format:

Chapter	1854	1919	1946	1964	1966	2008	Original
Chapter 1	0.4405405	0.4484305	0.4683944	0.4423351	0.4355275	0.4536183	0.4275474
Chapter 2	0.3960714	0.4598183	0.4259343	0.3399911	0.3310531	0.3395473	0.3813651
Chapter 3	0.3638915	0.3246578	0.3235895	0.3090231	0.2976092	0.3071512	0.3299193
Chapter 4	0.3116951	0.3905184	0.3990590	0.3632297	0.3488518	0.3580681	0.2881009
Chapter 5	0.3096799	0.3455011	0.3459257	0.3409195	0.3326823	0.3438809	0.2854877
Replace this dataset with your own data to visualize different line plots.

License

This code is released under the MIT License.